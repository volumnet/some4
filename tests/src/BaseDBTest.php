<?php
/**
 * Файл базового теста с обновлением базы данных
 */
namespace SOME;

use PHPUnit_Framework_TestCase;
use RAAS\Application;

/**
 * Класс базового теста с обновлением базы данных
 */
class BaseDBTest extends BaseTest
{
    /**
     * Перестройка перед тестом
     */
    public static function setUpBeforeClass()
    {
        $newSQL = file_get_contents(__DIR__ . '/../resources/test.sql');
        Application::i()->SQL->query($newSQL);
    }
}
