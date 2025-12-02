<?php
/**
 * @package SOME
 */
namespace SOME;

/**
 * Класс шаблона Singleton ("одиночка")
 */
abstract class Singleton
{
    /**
     * Экземпляр класса
     * @var Singleton
     */
    protected static $instance;


    /**
     * Конструктор класса
     */
    private function __construct()
    {
    }


    /**
     * Клонирование класса
     */
    private function __clone()
    {
    }


    /**
     * Возвращает (и при необходимости создает) экземпляр класса
     * @return static
     */
    public static function i()
    {
        $args = func_get_args();
        if (!isset(static::$instance)) {
            static::$instance = new static();
            call_user_func_array(array(static::$instance, 'init'), $args);
        }
        return static::$instance;
    }


    /**
     * Фактический конструктор (инициализатор) объекта
     */
    protected function init()
    {
    }
}
