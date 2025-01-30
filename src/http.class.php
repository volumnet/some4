<?php
/**
 * @package SOME
 */
namespace SOME;

/**
 * Класс работы с HTTP-запросами
 *
 * Данный класс предоставляет в виде статических функций расширенный функционал
 * для работы с URL-адресами
 */
final class HTTP
{
    /**
     * Изменяет переменные адреса страницы относительно текущего
     *
     * Метод берет все GET-переменные запроса, при необходимости заменяет их
     * и формирует новый GET-запрос
     * @param string $changeQuery строка для смены запроса: URL-закодированные пары вида [ключ]=[значение],
     *     объединенные амперсандом (&); при указании пустой строки, переменная удаляется
     *     например: aaa=bbb&ccc=ddd&eee=fff
     * @param bool $includeDirs При установке в true, также добавляет в возвращаемое значение директории
     *     вида /path/to/script/
     * @param string|null $initialPath Путь, от которого считаются изменения. По умолчанию - $_SERVER['REQUEST_URI']
     * @param bool $removeTrailingQuestion Убирать знак вопроса в конце
     * @param bool $appendDirsToEmptyString Добавлять директории, если запрос пустой
     * @return string новый запрос вида
     *     /path/to/script/?[ключ]=[значение]&[ключ]=[значение]&[ключ]=[значение].
     *     Если GET-запрос пустой или $removeTrailingQuestion = true, знак вопроса не ставится
     */
    public static function queryString(
        $changeQuery = '',
        $includeDirs = false,
        $initialPath = null,
        $removeTrailingQuestion = true,
        $appendDirsToEmptyString = false
    ) {
        if ($initialPath === null) {
            $initialPath = $_SERVER['REQUEST_URI'] ?? '';
        }
        if (substr($changeQuery, 0, 1) == '?') {
            $changeQuery = substr($changeQuery, 1);
        }
        $initialPathArr = explode('?', $initialPath, 2);
        $queryDir = $initialPathArr[0];
        $queryStr = isset($initialPathArr[1]) ? $initialPathArr[1] : '';
        @parse_str($queryStr, $query);
        @parse_str($changeQuery, $change);
        $oldQuery = $query;
        $query = array_merge($query, $change);
        $query = array_filter($query, function ($x) {
            if (is_array($x)) {
                return (bool)$x;
            }
            return ((string)$x !== '');
        });
        $query = http_build_query($query);
        $appendQuery = ($query || ($oldQuery && !$removeTrailingQuestion));
        if ($includeDirs || (!$appendQuery && $appendDirsToEmptyString)) {
            $result = $queryDir;
        } else {
            $result = '';
        }
        if ($appendQuery) {
            $result .= '?' . $query;
        }
        return $result;
    }

    /**
     * Проверяет, насколько соответствует URL ссылки текущему URL
     *
     * @param string $href ссылка
     * @param string $current текущий адрес
     * @param bool $strictURL воспринимать только точное соответствие по пути
     * @param bool $strictGET воспринимать только точное соответствие $_GET-переменных
     * @return int возвращает:
     *     2 - если ссылки абсолютно идентичны;
     *     1 - если текущий адрес является подразделом искомого;
     *     0 - если адреса разные
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


    /**
     * Парсит URL
     * @param string $url URL для разбора
     * @return array <pre><code>array<
     *     Результат parse_url,
     *     'path' => string[] Путь URL, разбитый по слэшам,
     *     'query' => array<string[] => string> Ассоциативный массив GET-параметров
     * ></code></pre>
     */
    public static function parseURL(string $url): array
    {
        $urlArr = parse_url($url);
        $pathArr = explode('/', trim($urlArr['path'] ?? '', '/'));
        parse_str(trim($urlArr['query'] ?? '', ' ?'), $queryArr);
        $result = $urlArr;
        $result['path'] = $pathArr;
        $result['query'] = $queryArr;
        return $result;
    }
}
