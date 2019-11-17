<?php
/**
 * Файл работы с HTTP-запросами
 *
 * Этот файл - часть библиотеки, предоставляющий расширенный функционал работы с файловой системой, входящей в комплект SOME Framework
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
 * Класс работы с HTTP-запросами
 * 
 * Данный класс предоставляет в виде статических функций расширенный функционал для работы с URL-адресами
 * @package SOME
 * @subpackage Filesystem
 */   
final class HTTP
{
    /**
     * Изменяет переменные адреса страницы относительно текущего
     * 
     * Метод берет все GET-переменные запроса, при необходимости заменяет их и формирует новый GET-запрос
     * @param string $change_query строка для смены запроса: URL-закодированные пары вида [ключ]=[значение], объединенные амперсандом (&)
     *                             при указании пустой строки, переменная удаляется
     *                             например: aaa=bbb&ccc=ddd&eee=fff
     * @param bool $include_dirs При установке в true, также добавляет в возвращаемое значение директории вида /path/to/script/
     * @param string|null $initial_path Путь, от которого считаются изменения. По умолчанию - $_SERVER['REQUEST_URI']     
     * @return string новый запрос вида /path/to/script/?[ключ]=[значение]&[ключ]=[значение]&[ключ]=[значение]. 
     *                Если GET-запрос пустой, знак вопроса не ставится
     */         
    public static function queryString($change_query = '', $include_dirs = false, $initial_path = null)
    {
        if ($initial_path === null) {
            $initial_path = $_SERVER['REQUEST_URI'];
        }
        if (substr($change_query, 0, 1) == '?') {
            $change_query = substr($change_query, 1);
        }
        list($query_dir, $query_str) = explode('?', $initial_path, 2);
        @parse_str($query_str, $query);
        @parse_str($change_query, $change);
        $old_query = $query;
        $query = array_merge($query, $change);
        $query = array_filter($query, function($x) { return ((string)$x !== ''); });
        $query = http_build_query($query);
        return ($include_dirs ? $query_dir : '') . ($query || $old_query ? '?' . $query : ''); 
    }

    /**
     * Проверяет, насколько соответствует URL ссылки текущему URL
     * 
     * @param string $href ссылка
     * @param string $current текущий адрес
     * @param bool $strictURL воспринимать только точное соответствие по пути
     * @param bool $strictGEt воспринимать только точное соответствие по $_GET-переменных
     * @return int возвращает 2 - если ссылки абсолютно идентичны; 1 - если текущий адрес является подразделом искомого; 0 - если адреса разные
     */
    public static function isActiveURL($href, $current, $strictURL = false, $strictGET = false)
    {
        $url1 = parse_url($href);
        $url2 = parse_url($current);
        $r1 = explode('/', trim($url1['path'], '/'));
        $r2 = explode('/', trim($url2['path'], '/'));
        parse_str($url1['query'], $g1);
        parse_str($url2['query'], $g2);
        ksort($g1);
        ksort($g2);
        if ($r1 == $r2) {
            $re = 2;
        } elseif ((array_slice($r2, 0, count($r1)) == $r1) && !$strictURL) {
            $re = 1;
        } else {
            $re = 0;
        }
        if ($g1 == $g2) {
            $ge = 2;
        } elseif ((array_intersect_assoc($g1, $g2) == $g1) && !$strictGET) {
            $ge = 1;
        } else {
            $ge = 0;
        }
        return min($re, $ge);
    }
}