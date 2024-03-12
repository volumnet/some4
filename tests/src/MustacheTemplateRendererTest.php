<?php
/**
 * Тест для класса MustacheTemplateRenderer
 */
namespace SOME;

class MustacheRendererTest extends BaseTest
{
    /**
     * Провайдер данных для метода render
     * @return array <pre><code>array<[
     *     string Шаблон,
     *     array Данные,
     * ]></code></pre>
     */
    public function renderDataProvider(): array
    {
        return [
            ['Test {{aaa}}', ['aaa' => 'bbb'], 'Test bbb'],
            ['{{#aaa}}Is aaa{{/aaa}}', ['aaa' => true], 'Is aaa'],
            ['{{#aaa}}Is aaa{{/aaa}}', ['aaa' => false], ''],
        ];
    }

    /**
     * Тестирует метод render
     * @param string $template Шаблон
     * @param array $data Данные
     * @param string $expected Ожидаемая строка
     * @dataProvider renderDataProvider
     */
    public function testRender(string $template, array $data, string $expected)
    {
        $renderer = new MustacheTemplateRenderer();

        $result = $renderer->render($template, $data);

        $this->assertEquals($expected, $result);
    }
}
