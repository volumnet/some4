<?php
/**
 * Файл базового теста
 */
namespace SOME;

use PHPUnit\Framework\TestCase;
use RAAS\Application;
use RAAS\CustomField;
use RAAS\CMS\Material_Type;

/**
 * Класс базового теста
 */
class BaseTest extends TestCase
{
    /**
     * Задействованные таблицы
     * @var string[]
     */
    public static $tables = [];

    /**
     * Доступные таблицы
     * @var array <pre><code>array<string[] Название таблицы => string Название таблицы></code></pre>
     */
    protected static $availableTables = [];

    /**
     * Игнорируемые таблицы
     * @var array <pre><code>array<string[] Название таблицы => string Название таблицы></code></pre>
     */
    protected static $ignoredTables = [
        'processes' => 'processes',
    ];

    /**
     * Таблицы установлены
     * @var array <pre><code>array<string[] Имя класса => true></code></pre>
     */
    protected static $tablesInstalled = [];

    /**
     * Задействованные запросы
     * @var array <pre><code>array<string[] Название таблицы => string Название таблицы></code></pre>
     */
    protected static $affectedTables = [];

    public static function setUpBeforeClass(): void
    {
        static::installTables();
        static::watchQueries(static::class);
    }

    public static function tearDownAfterClass(): void
    {
        $affectedTables = array_values(static::$affectedTables[static::class] ?? []);
        $missingTables = array_diff($affectedTables, static::$tables);
        $missingTables = array_values($missingTables);
        $unnecessaryTables = array_diff(static::$tables, $affectedTables);
        $unnecessaryTables = array_values($unnecessaryTables);
        if ($missingTables) {
            $logMessage = "\n" . 'Для класса ' . static::class . " не хватает таблиц: \n"
                . str_replace('"', "'", json_encode($missingTables)) . "\n";
            $logMessage = mb_strtoupper($logMessage);
            echo $logMessage;
        }
        if ($unnecessaryTables) {
            $logMessage = "\n" . 'Для класса ' . static::class . " следующие таблицы не используются: "
                . str_replace('"', "'", json_encode($unnecessaryTables)) . "\n";
            echo $logMessage;
        }
        static::watchQueries(null); // Чтобы не писалось в предыдущий класс
    }


    /**
     * Устанавливает таблицы
     */
    public static function installTables()
    {
        if (!(static::$tablesInstalled[static::class] ?? false)) {
            static::watchQueries(null); // Чтобы не писалось в предыдущий класс
            if (static::$availableTables) {
                $tableFiles = array_values(static::$availableTables);
            } else {
                $glob = glob(__DIR__ . '/../resources/tables/*.sql');
                $tableFiles = array_map(function ($x) {
                    return pathinfo($x, PATHINFO_FILENAME);
                }, $glob);
                foreach ($tableFiles as $table) {
                    static::$availableTables[$table] = $table;
                }
            }
            $existingTables = Application::i()->SQL->getcol("SHOW TABLES");

            $filesToUpdate = array_diff($tableFiles, $existingTables);
            $filesToUpdate = array_merge($filesToUpdate, static::$tables);
            $filesToUpdate = array_unique($filesToUpdate);
            $filesToUpdate = array_values($filesToUpdate);
            if (in_array('attachments', static::$tables)) {
                $glob = glob(Application::i()->baseDir . '/files/cms/common/*.*');
                foreach ($glob as $file) {
                    if (is_file($file) && (basename($file) != '.htaccess')) {
                        unlink($file);
                    }
                }
            }
            if (in_array('cms_fields', static::$tables)) {
                CustomField::clearCache();
                Material_Type::clearSelfFieldsCache();
            }
            if ($filesToUpdate) {
                foreach ($filesToUpdate as $table) {
                    $newSQL = file_get_contents(__DIR__ . '/../resources/tables/' . $table . '.sql');
                    Application::i()->SQL->query($newSQL);
                }
                echo "\n" . 'Для класса ' . static::class . ' установлены таблицы '
                    . str_replace('"', "'", json_encode($filesToUpdate)) . "\n";
            }
            static::$tablesInstalled[static::class] = true;
            static::watchQueries(static::class);
        }
    }


    /**
     * Отслеживает запросы по классу
     * @param string|null $classname Название класса, либо null для выключения
     */
    public static function watchQueries(string $classname = null)
    {
        if ($classname) {
            Application::i()->SQL->query_handler = function ($query) use ($classname) {
                $debugBacktrace = array_values(array_filter(array_map(function ($x) {
                    return $x['class'] ?? null;
                }, debug_backtrace())));
                if (!in_array($classname, $debugBacktrace)) {
                    return;
                }

                $tables = static::getTablesFromQuery($query);
                // if (($classname == 'RAAS\\CMS\\Shop\\Sync1CInterfaceTest') && in_array('cms_users', $tables)) {
                //     var_dump(debug_backtrace()); exit;
                // }
                if (!(static::$affectedTables[$classname] ?? null)) {
                    static::$affectedTables[$classname] = [];
                }
                static::$affectedTables[$classname] = array_merge(static::$affectedTables[$classname], $tables);
            };
        } else {
            Application::i()->SQL->query_handler = function ($query) {
                // Ничего не делаем
            };
        }
    }


    /**
     * Получает список таблиц из SQL-запроса
     * @param string $query Запрос
     * @return string[] <pre><code>array<string[] Название таблицы => string Название таблицы></code></pre>
     */
    protected static function getTablesFromQuery(string $query): array
    {
        if (stristr($query, "SHOW FIELDS FROM")) { // Чтобы не задействовало классы при инициализации SOME
            return [];
        }
        $rx = "/(FROM|JOIN|UPDATE|((INSERT|REPLACE) INTO)) ([`\\w\\-]+)/umis";
        preg_match_all($rx, $query, $regs);
        $result = [];
        if ($regs && $regs[0]) {
            for ($i = 0; $i < count($regs[0]); $i++) {
                $table = $regs[4][$i];
                $table = str_replace('`', '', $table);
                $table = trim($table);
                if ((static::$availableTables[$table] ?? false) && !(static::$ignoredTables[$table] ?? false)) {
                    $result[$table] = $table;
                }
            }
        }
        return $result;
    }

    public function getResourcesDir()
    {
        return 'resources';
    }
}
