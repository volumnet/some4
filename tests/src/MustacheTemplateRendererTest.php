<?php
/**
 * Тест для класса MustacheTemplateRenderer
 */
namespace SOME;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DataProvider;
use PHPUnit\Framework\Attributes\TestWith;

/**
 * Тест для класса MustacheTemplateRenderer
 */
#[CoversClass(MustacheTemplateRenderer::class)]
class MustacheTemplateRendererTest extends BaseTest
{
    /**
     * Тестирует метод render
     * @param string $template Шаблон
     * @param array $data Данные
     * @param string $expected Ожидаемая строка
     */
    #[TestWith(['Test {{aaa}}', ['aaa' => 'bbb'], 'Test bbb'])]
    #[TestWith(['{{#aaa}}Is aaa{{/aaa}}', ['aaa' => true], 'Is aaa'])]
    #[TestWith(['{{#aaa}}Is aaa{{/aaa}}', ['aaa' => false], ''])]
    public function testRender(string $template, array $data, string $expected)
    {
        $renderer = new MustacheTemplateRenderer();

        $result = $renderer->render($template, $data);

        $this->assertEquals($expected, $result);
    }
}
