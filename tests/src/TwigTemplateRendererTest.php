<?php
/**
 * Тест для класса TwigTemplateRenderer
 */
namespace SOME;

class MustacheTemplateRendererTest extends BaseTest
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
            ['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', ['aaa' => true], 'Is aaa'],
            ['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', ['aaa' => false], 'Is not aaa'],
            ['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', [], 'Is not aaa'],
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
        $renderer = new TwigTemplateRenderer();

        $result = $renderer->render($template, $data);

        $this->assertEquals($expected, $result);
    }
}
