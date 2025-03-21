<?php
/**
 * Файл базового теста
 */
namespace SOME;

use PHPUnit\Framework\TestCase;
use RAAS\Application;
use RAAS\CustomField;
use RAAS\CMS\CMSAccess;
use RAAS\CMS\Material_Type;
use RAAS\CMS\Package;
use RAAS\CMS\PageRecursiveCache;

/**
 * Класс базового теста
 */
class BaseTest extends TestCase
{
    /**
     * Цвета терминала
     * @var array <pre><code>string[] URN цвета => mixed Код цвета></code></pre>
     */
    protected static $terminalColors = [
        'default' => 0,
        'red' => 31,
        'green' => 32,
        'yellow' => 33,
        'blue' => 34,
        'magenta' => 35,
        'cyan' => 36,
        'white' => 37,
        'gray' => '38;2;88;88;88'
    ];

    /**
     * Задействованные таблицы
     * @var string[]
     */
    public static $tables = [];

    /**
     * Все доступные таблицы
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
     * Задействованные таблицы на чтение
     * @var array <pre><code>array<string[] Название класса => array<
     *     string[] Название таблицы => string Название таблицы
     * >></code></pre>
     */
    protected static $tablesToRead = [];

    /**
     * Задействованные таблицы на запись
     * @var array <pre><code>array<string[] Название класса => array<
     *     string[] Название таблицы => string Название таблицы
     * >></code></pre>
     */
    protected static $tablesToWrite = [];

    /**
     * Задействованные таблицы
     * @var array <pre><code>array<
     *     string[] Название таблицы => bool Изменялась ли таблица
     * ></code></pre>
     */
    protected static $affectedTables = [];

    public static function setUpBeforeClass(): void
    {
        ini_set('max_execution_time', 3600);
        static::installTables();
        static::watchQueries(static::class);
    }

    public static function tearDownAfterClass(): void
    {
        $tablesToRead = static::$tablesToRead[static::class] ?? [];
        $tablesToWrite = static::$tablesToWrite[static::class] ?? [];
        $affectedTables = array_values(array_merge($tablesToRead, $tablesToWrite));
        $missingTables = array_values(array_diff($affectedTables, static::$tables));
        $unnecessaryTables = array_values(array_diff(static::$tables, $affectedTables));
        if ($missingTables) {
            $logMessage = mb_strtoupper('Для класса ' . static::class . " не хватает таблиц: ")
                . static::displayTables($missingTables);
            static::doLog($logMessage, 'red');
        }
        // if ($unnecessaryTables) {
        //     $logMessage = 'Для класса ' . static::class . " следующие таблицы не используются: "
        //         . static::displayTables($unnecessaryTables);
        //     static::doLog($logMessage, 'gray');
        // }
        static::watchQueries(null); // Чтобы не писалось в предыдущий класс
        if ($tablesToWrite) {
            foreach ($tablesToWrite as $table) {
                static::installTable($table);
            }
            // $logMessage = 'Для класса ' . static::class . ' восстановлены измененные таблицы '
            //     . static::displayTables($tablesToWrite);
            // static::doLog($logMessage, 'cyan');
        }
    }


    /**
     * Устанавливает таблицы
     */
    public static function installTables()
    {
        static::watchQueries(null); // Чтобы не писалось в предыдущий класс

        // Установим отсутствующие таблицы (которые доступны, но не установлены)
        $missingTables = array_diff(static::getAvailableTables(), Application::i()->SQL->getcol("SHOW TABLES"));
        $missingTables = array_values($missingTables);
        if ($missingTables) {
            foreach ($missingTables as $table) {
                static::installTable($table);
            }
            // $logMessage = 'Установлены отсутствующие таблицы: ' . static::displayTables($missingTables);
            // static::doLog($logMessage, 'green');
        }

        // Установим
        $filesToUpdate = $filesToPass = [];
        foreach (static::$tables as $table) {
            if (!isset(static::$affectedTables[$table]) || (static::$affectedTables[$table] == true)) {
                $filesToUpdate[$table] = $table;
            } else {
                $filesToPass[$table] = $table;
            }
        }

        if ($filesToUpdate) {
            foreach ($filesToUpdate as $table) {
                static::installTable($table);
            }
            // $logMessage = 'Для класса ' . static::class . ' установлены таблицы '
            //     . static::displayTables($filesToUpdate);
            // static::doLog($logMessage, 'green');
        }
        // if ($filesToPass) {
        //     $logMessage = 'Для класса ' . static::class . ' пропущены (не менялись) таблицы '
        //         . static::displayTables($filesToPass);
        //     static::doLog($logMessage, 'gray');
        // }
        static::watchQueries(static::class);
    }


    /**
     * Устанавливает таблицу
     * @param string $tablename Имя таблицы
     */
    public static function installTable($tablename)
    {
        $newSQL = file_get_contents(__DIR__ . '/../resources/tables/' . $tablename . '.sql');
        Application::i()->SQL->query($newSQL);
        static::$affectedTables[$tablename] = false;

        switch ($tablename) {
            case 'attachments':
                // Очистим файлы вложений
                $glob = glob(Application::i()->baseDir . '/files/cms/common/*.*');
                foreach ($glob as $file) {
                    if (is_file($file) && (basename($file) != '.htaccess')) {
                        unlink($file);
                    }
                }
                break;
            case 'cms_access':
                CMSAccess::refreshPagesAccessCache();
                break;
            case 'cms_pages':
                $filename = Package::i()->cacheDir . '/system/pagerecursivecache.php';
                if (file_exists($filename)) {
                    File::unlink($filename);
                }
                PageRecursiveCache::i()->refresh();
                PageRecursiveCache::i()->save();
                break;
            case 'cms_fields':
                // Очистим кэш полей
                CustomField::clearCache();
                Material_Type::clearSelfFieldsCache();
                break;
            case 'cms_snippets':
                $glob = glob(Application::i()->baseDir . '/inc/snippets/*.tmp.php');
                foreach ($glob as $file) {
                    if (is_file($file) && (basename($file) != '.htaccess')) {
                        unlink($file);
                    }
                }
                break;
        }
    }


    /**
     * Устанавливает и получает список доступных таблиц
     * @return string[]
     */
    public static function getAvailableTables(): array
    {
        if (!static::$availableTables) {
            $glob = glob(__DIR__ . '/../resources/tables/*.sql');
            $tableFiles = array_map(function ($x) {
                return pathinfo($x, PATHINFO_FILENAME);
            }, $glob);
            foreach ($tableFiles as $table) {
                static::$availableTables[$table] = $table;
            }
        }
        $result = array_values(static::$availableTables);
        return $result;
    }


    /**
     * Отслеживает запросы по классу
     * @param ?string $classname Название класса, либо null для выключения
     */
    public static function watchQueries(?string $classname = null)
    {
        if ($classname) {
            Application::i()->SQL->query_handler = function ($query) use ($classname) {
                $debugBacktrace = array_values(array_filter(array_map(function ($x) {
                    return $x['class'] ?? null;
                }, debug_backtrace())));
                if (!in_array($classname, $debugBacktrace)) {
                    return;
                }

                list($tables, $queryToChange) = static::getTablesFromQuery($query);
                // if (($classname == 'RAAS\\CMS\\Shop\\Sync1CInterfaceTest') && in_array('cms_users', $tables)) {
                //     var_dump(debug_backtrace()); exit;
                // }
                if (!(static::$tablesToWrite[$classname] ?? null)) {
                    static::$tablesToWrite[$classname] = [];
                }
                if (!(static::$tablesToRead[$classname] ?? null)) {
                    static::$tablesToRead[$classname] = [];
                }
                if ($queryToChange) {
                    static::$tablesToWrite[$classname] = array_merge(static::$tablesToWrite[$classname], $tables);
                } else {
                    static::$tablesToRead[$classname] = array_merge(static::$tablesToRead[$classname], $tables);
                }
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
     * @return array <pre><code>[
     *     array<string[] Название таблицы => string Название таблицы>
     *     bool Запрос на изменение
     * ]</code></pre>
     */
    protected static function getTablesFromQuery(string $query): array
    {
        if (stristr($query, "SHOW FIELDS FROM")) { // Чтобы не задействовало классы при инициализации SOME
            return [[], false];
        }
        $rx = "/(FROM|JOIN|UPDATE|((INSERT|REPLACE) INTO)) ([`\\w\\-]+)/umis";
        preg_match_all($rx, $query, $regs);
        $tables = [];
        if ($regs && $regs[0]) {
            for ($i = 0; $i < count($regs[0]); $i++) {
                $table = $regs[4][$i];
                $table = str_replace('`', '', $table);
                $table = trim($table);
                if ((static::$availableTables[$table] ?? false) && !(static::$ignoredTables[$table] ?? false)) {
                    $tables[$table] = $table;
                }
            }
        }
        $queryToChange = preg_match('/(^| )(INSERT|REPLACE|UPDATE|DELETE|ALTER) /umis', $query);
        foreach ($tables as $table) {
            if ($queryToChange) {
                static::$affectedTables[$table] = true;
            }
        }
        return [$tables, $queryToChange];
    }


    /**
     * Выводит через запятую названия таблиц
     * @param string[] $tables Названия таблиц
     */
    public static function displayTables(array $tables): string
    {
        sort($tables);
        $result = array_map(function ($x) {
            return "'" . $x . "',";
        }, $tables);
        $result = "\n" . implode("\n", $result);
        return $result;
    }


    /**
     * Выводит сообщение
     * @param string $message Сообщение
     * @param ?string $color Цвет из массива static::$terminalColors
     */
    public static function doLog(string $message, ?string $color = null)
    {
        $coloredStart = $coloredEnd = '';
        if ($color && (static::$terminalColors[$color] ?? null)) {
            $coloredStart = "\033[" . static::$terminalColors[$color] . "m";
            $coloredEnd = "\033[" . static::$terminalColors['default'] . "m";
        }
        echo "\n" . $coloredStart . $message . $coloredEnd . "\n";
    }


    /**
     * Получение имени папки ресурсов
     * @return string
     */
    public static function getResourcesDir(): string
    {
        return 'resources';
    }
}
