<?php
/**
 * @package SOME
 */
declare(strict_types=1);

namespace SOME;

use ReflectionClass;

/**
 * Класс абстрактной стратегии
 */
abstract class AbstractStrategy extends Singleton
{
    protected static $instance;

    /**
     * Зарегистрированные стратегии
     * @var array <pre><code>array<string[] Ключ => string Класс стратегии></code></pre>
     */
    protected static $registeredStrategies = [];

    /**
     * Регистрирует стратегию
     * @param string $key Ключ стратегии
     * @throws Exception В случае, если пытаемся зарегистрировать корневую стратегию
     */
    public static function register(string $key)
    {
        $reflectionClass = new ReflectionClass(static::class);
        if ($reflectionClass->isAbstract()) {
            throw new Exception('Certain strategy must be used to register');
        }
        static::$registeredStrategies[$key] = static::class;
    }


    /**
     * Удаляет стратегию из зарегистрированных
     * @param string $key Ключ для удаления стратегии
     * @throws Exception В случае, если стратегия для ключа не задана
     */
    public static function unregister(string $key)
    {
        if (!isset(static::$registeredStrategies[$key])) {
            throw new Exception('Strategy for key "' . $key . '" is not registered');
        }
        unset(static::$registeredStrategies[$key]);
    }


    /**
     * Очищает все зарегистрированные стратегии
     */
    public static function clear()
    {
        static::$registeredStrategies = [];
    }


    /**
     * Возвращает зарегистрированные стратегии или одну для заданного ключа
     * @param ?string $key Ключ для получения стратегии (null для всех)
     * @return string|array Одна стратегия (имя класса) или массив зарегистрированных
     * @throws Exception В случае, если стратегия для ключа не задана
     */
    public static function get(?string $key = null)
    {
        if ($key) {
            if (!isset(static::$registeredStrategies[$key])) {
                throw new Exception('Strategy for key "' . $key . '" is not registered');
            }
            return static::$registeredStrategies[$key];
        }
        return static::$registeredStrategies;
    }


    /**
     * Возвращает экземпляр конкретной стратегии
     * @param ?string $key Ключ для получения стратегии
     * @throws Exception В случае, если стратегия для ключа не задана
     * @return self
     */
    public static function spawn(?string $key = null): self
    {
        $key = (string)$key;
        if (!isset(static::$registeredStrategies[$key])) {
            throw new Exception('Strategy for key "' . $key . '" is not registered');
        }
        $classname = static::$registeredStrategies[$key];
        return $classname::i();
    }
}
