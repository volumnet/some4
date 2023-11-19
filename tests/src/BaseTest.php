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
     * Получение папки с ресурсами
     */
    public function getResourcesDir()
    {
        return __DIR__ . '/../resources';
    }
}
