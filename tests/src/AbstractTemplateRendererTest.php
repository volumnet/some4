<?php
/**
 * Тест для класса AbstractTemplateRenderer
 */
namespace SOME;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DataProvider;
use PHPUnit\Framework\Attributes\TestWith;

/**
 * Тест для класса AbstractTemplateRenderer
 */
#[CoversClass(AbstractTemplateRenderer::class)]
class AbstractTemplateRendererTest extends BaseTest
{
    /**
     * Тестирует метод spawn
     * @param string $engine Движок
     * @param string $expectedClass Ожидаемый класс
     * @param boolean $withException Выбрасывает исключение
     */
    #[TestWith(['twig', TwigTemplateRenderer::class])]
    #[TestWith(['mustache', MustacheTemplateRenderer::class])]
    #[TestWith(['aaa', null, true])]
    public function testSpawn(string $engine, ?string $expectedClass = null, $withException = false)
    {
        if ($withException) {
            $this->expectException(Exception::class);
        }
        $result = AbstractTemplateRenderer::spawn($engine);
        if (!$withException) {
            $this->assertInstanceOf($expectedClass, $result);
        }
    }
}
