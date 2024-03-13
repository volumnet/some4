<?php
/**
 * Файл базового теста
 */
namespace SOME;

use PHPUnit\Framework\TestCase;
use RAAS\Application;

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
    }

    public static function tearDownAfterClass(): void
    {
        $affectedTables = array_values(static::$affectedTables[static::class] ?? []);
        $missingTables = array_diff($affectedTables, static::$tables);
        $missingTables = array_values($missingTables);
        $unnecessaryTables = array_diff(static::$tables, $affectedTables);
        $unnecessaryTables = array_values($unnecessaryTables);
        if ($missingTables) {
            echo "\n" . 'Для класса ' . static::class . " не хватает таблиц: \n"
                . str_replace('"', "'", json_encode($missingTables)) . "\n";
        }
        if ($unnecessaryTables) {
            echo "\n" . 'Для класса ' . static::class . " следующие таблицы лишние: \n"
                . str_replace('"', "'", json_encode($unnecessaryTables)) . "\n";
        }
    }


    /**
     * Устанавливает таблицы
     */
    public static function installTables()
    {
        if (!(static::$tablesInstalled[static::class] ?? false)) {
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
            if ($filesToUpdate) {
                foreach ($filesToUpdate as $table) {
                    $newSQL = file_get_contents(__DIR__ . '/../resources/tables/' . $table . '.sql');
                    Application::i()->SQL->query($newSQL);
                }
                echo "\n" . 'Для класса ' . static::class . ' установлены таблицы '
                    . str_replace('"', "'", json_encode($filesToUpdate)) . "\n";
            }
            static::$tablesInstalled[static::class] = true;
            Application::i()->SQL->query_handler = function ($query) {
                $tables = static::getTablesFromQuery($query);
                if (!(static::$affectedTables[static::class] ?? null)) {
                    static::$affectedTables[static::class] = [];
                }
                static::$affectedTables[static::class] = array_merge(static::$affectedTables[static::class], $tables);
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
