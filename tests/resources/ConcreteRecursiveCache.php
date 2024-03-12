<?php
/**
 * Файл мока для проверки абстрактного рекурсивного кэша
 */
namespace SOME;

use RAAS\CMS\Page;

/**
 * Класс мока для проверки абстрактного рекурсивного кэша
 */
class ConcreteRecursiveCache extends AbstractRecursiveCache
{
    protected static $instance;

    protected static $classname = Page::class;
}
