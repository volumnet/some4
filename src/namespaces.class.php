<?php
/**
 * Файл работы с пространствами имен
 *
 * Этот файл - часть библиотеки, предоставляющий расширенный функционал работы с пространствами имен, входящей в комплект SOME Framework
 *
 * @package SOME
 * @subpackage Filesystem
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2011, ООО «Объемные Сети»
 * @version 4.0
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

/**
 * Класс работы с пространствами имен
 * 
 * Данный класс предоставляет в виде статических функций расширенный функционал для работы с пространствами имен
 * @package SOME
 * @subpackage Filesystem
 */   
final class Namespaces
{
    /**
     * Возвращает имя класса без пространства имен
     * @param string|object $var Объект или имя класса для проверки
     * @return string     
     */         
    public static function getClass($var)
    {
        $class = self::getClassArray($var);
        return $class[count($class) - 1];
    }
    
    /**
     * Возвращает пространство имен либо его срез
     * @param string|object $var Объект или имя класса для проверки
     * @param int $offset Смещение в массиве пространства имен
     * @param int $length Длина в массиве пространства имен
     * @return string
     */         
    public static function getNS($var, $offset = null, $length = null)
    {
        $class = self::getNSArray($var, $offset, $length);
        return implode('\\', $class);
    }
    
    /**
     * Возвращает массив пространства имен либо его срез
     * @param string|object $var Объект или имя класса для проверки
     * @param int $offset Смещение в массиве пространства имен
     * @param int $length Длина в массиве пространства имен
     * @return array
     */         
    public static function getNSArray($var, $offset = null, $length = null)
    {
        $class = self::getClassArray($var);
        $ns = array_slice($class, 0, -1);
        return array_slice($ns, $offset, $length);
    }
    
    /**
     * Возвращает массив пространства имен + класса
     * @param string|object $var Объект или имя класса для проверки
     * @return array
     */         
    public static function getClassArray($var)
    {
        $var = (is_object($var) ? get_class($var) : (string)$var);
        $classname = trim($var, '\\');
        $class = explode('\\', $classname);
        return $class;
    }
}