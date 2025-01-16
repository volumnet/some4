<?php
/**
 * Тест для класса Text
 */
namespace SOME;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DataProvider;
use PHPUnit\Framework\Attributes\TestWith;
use RAAS\CMS\Page;

/**
 * Тест для класса Text
 */
#[CoversClass(Text::class)]
class TextTest extends BaseTest
{
    /**
     * Тест метода numTxt()
     * @param int $number Число для образования словоформы
     * @param string[] $wordForms Массив словоформ в виде
     *     ['множественное число больше 4', 'единственное число', 'множественное число от 2 до 4']
     * @param string $expected Ожидаемое значение
     */
    #[TestWith([10, ['пользователей', 'пользователь', 'пользователя'], 'пользователей'])]
    #[TestWith([1, ['пользователей', 'пользователь', 'пользователя'], 'пользователь'])]
    #[TestWith([2452, ['пользователей', 'пользователь', 'пользователя'], 'пользователя'])]
    #[TestWith([2411, ['пользователей', 'пользователь', 'пользователя'], 'пользователей'])]
    public function testNumTxt(int $number, array $wordForms, string $expected)
    {
        $result = Text::numTxt($number, $wordForms);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода numerals()
     * @param int $str Число для отображения
     * @param int $gender при значении 0 числительное выдается в женском роде,
     *     при значении 1 - в мужском, при значении 2 - в среднем
     * @param string $expected Ожидаемое значение
     */
    #[TestWith([3120573, 1, 'три миллиона сто двадцать тысяч пятьсот семьдесят три'])]
    #[TestWith([3120572, 0, 'три миллиона сто двадцать тысяч пятьсот семьдесят две'])]
    #[TestWith([3120571, 2, 'три миллиона сто двадцать тысяч пятьсот семьдесят одно'])]
    #[TestWith([3120512, 2, 'три миллиона сто двадцать тысяч пятьсот двенадцать'])]
    public function testNumerals(int $str, int $gender, string $expected)
    {
        $result = Text::numerals($str, $gender);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода translit()
     * @param string $string исходная строка для преобразования - кириллицей
     * @param string $expected Ожидаемое значение
     */
    #[TestWith(['Тестовая строка для проверки ожидаемого значения', 'Testovaya stroka dl\'a proverki ojidaemogo znacheniya'])]
    public function testTranslit(string $string, string $expected)
    {
        $result = Text::translit($string);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода convertLayout()
     * @param string $string исходная строка для преобразования
     * @param string $expected Ожидаемое значение
     */
    #[TestWith(['Ghjcnj ntrcn', 'Просто текст'])]
    #[TestWith(['Просто текст', 'Ghjcnj ntrcn'])]
    public function testConvertLayout(string $string, string $expected)
    {
        $result = Text::convertLayout($string);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода cuttext()
     * @param string $string исходная строка
     * @param int $limit количество символов (лимит) для ограничения строки
     * @param string $overflow строка, добавляемая при превышении лимита
     * @param string $expected Ожидаемое значение
     */
    #[TestWith(['Тестовая строка', 10, ',,,', 'Тестовая,,,'])]
    #[TestWith(['Тестовая', 10, '...', 'Тестовая'])]
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
    public static function serializeXMLDataProvider()
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
     */
    #[DataProvider('serializeXMLDataProvider')]
    public function testSerializeXML($node, string $expected)
    {
        $result = Text::serializeXML($node);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода beautify()
     * @param string $string исходное имя для преобразования
     * @param string $spaceSeparator заменитель пробела
     * @param string $expected Ожидаемое значение
     */
    #[TestWith(['Тестовая строка!!!', '-', 'testovaya-stroka'])]
    public function testBeautify(string $string, string $spaceSeparator, string $expected)
    {
        $result = Text::beautify($string, $spaceSeparator);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода beautifyPhon()
     * @param string $phone исходный номер для преобразования
     * @param int $nOfDigits Количество значимых цифр в телефоне
     * @param string $expected Ожидаемое значение
     */
    #[TestWith(['+7 999 000-12-34', 10, '9990001234'])]
    public function testBeautifyPhone(string $phone, int $nOfDigits, string $expected)
    {
        $result = Text::beautifyPhone($phone, $nOfDigits);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода formatPhone()
     * @param string $phone исходный номер для преобразования
     * @param bool $useParentheses Использовать скобки вокруг кода оператора
     * @param string $mask Маска для номера
     * @param string $expected Ожидаемое значение
     */
    #[TestWith(['+7-999-1234567', false, '70000000000', '+7 999 123-45-67'])]
    #[TestWith(['12-34-56-7', true, '88000000000', '+8 (800) 123-45-67'])]
    #[TestWith(['', false, '70000000000', ''])]
    public function testFormatPhone(string $phone, bool $useParentheses, string $mask, string $expected)
    {
        $result = Text::formatPhone($phone, $useParentheses, $mask);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода formatPrice()
     * @param float $price Цена
     * @param bool $forceRemainder Принудительно выводить остаток
     * @param string $expected Ожидаемое значение
     */
    #[TestWith([1234.5, true, '1 234,50'])]
    #[TestWith([1234.5, false, '1 234,50'])]
    #[TestWith([1234, true, '1 234,00'])]
    #[TestWith([1234, false, '1 234'])]
    public function testFormatPrice(float $price, bool $forceRemainder, string $expected)
    {
        $result = Text::formatPrice($price, $forceRemainder);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода renderTemplate
     * @param string $template Строка шаблона
     * @param array $data Данные
     * @param string|null $engine Движок (название) рендерера
     * @param string $expected Ожидаемое значение
     */
    #[TestWith(['Test {{aaa}}', ['aaa' => 'bbb'], 'twig', 'Test bbb'])]
    #[TestWith(['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', ['aaa' => true], 'twig', 'Is aaa'])]
    #[TestWith(['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', ['aaa' => false], 'twig', 'Is not aaa'])]
    #[TestWith(['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', [], 'twig', 'Is not aaa'])]
    #[TestWith(['Test {{aaa}}', ['aaa' => 'bbb'], 'mustache', 'Test bbb'])]
    #[TestWith(['{{#aaa}}Is aaa{{/aaa}}', ['aaa' => true], 'mustache', 'Is aaa'])]
    #[TestWith(['{{#aaa}}Is aaa{{/aaa}}', ['aaa' => false], 'mustache', ''])]
    public function testRenderTemplate(string $template, array $data, string $engine, string $expected)
    {
        $result = Text::renderTemplate($template, $data, $engine);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода inlineCSS
     * @param string $string Исходная строка
     * @param string $expected Ожидаемое значение
     */
    #[TestWith([
        '<style>.aaa { color: red; }</style><div class="aaa">aaa</div>',
        '<div class="aaa" style="color: red;">aaa</div>',
    ])]
    #[TestWith([
        '<html><head><style>.aaa { color: red; }</style></head><body><div class="aaa">aaa</div></body></html>',
        '<!DOCTYPE html>' . "\n" .
        '<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head><body><div class="aaa" style="color: red;">aaa</div></body></html>' . "\n"
    ])]
    public function testInlineCSS(string $string, string $expected)
    {
        $result = Text::inlineCSS($string);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест метода getClassCaption
     */
    public function testGetClassCaption()
    {
        $result = Text::getClassCaption(Text::class);

        $this->assertEquals('Класс работы с текстом', $result);
    }
}
