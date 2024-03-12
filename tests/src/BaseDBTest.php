<?php
/**
 * Файл базового теста с обновлением базы данных
 */
namespace SOME;

use RAAS\Application;

/**
 * Класс базового теста с обновлением базы данных
 */
class BaseDBTest extends BaseTest
{
    /**
     * Задействованные таблицы
     * @var string[]
     */
    public static $tables = [];

    /**
     * Таблицы установлены
     * @var array <pre><code>array<string[] Имя класса => true></code></pre>
     */
    protected static $tablesInstalled = [];

    /**
     * Перестройка перед тестом
     */
    public static function setUpBeforeClass(): void
    {
        static::installTables();
    }


    public static function installTables()
    {
        if (!(static::$tablesInstalled[static::class] ?? false)) {
            $glob = glob(__DIR__ . '/../resources/tables/*.sql');
            $tableFiles = array_map(function ($x) {
                return pathinfo($x, PATHINFO_FILENAME);
            }, $glob);
            $existingTables = Application::i()->SQL->getcol("SHOW TABLES");

            $filesToUpdate = array_diff($tableFiles, $existingTables);
            $filesToUpdate = array_merge($filesToUpdate, static::$tables);
            $filesToUpdate = array_unique($filesToUpdate);
            $filesToUpdate = array_values($filesToUpdate);
            foreach (static::$tables as $table) {
                $newSQL = file_get_contents(__DIR__ . '/../resources/tables/' . $table . '.sql');
                Application::i()->SQL->query($newSQL);
                echo "\n" . 'Table ' . $table . ' installed for ' . static::class . "\n";
            }
            static::$tablesInstalled[static::class] = true;
        }
    }
}
