<?php
/**
 * Тест для класса Text
 */
namespace SOME;

use RAAS\CMS\Page;

class TextTest extends BaseTest
{
    public static $tables = [
        'cms_pages',
        'users',
        'cms_templates',
        'attachments',
        'cms_access',
        'cms_materials',
        'cms_material_types',
        'cms_blocks',
        'cms_users',
        'cms_groups'
    ];
    /**
     * Провайдер данных для метода testNumTxt
     * @return array <pre><code>array<[
     *     int Число для образования словоформы
     *     string[] Словоформы
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function numTxtDataProvider()
    {
        return [
            [10, ['пользователей', 'пользователь', 'пользователя'], 'пользователей'],
            [1, ['пользователей', 'пользователь', 'пользователя'], 'пользователь'],
            [2452, ['пользователей', 'пользователь', 'пользователя'], 'пользователя'],
            [2411, ['пользователей', 'пользователь', 'пользователя'], 'пользователей'],
        ];
    }


    /**
     * Тест метода numTxt()
     * @param int $number Число для образования словоформы
     * @param string[] $wordForms Массив словоформ в виде
     *     ['множественное число больше 4', 'единственное число', 'множественное число от 2 до 4']
     * @param string $expected Ожидаемое значение
     * @dataProvider numTxtDataProvider
     */
    public function testNumTxt(int $number, array $wordForms, string $expected)
    {
        $result = Text::numTxt($number, $wordForms);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testNumerals
     * @return array <pre><code>array<[
     *     int Число для отображения
     *     int При значении 0 числительное выдается в женском роде, при значении 1 - в мужском,
     *         при значении 2 - в среднем
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function numeralsDataProvider()
    {
        return [
            [3120573, 1, 'три миллиона сто двадцать тысяч пятьсот семьдесят три'],
            [3120572, 0, 'три миллиона сто двадцать тысяч пятьсот семьдесят две'],
            [3120571, 2, 'три миллиона сто двадцать тысяч пятьсот семьдесят одно'],
            [3120512, 2, 'три миллиона сто двадцать тысяч пятьсот двенадцать'],
        ];
    }


    /**
     * Тест метода numerals()
     * @param int $str Число для отображения
     * @param int $gender при значении 0 числительное выдается в женском роде,
     *     при значении 1 - в мужском, при значении 2 - в среднем
     * @param string $expected Ожидаемое значение
     * @dataProvider numeralsDataProvider
     */
    public function testNumerals(int $str, int $gender, string $expected)
    {
        $result = Text::numerals($str, $gender);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testTranslit
     * @return array <pre><code>array<[
     *     string Исходная строка для преобразования - кириллицей
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function translitDataProvider()
    {
        return [
            ['Тестовая строка для проверки ожидаемого значения', 'Testovaya stroka dl\'a proverki ojidaemogo znacheniya'],
        ];
    }


    /**
     * Тест метода translit()
     * @param string $string исходная строка для преобразования - кириллицей
     * @param string $expected Ожидаемое значение
     * @dataProvider translitDataProvider
     */
    public function testTranslit(string $string, string $expected)
    {
        $result = Text::translit($string);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testConvertLayout
     * @return array <pre><code>array<[
     *     string Исходная строка для преобразования
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function convertLayoutDataProvider()
    {
        return [
            ['Ghjcnj ntrcn', 'Просто текст'],
            ['Просто текст', 'Ghjcnj ntrcn'],
        ];
    }


    /**
     * Тест метода convertLayou()
     * @param string $string исходная строка для преобразования
     * @param string $expected Ожидаемое значение
     * @dataProvider convertLayoutDataProvider
     */
    public function testConvertLayout(string $string, string $expected)
    {
        $result = Text::convertLayout($string);

        $this->assertEquals($expected, $result);
    }

    /**
     * Провайдер данных для метода testCuttext
     * @return array <pre><code>array<[
     *     string Исходная строка
     *     int Количество символов (лимит) для ограничения строки
     *     string Строка, добавляемая при превышении лимита
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function cuttextDataProvider()
    {
        return [
            ['Тестовая строка', 10, ',,,', 'Тестовая,,,'],
            ['Тестовая', 10, '...', 'Тестовая'],
        ];
    }


    /**
     * Тест метода cuttext()
     * @param string $string исходная строка
     * @param int $limit количество символов (лимит) для ограничения строки
     * @param string $overflow строка, добавляемая при превышении лимита
     * @param string $expected Ожидаемое значение
     * @dataProvider cuttextDataProvider
     */
    public function testCuttext(string $string, int $limit, string $overflow, string $expected)
    {
        $result = Text::cuttext($string, $limit, $overflow);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testSerializeXML
     * @return array <pre><code>array<[
     *     mixed Данные для представления
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function serializeXMLDataProvider()
    {
        static::installTables();
        return [
            [
                ['aaa' => ['bbb' => 'ccc', 'ddd' => (object)['eee' => 'fff']]],
                '<aaa><bbb>ccc</bbb><ddd><eee>fff</eee></ddd></aaa>'
            ],
            [
                ['aaa' => new Page(['id' => 123, 'name' => 'aaa'])],
                '<aaa><id>123</id><name>aaa</name></aaa>'
            ],
            [
                ['aaa' => [new Page(['id' => 123, 'name' => 'aaa'])]],
                '<aaa><RAAS.CMS.Page><id>123</id><name>aaa</name></RAAS.CMS.Page></aaa>'
            ],
            [
                ['aaa' => [['id' => 123, 'name' => 'aaa']]],
                '<aaa><element><id>123</id><name>aaa</name></element></aaa>'
            ],
            [
                ['aaa' => ['bbb' => []]],
                '<aaa><bbb /></aaa>'
            ],
        ];
    }


    /**
     * Тест метода serializeXML()
     * @param mixed $node Данные для представления
     * @param string $expected Ожидаемое значение
     * @dataProvider serializeXMLDataProvider
     */
    public function testSerializeXML($node, string $expected)
    {
        $result = Text::serializeXML($node);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testBeautify
     * @return array <pre><code>array<[
     *     string Исходное имя для преобразования
     *     string Заменитель пробела
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function beautifyDataProvider()
    {
        return [
            ['Тестовая строка!!!', '-', 'testovaya-stroka'],
        ];
    }


    /**
     * Тест метода beautify()
     * @param string $string исходное имя для преобразования
     * @param string $spaceSeparator заменитель пробела
     * @param string $expected Ожидаемое значение
     * @dataProvider beautifyDataProvider
     */
    public function testBeautify(string $string, string $spaceSeparator, string $expected)
    {
        $result = Text::beautify($string, $spaceSeparator);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testBeautifyPhone
     * @return array <pre><code>array<[
     *     string Исходный номер для преобразования
     *     int Количество значимых цифр в телефоне
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function beautifyPhoneDataProvider()
    {
        return [
            ['+7 999 000-12-34', 10, '9990001234'],
        ];
    }


    /**
     * Тест метода beautifyPhon()
     * @param string $phone исходный номер для преобразования
     * @param int $nOfDigits Количество значимых цифр в телефоне
     * @param string $expected Ожидаемое значение
     * @dataProvider beautifyPhoneDataProvider
     */
    public function testBeautifyPhone(string $phone, int $nOfDigits, string $expected)
    {
        $result = Text::beautifyPhone($phone, $nOfDigits);

        $this->assertEquals($expected, $result);
    }

    /**
     * Провайдер данных для метода testFormatPhone
     * @return array <pre><code>array<[
     *     string Исходный номер для преобразования
     *     bool Использовать скобки вокруг кода оператора
     *     string Маска для номера
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function formatPhoneDataProvider()
    {
        return [
            ['+7-999-1234567', false, '70000000000', '+7 999 123-45-67'],
            ['12-34-56-7', true, '88000000000', '+8 (800) 123-45-67'],
            ['', false, '70000000000', ''],
        ];
    }


    /**
     * Тест метода formatPhone()
     * @param string $phone исходный номер для преобразования
     * @param bool $useParentheses Использовать скобки вокруг кода оператора
     * @param string $mask Маска для номера
     * @param string $expected Ожидаемое значение
     * @dataProvider formatPhoneDataProvider
     */
    public function testFormatPhone(string $phone, bool $useParentheses, string $mask, string $expected)
    {
        $result = Text::formatPhone($phone, $useParentheses, $mask);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testFormatPrice
     * @return array <pre><code>array<[
     *     float Цена
     *     bool Принудительно выводить остаток
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function formatPriceDataProvider()
    {
        return [
            [1234.5, true, '1 234,50'],
            [1234.5, false, '1 234,50'],
            [1234, true, '1 234,00'],
            [1234, false, '1 234'],
        ];
    }


    /**
     * Тест метода formatPrice()
     * @param float $price Цена
     * @param bool $forceRemainder Принудительно выводить остаток
     * @param string $expected Ожидаемое значение
     * @dataProvider formatPriceDataProvider
     */
    public function testFormatPrice(float $price, bool $forceRemainder, string $expected)
    {
        $result = Text::formatPrice($price, $forceRemainder);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testRenderTemplate
     * @return array <pre><code>array<[
     *     string Строка шаблона
     *     array Данные
     *     string|null Движок (название) рендерера
     * ]></code></pre>
     */
    public function renderTemplateDataProvider()
    {
        return [
            ['Test {{aaa}}', ['aaa' => 'bbb'], 'twig', 'Test bbb'],
            ['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', ['aaa' => true], 'twig', 'Is aaa'],
            ['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', ['aaa' => false], 'twig', 'Is not aaa'],
            ['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', [], 'twig', 'Is not aaa'],
            ['Test {{aaa}}', ['aaa' => 'bbb'], 'mustache', 'Test bbb'],
            ['{{#aaa}}Is aaa{{/aaa}}', ['aaa' => true], 'mustache', 'Is aaa'],
            ['{{#aaa}}Is aaa{{/aaa}}', ['aaa' => false], 'mustache', ''],
        ];
    }


    /**
     * Тест метода renderTemplate
     * @param string $template Строка шаблона
     * @param array $data Данные
     * @param string|null $engine Движок (название) рендерера
     * @param string $expected Ожидаемое значение
     * @dataProvider renderTemplateDataProvider
     */
    public function testRenderTemplate(string $template, array $data, string $engine, string $expected)
    {
        $result = Text::renderTemplate($template, $data, $engine);

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для метода testInlineCSS
     * @return array <pre><code>array<[
     *     string Исходная строка
     *     string Ожидаемое значение
     * ]></code></pre>
     */
    public function inlineCSSDataProvider()
    {
        return [
            [
                '<style>.aaa { color: red; }</style><div class="aaa">aaa</div>',
                '<div class="aaa" style="color: red;">aaa</div>',
            ],
            [
                '<html><head><style>.aaa { color: red; }</style></head><body><div class="aaa">aaa</div></body></html>',
                '<!DOCTYPE html>' . "\n" .
                '<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head><body><div class="aaa" style="color: red;">aaa</div></body></html>' . "\n"
            ],
        ];
    }


    /**
     * Тест метода inlineCSS
     * @param string $string Исходная строка
     * @param string $expected Ожидаемое значение
     * @dataProvider inlineCSSDataProvider
     */
    public function testInlineCSS(string $string, string $expected)
    {
        $result = Text::inlineCSS($string);

        $this->assertEquals($expected, $result);
    }
}
