<?php
/**
 * Файл работы с пространствами имен
 * Этот файл - часть библиотеки, предоставляющий расширенный функционал работы с пространствами имен, входящей
 * в комплект SOME Framework
 */
declare(strict_types=1);

namespace SOME;

/**
 * Класс работы с пространствами имен
 * Данный класс предоставляет в виде статических функций расширенный функционал для работы с пространствами имен
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
     * @param ?int $length Длина в массиве пространства имен
     * @return string
     */
    public static function getNS($var, int $offset = 0, ?int $length = null): string
    {
        $class = self::getNSArray($var, $offset, $length);
        return implode('\\', $class);
    }
    
    /**
     * Возвращает массив пространства имен либо его срез
     * @param string|object $var Объект или имя класса для проверки
     * @param int $offset Смещение в массиве пространства имен
     * @param ?int $length Длина в массиве пространства имен
     * @return string[]
     */
    public static function getNSArray($var, int $offset = 0, ?int $length = null): array
    {
        $class = self::getClassArray($var);
        $ns = array_slice($class, 0, -1);
        $result = array_slice($ns, $offset, $length);
        return $result;
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
