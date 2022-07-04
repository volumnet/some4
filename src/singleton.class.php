<?php
/**
 * Файл работы с шаблоном Singleton ("одиночка")
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал работы с шаблоном Singleton ("одиночка")
 *
 * @package SOME
 * @subpackage Singleton
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2013, ООО «Объемные Сети»
 * @version 4.0
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

/**
 * Файл шаблона Singleton ("одиночка")
 * @package RAAS
 * @version 4.1
 * @author Alex V. Surnin <info@volumnet.ru>
 * @copyright 2011, Volume Networks
 */
/**
 * Класс шаблона Singleton ("одиночка")
 * @package RAAS
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
     * @return Singleton
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
