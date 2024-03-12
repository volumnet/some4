<?php
/**
 * Файл мока для проверки абстрактного рекурсивного кэша
 */
namespace SOME;

/**
 * Класс мока для проверки абстрактного рекурсивного кэша
 */
class ConcreteRecursiveCache extends AbstractRecursiveCache
{
    protected static $instance;

    protected static $classname = ConcreteEntity::class;
}
