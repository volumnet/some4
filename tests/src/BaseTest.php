<?php
/**
 * Файл базового теста
 */
namespace SOME;

use PHPUnit_Framework_TestCase;
use RAAS\Application;

/**
 * Класс базового теста
 */
class BaseTest extends PHPUnit_Framework_TestCase
{
    /**
     * Получение папки с ресурсами
     */
    public function getResourcesDir()
    {
        return __DIR__ . '/../resources';
    }
}
