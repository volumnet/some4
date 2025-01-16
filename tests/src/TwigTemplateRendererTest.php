<?php
/**
 * Тест для класса TwigTemplateRenderer
 */
namespace SOME;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DataProvider;
use PHPUnit\Framework\Attributes\TestWith;

/**
 * Тест для класса TwigTemplateRenderer
 */
#[CoversClass(TwigTemplateRenderer::class)]
class TwigTemplateRendererTest extends BaseTest
{
    /**
     * Тестирует метод render
     * @param string $template Шаблон
     * @param array $data Данные
     * @param string $expected Ожидаемая строка
     */
    #[TestWith(['Test {{aaa}}', ['aaa' => 'bbb'], 'Test bbb'])]
    #[TestWith(['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', ['aaa' => true], 'Is aaa'])]
    #[TestWith(['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', ['aaa' => false], 'Is not aaa'])]
    #[TestWith(['{% if aaa %}Is aaa{% else %}Is not aaa{% endif %}', [], 'Is not aaa'])]
    public function testRender(string $template, array $data, string $expected)
    {
        $renderer = new TwigTemplateRenderer();

        $result = $renderer->render($template, $data);

        $this->assertEquals($expected, $result);
    }
}
