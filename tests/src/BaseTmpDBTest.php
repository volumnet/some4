<?php
/**
 * Файл базового теста с обновлением временной таблицы базы данных
 */
namespace SOME;

use PHPUnit_Framework_TestCase;
use RAAS\Application;

/**
 * Класс базового теста с обновлением базы данных
 */
class BaseTmpDBTest extends BaseTest
{
    protected static $wasSetUp = false;

    /**
     * Перестройка перед тестом
     */
    public static function setUpBeforeClass(): void
    {
        static::checkSetUp();
    }


    public static function checkSetUp()
    {
        if (!static::$wasSetUp) {
            $newSQL = file_get_contents(__DIR__ . '/../resources/test.tmp.sql');
            Application::i()->SQL->query($newSQL);
            static::$wasSetUp = true;
        }
    }
}
