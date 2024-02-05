<?php
/**
 * Файл работы с текстовыми данными
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал работы с текстом и текстовыми массивами,
 * входящей в комплект SOME Framework
 *
 * @package SOME
 * @subpackage Text
 * @author Александр В. Сурнин <info@volumnet.ru>
 * @copyright © 2022, «Объемные Сети»
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
    public static $months = [
        '',
        'января',
        'февраля',
        'марта',
        'апреля',
        'мая',
        'июня',
        'июля',
        'августа',
        'сентября',
        'октября',
        'ноября',
        'декабря'
    ];

    /**
     * Наименования месяцев на русском языке в родительном падеже
     * @var array
     */
    public static $monthsN = [
        '',
        'январь',
        'февраль',
        'март',
        'апрель',
        'май',
        'июнь',
        'июль',
        'август',
        'сентябрь',
        'октябрь',
        'ноябрь',
        'декабрь'
    ];


    /**
     * Проверяет, является ли строка корректным номером ICQ
     *
     * Корректный номер ICQ содержит от 5 до 9 цифр, группы по 3 разряда начиная справа могут быть разделены дефисами
     * @param string $icq Строка для проверки
     * @return bool Возвращает true, если строка является корректным (пусть и не существующим) 5-9-значным номером ICQ UIN,
     *              false в противном случае
     * @deprecated 2022-10-07 Практически не использовалась
     */
    public static function is_icq($icq)
    {
        return preg_match('/^(\\d{5,9})|((\\d{1,3}-)?\\d{3}-\\d{3})|(\\d{2}-\\d{3})$/umis', $icq);
    }


    /**
     * Возвращает слово в правильном числе русского языка
     *
     * Возвращает словоформу единственного и множественного (2-4, более 4) числа русского языка
     * в зависимости от заданного числа.
     * !ВНИМАНИЕ! ДЛЯ ЯЗЫКОВ КРОМЕ РУССКОГО ФУНКЦИЯ РАБОТАЕТ НЕПРАВИЛЬНО
     *
     * @param string|int $number Число для образования словоформы
     * @param array $wordForms Массив словоформ в виде
     *     ['множественное число больше 4', 'единственное число', 'множественное число от 2 до 4'], например:
     *     ['пользователей', 'пользователь', 'пользователя'].
     *     Поскольку индексация массива начинается с 0,
     *     порядок перечисления словоформ легко запомнить по соответствию индексу массива,
     *     например: [0 => 'пользователей', 1 => 'пользователь', 2 => 'пользователя']
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
     * @param string|int $str Число или числовая строка для отображения (цифрами).
     *     Тип string допустим для обхода ограничения на максимальное число типа integer.
     * Число должно быть целым, положительным, меньшим 10^33
     * @param int $gender при значении 0 числительное выдается в женском роде,
     *     при значении 1 - в мужском, при значении 2 - в среднем
     * @return string заданное число прописью в заданном роде,
     *     например для numerals(1231, 0) - "одна тысяча двести тридцать одна"
     */
    public static function numerals($str, $gender = 1)
    {
        $str = preg_replace('/\\D+/umis', '', $str);

        $numerals = [
            0 => '',
            1 => ['одна', 'один', 'одно'],
            2 => ['две', 'два', 'два'],
            3 => 'три',
            4 => 'четыре',
            5 => 'пять',
            6 => 'шесть',
            7 => 'семь',
            8 => 'восемь',
            9 => 'девять',
            10 => 'десять',
            11 => 'одиннадцать',
            12 => 'двенадцать',
            13 => 'тринадцать',
            14 => 'четырнадцать',
            15 => 'пятнадцать',
            16 => 'шестнадцать',
            17 => 'семнадцать',
            18 => 'восемнадцать',
            19 => 'девятнадцать',
            20 => 'двадцать',
            30 => 'тридцать',
            40 => 'сорок',
            50 => 'пятьдесят',
            60 => 'шестьдесят',
            70 => 'семдесят',
            80 => 'восемдесят',
            90 => 'девяносто',
            100 => 'сто',
            200 => 'двести',
            300 => 'триста',
            400 => 'четыреста',
            500 => 'пятьсот',
            600 => 'шестьсот',
            700 => 'семьсот',
            800 => 'восемьсот',
            900 => 'девятьсот'
        ];
        $decimals = [
            '',
            'тысяч',
            'миллион',
            'миллиард',
            'триллион',
            'квадриллион',
            'квинтиллион',
            'секстиллион',
            'септиллион',
            'октиллион',
            'нониллион',
            'дециллион'
        ];

        $str = str_pad($str, ceil(mb_strlen($str) / 3) * 3, '0', STR_PAD_LEFT);
        $temp = [];
        for ($i = 0; $i < ceil(mb_strlen($str) / 3); $i++) {
            $x = (int)substr($str, -3 * ($i + 1), 3);
            $e = (int)$x % 10;
            $d = floor((int)$x / 10) % 10;
            $c = floor((int)$x / 100) % 100;

            $X = [];
            if ($c && isset($numerals[$c * 100])) {
                $X[] = $numerals[$c * 100];
            }
            if ($d == 1 && $e) {
                if (isset($numerals[$d * 10 + $e])) {
                    $X[] = $numerals[$d * 10 + $e];
                }
            } else {
                if ($d && isset($numerals[$d * 10])) {
                    $X[] = $numerals[$d * 10];
                }
                if ($e > 2 && isset($numerals[$e])) {
                    $X[] = $numerals[$e];
                } elseif ($e && isset($numerals[$e])) {
                    $X[] = $numerals[$e][$i ? ($i == 1 ? 0 : 1) : $gender];
                }
            }
            if ($i > 1 && isset($decimals[$i])) {
                $X[] = self::numTxt($c * 100 + $d * 10 + $e, [$decimals[$i] . 'ов', $decimals[$i], $decimals[$i] . 'а']);
            } elseif ($i && isset($decimals[$i])) {
                $X[] = self::numTxt($c * 100 + $d * 10 + $e, [$decimals[$i], $decimals[$i] . 'а', $decimals[$i] . 'и']);
            }
            $temp[] = implode(' ', $X);
        }
        return implode(' ', array_reverse($temp));
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
        $result = $string;
        $translitFrom = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЫЬЭабвгдеёжзийклмнопрстуфхцыьэ';
        $translitTo =   "ABVGDEEJZIYKLMNOPRSTUFHCY'Eabvgdeejziyklmnoprstufhcy'e";
        $translitRx = [
            'ЫЙ' => 'YI',
            'ый' => 'yi',
            'Ый' => 'Yi',
            'ыЙ' => 'yI',
            '(Ъ|Ь|ъ|ь|\')(Е|Ё)' => 'Ye',
            '(Ъ|Ь|ъ|ь|\')(е|ё)' => 'ye',
            'Ы(Й|й|y|i)' => 'I$1',
            'ы(Й|й|y|i)' => 'i$1',
            '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')ъ' => '$1y',
            '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')Ъ' => '$1Y',
            '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')Ю' => '$1Yu',
            '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')ю' => '$1yu',
            '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')Я' => '$1Ya',
            '(^| |А|Е|Ё|И|О|У|Ъ|Ы|Ь|Э|Ю|Я|а|е|ё|и|о|у|ъ|ы|ь|э|ю|я|A|E|I|O|U|Y|a|e|i|o|u|y\')я' => '$1ya',
            'Ч' => 'Ch',
            'ч' => 'ch',
            'Ш' => 'Sh',
            'ш' => 'sh',
            'Щ' => 'Sch',
            'щ' => 'sch',
            'Ъ' => '',
            'ъ' => '',
            'Ю' => "'U",
            'ю' => "'u",
            'Я' => "'A",
            'я' => "'a"
        ];
        foreach ($translitRx as $key => $val) {
            $result = preg_replace('/' . $key . '/ums', $val, $result);
        }
        for ($i = 0; $i < mb_strlen($translitFrom); $i++) {
            $x = mb_substr($translitFrom, $i, 1);
            $y = mb_substr($translitTo, $i, 1);
            $result = str_replace($x, $y, $result);
        }
        return $result;
    }


    /**
     * Возвращает строку с конвертированной раскладкой (русский-английский)
     *
     * Преобразует текст, набранный кириллицей, в текст, набранный латиницей, с учетом входной кодировки
     * @param string $string исходная строка для преобразования - кириллицей
     * @return string преобразованная строка
     */
    public static function convertLayout($string)
    {
        $layoutLettersEnRu = [
            'q' => 'й',
            'w' => 'ц',
            'e' => 'у',
            'r' => 'к',
            't' => 'е',
            'y' => 'н',
            'u' => 'г',
            'i' => 'ш',
            'o' => 'щ',
            'p' => 'з',
            'a' => 'ф',
            's' => 'ы',
            'd' => 'в',
            'f' => 'а',
            'g' => 'п',
            'h' => 'р',
            'j' => 'о',
            'k' => 'л',
            'l' => 'д',
            'z' => 'я',
            'x' => 'ч',
            'c' => 'с',
            'v' => 'м',
            'b' => 'и',
            'n' => 'т',
            'm' => 'ь',
            'Q' => 'Й',
            'W' => 'Ц',
            'E' => 'У',
            'R' => 'К',
            'T' => 'Е',
            'Y' => 'Н',
            'U' => 'Г',
            'I' => 'Ш',
            'O' => 'Щ',
            'P' => 'З',
            'A' => 'Ф',
            'S' => 'Ы',
            'D' => 'В',
            'F' => 'А',
            'G' => 'П',
            'H' => 'Р',
            'J' => 'О',
            'K' => 'Л',
            'L' => 'Д',
            'Z' => 'Я',
            'X' => 'Ч',
            'C' => 'С',
            'V' => 'М',
            'B' => 'И',
            'N' => 'Т',
            'M' => 'Ь',
        ];
        $layoutSpecialEnRu = [
            '`' => 'ё',
            '[' => 'х',
            ']' => 'ъ',
            ';' => 'ж',
            "'" => 'э',
            ',' => 'б',
            '.' => 'ю',
            '/' => '.',

            '~' => 'Ё',
            '@' => '"',
            '#' => '№',
            '$' => ';',
            '^' => ':',
            '&' => '?',
            '{' => 'Х',
            '}' => 'Ъ',
            '|' => '/',
            ':' => 'Ж',
            '"' => 'Э',
            '<' => 'Б',
            '>' => 'Ю',
            '?' => ',',
        ];

        $initialLayout = preg_match('/[А-Яа-я]+/umis', $string) ? 'ru' : 'en';
        $layoutLetters = array_merge($layoutLettersEnRu, array_flip($layoutLettersEnRu));
        if ($initialLayout == 'ru') {
            $layoutSpecial = array_merge($layoutSpecialEnRu, array_flip($layoutSpecialEnRu));
        } else {
            $layoutSpecial = array_merge(array_flip($layoutSpecialEnRu), $layoutSpecialEnRu);
        }
        $layout = array_merge($layoutLetters, $layoutSpecial);

        $l = mb_strlen($string);
        $result = '';
        for ($i = 0; $i < $l; $i++) {
            $chr = mb_substr($string, $i, 1);
            if (isset($layout[$chr])) {
                $resChr = $layout[$chr];
            } else {
                $resChr = $chr;
            }
            $result .= $resChr;
        }
        return $result;
    }


    /**
     * Возвращает подстроку
     *
     * Возвращает подстроку заданной строки, длиной от заданного лимита, но не менее ближайшего целого слова.
     * Т.е. если лимит заканчивается на середине слова, слово не войдет в подстроку.
     * Если лимит меньше заданной строки, то можно добавить дополнительные символы "далее"
     * (по умолчанию три точки (многоточие))
     *
     * @param string $string исходная строка
     * @param int $limit количество символов (лимит) для ограничения строки
     * @param string $overflow строка, добавляемая при превышении лимита
     * @return string результирующая строка
     */
    public static function cuttext($string, $limit = 256, $overflow = '')
    {
        $string = (string)$string;
        if ($limit && mb_strlen($string) > $limit) {
            $temp = explode(' ', $string);
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
     * индексированные массивы - в виде <element>значение</element>.
     * Скалярные типы представляются в виде значения, ресурсы не представляются
     *
     * @param mixed $node Данные для представления
     * @return string Возвращает XML-код представления
     */
    public static function serializeXML($node)
    {
        if (is_object($node)) {
            if ($node instanceof SOME) {
                $node = $node->getArrayCopy();
            } else {
                $node = array_merge(get_class_vars(get_class($node)), get_object_vars($node));
            }
        }
        $text = '';
        if (is_array($node)) {
            foreach ($node as $key => $val) {
                $key = preg_replace('/\\W/umis', '', $key);
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
                    $text .= '<' . $key . '>' . Text::serializeXML($val) . '</' . $key . '>';
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
     * Транслитерирует название, приводит его к нижнему регистру и заменяет небезопасные символы,
     * оставляя только латинские буквы, цифры, знаки подчеркивания и дефисы.
     * @param string $string исходное имя для преобразования
     * @param string $spaceSeparator заменитель пробела
     * @return string преобразованная строка
     */
    public static function beautify($string, $spaceSeparator = '_')
    {
        $string = Text::translit($string, false);
        $string = strtolower($string);
        if ($string == '') {
            $string = preg_replace('/[^a-z0-9]/umis', '', $string);
        } else {
            $string = preg_replace('/ /i', $spaceSeparator, $string);
            $string = preg_replace('/[^\\-\\w]/i', '', $string);
        }
        return $string;
    }


    /**
     * Формирует телефонный номер 10-значным числом
     * @param string $phone исходный номер для преобразования
     * @param int $nOfDigits Количество значимых цифр в телефоне
     * @return string преобразованная строка
     */
    public static function beautifyPhone($phone, $nOfDigits = 10)
    {
        $phone = preg_replace('/[^\\d]+/i', '', $phone);
        $phone = substr($phone, -1 * $nOfDigits);
        return $phone;
    }


    /**
     * Форматирует телефонный номер в виде +7 (999) 000-00-00
     * @param string $phone исходный номер для преобразования
     * @param bool $useParentheses Использовать скобки вокруг кода оператора
     * @param string $mask Маска для номера
     * @return string преобразованная строка, либо пустая строка, если входная пустая
     */
    public static function formatPhone($phone, $useParentheses = true, $mask = '70000000000')
    {
        $phone = static::beautifyPhone($phone, 11);
        if (!$phone) {
            return '';
        }
        $mask = static::beautifyPhone($mask, 11);
        if (mb_strlen($phone) < 11) {
            $phone = mb_substr($mask, 0, 11 - mb_strlen($mask)) . $phone;
        }
        $result = '+' . mb_substr($phone, 0, 1) . ' ';
        if ($useParentheses) {
            $result .= '(';
        }
        $result .= mb_substr($phone, 1, 3);
        if ($useParentheses) {
            $result .= ')';
        }
        $result .= ' ' . mb_substr($phone, 4, 3) . '-' . mb_substr($phone, 7, 2) . '-' . mb_substr($phone, 9);
        return $result;
    }


    /**
     * Форматирует цену (отделяет тысячи, убирает нулевую дробь)
     * @param float $price Цена
     * @return string
     */
    public static function formatPrice($price)
    {
        $remainder = (float)$price - (float)(int)$price;
        $result = number_format((float)$price, ($remainder > 0) ? 2 : 0, ',', ' ');
        return $result;
    }
}
