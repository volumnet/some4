<?php
/**
 * Файл работы с CSV-таблицами
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал работы с текстом и текстовыми массивами, входящей в комплект SOME Framework
 *
 * @package SOME
 * @subpackage Text
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2011, ООО «Объемные Сети»
 * @version 4.0
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

/**
 * Класс работы с CSV-таблицами
 *
 * Данный класс предоставляет в виде статических функций расширенный функционал для работы с форматом CSV (Comma-Separated Values)
 * @package SOME
 * @subpackage Text
 * @property-read array $data Двумерный массив-таблица (индексированный массив индексированных массивов) строк,
 *                      содержащих значения ячеек CSV-таблицы
 * @property-read string $sep Строка, являющаяся разделителем колонок в CSV-таблице
 * @property-read bool $escchars Если установлен в true, управляющие символы будут экранироваться
 */
final class CSV
{
    /**
     * Двумерный массив-таблица (индексированный массив индексированных массивов) строк, содержащих значения ячеек CSV-таблицы.
     * @var array
     */
    private $_data;

    /**
     * Строка, являющаяся разделителем колонок в CSV-таблице.
     * @var string
     */
    private $_sep;

    /**
     * Если установлен в true, управляющие символы будут экранироваться.
     * @var bool
     */
    private $_escchars;


    /**
     * Конструктор класса
     *
     * @param array|string $inputData Массив для записи либо текст таблицы для преобразования
     * @param string $sep Строка-разделитель ячеек
     * @param bool $escchars Если установлен в TRUE, управляющие символы будут экранироваться.
     */
    public function __construct($inputData, $sep = ";", $escchars = true)
    {
        $this->sep = $sep;
        $this->escchars = $escchars;
        if (is_array($inputData)) {
            $this->data = $inputData;
            return;
        } elseif (!$inputData) {
            $this->data = [];
            return;
        }
        $array = $this->parseCSV($inputData);
        $callback = function ($x) use ($sep, $escchars) {
            if ($escchars) {
                return array_map(function ($y) {
                    return stripcslashes($y);
                }, str_getcsv($x, $sep, '"', $escchars ? '\\' : ''));
            } else {
                return str_getcsv($x, $sep, '"', $escchars ? '\\' : '');
            }
        };
        $array = array_map($callback, $array);
        $this->data = $array;
    }


    public function __get($var)
    {
        switch ($var) {
            case 'data':
                return $this->_data;
                break;
            case 'sep':
                return $this->_sep;
                break;
            case 'escchars':
                return $this->_escchars;
                break;
            case 'csv':
                return $this->getcsv();
                break;
        }
    }


    /**
     * Возвращает CSV-таблицу из внутреннего массива данных
     *
     * @return string Текст CSV-таблицы
     */
    private function getcsv()
    {
        $rows = [];
        for ($i = 0; $i < count($this->data); $i++) {
            for ($j = 0; $j < count($this->data[$i]); $j++) {
                if ($this->_escchars) {
                    $data[$i][$j] = addcslashes(
                        $this->data[$i][$j],
                        "\0..\37\\"
                    );
                }
                if (substr($this->data[$i][$j], 0, 1) == '+' ||
                    substr($this->data[$i][$j], 0, 1) == "-"
                ) {
                    $this->data[$i][$j] = ' ' . $this->data[$i][$j];
                }
                if (strstr($this->data[$i][$j], '"') ||
                    strstr($this->data[$i][$j], ";") ||
                    strstr($this->data[$i][$j], "\r") ||
                    strstr($this->data[$i][$j], "\n") ||
                    strstr($this->data[$i][$j], "\t") ||
                    strstr($this->data[$i][$j], ' ')
                ) {
                    $this->data[$i][$j] = '"'
                        . str_replace('"', '""', $this->data[$i][$j])
                        . '"';
                }
            }
            $rows[$i] = implode($this->sep, $this->data[$i]);
        }

        $text = implode("\n", $rows);
        return $text;
    }


    /**
     * Разбирает текст CSV-файла на корректные строки
     *
     * @param string $inputData Текст таблицы для преобразования
     * @return array Массив, содержащий текст строк таблицы
     */
    private function parseCSV($inputData)
    {
        $inputData = preg_replace('/\\r\\n|\\r/i', "\n", $inputData);
        $array = [];
        $q = false;
        $str = '';
        for ($i = 0; $i < strlen($inputData); $i++) {
            $x = $inputData[$i];
            if ($x == '"' &&
                !(isset($inputData[$i - 1]) && $inputData[$i - 1] == '\\')
            ) {
                $q = !$q;
            } elseif ($x == "\n" && !$q) {
                $array[] = $str;
                $str = '';
                continue;
            }
            $str .= $x;
        }
        if ($str) {
            $array[] = $str;
        }
        return $array;
    }
}
