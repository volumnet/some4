<?php
/**
 * Файл работы с текстовыми данными
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал работы с текстом и текстовыми массивами, 
 * входящей в комплект SOME Framework
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
 * Класс работы с текстом
 * 
 * Данный класс предоставляет в виде статических функций основной функционал для работы с текстом и текстовыми массивами
 * @package SOME
 * @subpackage Text
 */   
final class Text
{
    /**
     * Наименования месяцев на русском языке в родительном падеже
     * @var array     
     */
    public static $months = array('', 'января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря');
    
    /**
     * Наименования месяцев на русском языке в родительном падеже
     * @var array     
     */
    public static $monthsN = array('', 'январь', 'февраль', 'март', 'апрель', 'май', 'июнь', 'июль', 'август', 'сентябрь', 'октябрь', 'ноябрь', 'декабрь');
    
    /**
     * Числительные в русском языке.
     * @var array
     */              
    private static $NUM = array(
        0 => '', 1 => array('одна', 'один', 'одно'), 2 => array('две', 'два', 'два'), 3 => 'три', 4 => 'четыре', 5 => 'пять', 
        6 => 'шесть', 7 => 'семь', 8 => 'восемь', 9 => 'девять', 10 => 'десять',
        11 => 'одиннадцать', 12 => 'двенадцать', 13 => 'тринадцать', 14 => 'четырнадцать', 15 => 'пятнадцать', 
        16 => 'шестнадцать', 17 => 'семнадцать', 18 => 'восемнадцать', 19 => 'девятнадцать', 
        20 => 'двадцать', 30 => 'тридцать', 40 => 'сорок', 50 => 'пятьдесят', 60 => 'шестьдесят', 
        70 => 'семдесят', 80 => 'восемдесят', 90 => 'девяносто', 
        100 => 'сто', 200 => 'двести', 300 => 'триста', 400 => 'четыреста', 500 => 'пятьсот', 600 => 'шестьсот', 
        700 => 'семьсот', 800 => 'восемьсот', 900 => 'девятьсот'
    );
    
    /**
     * Название степеней тысяч на русском языке.
     * @var array
     */            
    private static $DEC = array(
        '', 'тысяч', 'миллион', 'миллиард', 'триллион', 'квадриллион', 'квинтиллион', 'секстиллион', 'септиллион', 
        'октиллион', 'нониллион', 'дециллион'
    );
    
    /**
     * Правила транслитерации букв в буквосочетаниях кириллицы.
     * @var array
     */          
    private static $translit_rx = array(
        'ЫЙ' => 'YI', 'ый' => 'yi', 'Ый' => 'Yi', 'ыЙ' => 'yI',
        '(Ъ|Ь|ъ|ь|\')(Е|Ё)' => 'Ye', '(Ъ|Ь|ъ|ь|\')(е|ё)' => 'ye', 'Ы(Й|й|y|i)' => 'I\\1', 'ы(Й|й|y|i)' => 'i\\1', 
        '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')ъ' => '\\1y',
        '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')Ъ' => '\\1Y',
        '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')Ю' => '\\1Yu', 
        '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')ю' => '\\1yu',
        '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')Я' => '\\1Ya',
        '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')я' => '\\1ya',
        'Ч' => 'Ch', 'ч' => 'ch', 'Ш' => 'Sh', 'ш' => 'sh', 'Щ' => 'Sch', 'щ' => 'sch', 
        'Ъ' => '', 'ъ' => '', 'Ю' => "'U", 'ю' => "'u", 'Я' => "'A", 'я' => "'a"
    );
    
    /**
     * Набор букв для безусловной транслитерации кириллицы.
     * @var string     
     */         
    private static $translit_from = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЫЬЭабвгдеёжзийклмнопрстуфхцыьэ';
    
    /**
     * Набор соответствующих букв латиницы для безусловной транслитерации кириллических букв.
     * @var string
     */          
    private static $translit_to =   "ABVGDEEJZIYKLMNOPRSTUFHCY'Eabvgdeejziyklmnoprstufhcy'e";
    
    
    /**
     * Проверяет, является ли строка корректным номером ICQ
     *
     * Корректный номер ICQ содержит от 5 до 9 цифр, группы по 3 разряда начиная справа могут быть разделены дефисами 
     * @param string $icq Строка для проверки
     * @return bool Возвращает true, если строка является корректным (пусть и не существующим) 5-9-значным номером ICQ UIN, 
     *              false в противном случае
     */
    public static function is_icq($icq)
    {
        return mb_ereg_match ('^(\d{5,9})|((\d{1,3}-)?\d{3}-\d{3})|(\d{2}-\d{3})$', $icq);
    }
    
    
    /**
     * Возвращает слово в правильном числе русского языка
     *
     * Возвращает словоформу единственного и множественного (2-4, более 4) числа русского языка в зависимости от заданного числа.
     * !ВНИМАНИЕ! ДЛЯ ЯЗЫКОВ КРОМЕ РУССКОГО ФУНКЦИЯ РАБОТАЕТ НЕПРАВИЛЬНО
     * @param string|int $number Число для образования словоформы
     * @param array $wordForms Массив словоформ в виде
     *              array('множественное число больше 4', 'единственное число', 'множественное число от 2 до 4'), например: 
     *              array('пользователей', 'пользователь', 'пользователя'). 
     *              Поскольку индексация массива начинается с 0, порядок перечисления словоформ легко запомнить по соответствию индексу массива, 
     *              например: array (0 => 'пользователей', 1 => 'пользователь', 2 => 'пользователя')
     * @return string Словоформа в корректном числе
     */
    public static function numTxt($number, $wordForms)
    {
        if (strlen($number) > 3) {
            $number = substr($number, -3);
        }
        $e = (int)$number % 10;
        $d = floor((int)$number / 10) % 10;
        if ($e == 1 && $d != 1) {
            return $wordForms[1];
        } else if ($e >= 2 && $e <= 4 && $d != 1) {
            return $wordForms[2];
        } else {
            return $wordForms[0];
        }
    }
    
    
    /**
     * Функция возвращает число прописью на русском языке
     *      
     * @param string|int $str Число или числовая строка для отображения (цифрами). Тип string допустим для обхода ограничения на максимальное 
     *                   число типа integer. Число должно быть целым, положительным, меньшим 10^33
     * @param int $gender при значении 0 числительное выдается в женском роде, при значении 1 - в мужском, при значении 2 - в среднем
     * @return string заданное число прописью в заданном роде, например для numerals(1231, 0) - "одна тысяча двести тридцать одна"     
     */         
    public static function numerals($str, $gender = 1)
    {
        $str = mb_ereg_replace('\\D+', '', $str);
        
        $str = str_pad($str, ceil(mb_strlen($str) / 3) * 3, '0', STR_PAD_LEFT);
        $temp = array();
        for ($i = 0; $i < ceil(mb_strlen($str) / 3); $i++) {
            $x = (int)substr($str, -3 * ($i + 1), 3);
            $X = array();
            
            $e = (int)$x % 10;
            $d = floor((int)$x / 10) % 10;
            $c = floor((int)$x / 100) % 100;
            $temp[] = implode(' ', self::numeralsByDigits($i, $c, $d, $e, $gender));
        }
        return mb_convert_encoding(implode(' ', array_reverse($temp)), mb_internal_encoding(), 'UTF-8');
    }
    
    
     /**
     * Возвращает транслитерированную строку
     * 
     * Преобразует текст, набранный кириллицей, в текст, набранный латиницей, с учетом входной кодировки
     * @param string $string исходная строка для преобразования - кириллицей
     * @return string преобразованная строка               
     */
    public static function translit($string)
    {
        $temp = mb_convert_encoding($string, 'UTF-8');
        foreach (self::$translit_rx as $key => $val) {
            $temp = mb_ereg_replace($key, $val, $temp);
        }
        for ($i = 0; $i < mb_strlen(self::$translit_from, 'UTF-8'); $i++) {
            $x = mb_substr(self::$translit_from, $i, 1, 'UTF-8');
            $y = mb_substr(self::$translit_to, $i, 1, 'UTF-8');
            $temp = mb_ereg_replace($x, $y, $temp, 'mi');
        }
        return mb_convert_encoding($temp, mb_internal_encoding(), 'UTF-8');
    }
    
    
    /**
     * Возвращает подстроку
     * 
     * Возвращает подстроку заданной строки, длиной от заданного лимита, но не менее ближайшего целого слова. Т.е. если лимит заканчивается
     * на середине слова, слово не войдет в подстроку. Если лимит меньше заданной строки, то можно добавить дополнительные символы "далее" 
     * (по умолчанию три точки (многоточие))
     * @param string $string исходная строка
     * @param int $limit количество символов (лимит) для ограничения строки
     * @param string $overflow строка, добавляемая при превышении лимита
     * @return string результирующая строка     
     */         
    public static function cuttext($string, $limit = 256, $overflow = '')
    {
        if ($limit && mb_strlen($string) > $limit) {
            $temp = mb_split(' ', $string);
            for ($i = 1; $i <= count($temp); $i++) {
                if (mb_strlen(implode(' ', array_slice($temp, 0, $i + 1))) >= $limit) {
                    return implode(' ', array_slice($temp, 0, $i)) . $overflow;
                }
            }
        }
        return $string;
    }
    
    
    /**
     * Функция представляет данные в виде XML-дерева
     *
     * Ассоциативные массивы и свойства объектов представляются в виде <ключ>значение</ключ>, 
     * индексированные массивы - в виде <element>значение</element>. Скалярные типы представляются в виде значения, ресурсы не представляются
     * @param mixed $node Данные для представления
     * @return string Возвращает XML-код представления
     */
    public static function serializeXML($node)
    {
        if (is_object($node)) {
            if ($node instanceof \SOME\SOME) {
                $node = $node->getArrayCopy();
            } else {
                $node = array_merge(get_class_vars(get_class($node)), get_object_vars($node));
            }
        }
        $text = '';
        if (is_array($node)) {
            foreach($node as $key => $val) {
                $key = mb_ereg_replace('\W', '', $key);
                if (is_numeric($key) || !$key) {
                    if ($val instanceof SOME) {
                        $key = str_replace('\\', '.', get_class($val));
                        $val = $val->getArrayCopy(0xff);
                    } else {
                        $key = 'element';
                    }
                }
                if (is_resource($val)) {
                    $text .= '<' . $key . ' />';
                } else {
                    $text .= '<' . $key . '>' . \SOME\Text::serializeXML($val) . '</' . $key . '>';
                }
            }
        } elseif (is_string($node) || is_numeric($node)) {
            $text .= htmlspecialchars($node);
        }
        return $text;
    }
    
    
    /**
     * Формирует безопасные имена файлов
     * 
     * Транслитерирует название, приводит его к нижнему регистру и заменяет небезопасные символы, оставляя только латинские буквы, цифры и знаки
     * подчеркивания.
     * @param string $string исходное имя для преобразования
     * @return string преобразованная строка
     */          
    public static function beautify($string)
    {
        $string = \SOME\Text::translit($string, false);
        $string = iconv(mb_internal_encoding(), 'cp1251//TRANSLIT', $string);
        $string = strtolower($string);
        $string = preg_replace('/ /i', '_', $string);
        $string = preg_replace('/[^\\-\\w]/i', '', $string);
        return $string;
    } 
    
    
    /**
     * Формирует телефонный номер 10-значным числом
     * 
     * @param string $string исходный номер для преобразования
     * @return string преобразованная строка
     */          
    public static function beautifyPhone($phone)
    {
        $phone = preg_replace('/[^\\d]+/i', '', $phone);
        $phone = substr($phone, -10);
        return $phone;
    }

    
    
    /**
     * Функция возвращает число прописью на русском языке по заданным параметрам
     *          
     * @param int $i Степень тысячи после указанных единиц
     * @param int $c Количество сотен
     * @param int $d Количество десятков
     * @param int $e Количество единиц               
     * @param int $gender при значении 0 числительное выдается в женском роде, 
     *            при значении 1 - в мужском, 
     *            при значении 2 - в среднем
     * @return string заданное число прописью в заданном роде, например для numerals(1231, 0) - "одна тысяча двести тридцать одна"     
     */         
    private static function numeralsByDigits($i, $c, $d, $e, $gender = 1)
    {
        $X = array();
        if ($c && isset(self::$NUM[$c * 100])) {
            $X[] = self::$NUM[$c * 100];
        }
        if ($d == 1 && $e) {
            if (isset(self::$NUM[$d * 10 + $e])) {
                $X[] = self::$NUM[$d * 10 + $e];
            }
        } else {
            if ($d && isset(self::$NUM[$d * 10])) {
                $X[] = self::$NUM[$d * 10];
            }
            if ($e > 2 && isset(self::$NUM[$e])) {
                $X[] = self::$NUM[$e];
            } elseif ($e && isset(self::$NUM[$e])) {
                $X[] = self::$NUM[$e][$i ? ($i == 1 ? 0 : 1) : $gender];
            }
        }
        if ($i > 1 && isset(self::$DEC[$i])) {
            $X[] = self::numTxt($c * 100 + $d * 10 + $e, array(self::$DEC[$i] . 'ов', self::$DEC[$i], self::$DEC[$i] . 'а'));
        } elseif ($i && isset(self::$DEC[$i])) {
            $X[] = self::numTxt($c * 100 + $d * 10 + $e, array(self::$DEC[$i], self::$DEC[$i] . 'а', self::$DEC[$i] . 'и'));
        }
        return $X;
    }
}