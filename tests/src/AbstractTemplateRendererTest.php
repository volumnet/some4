<?php
/**
 * Тест для класса AbstractTemplateRenderer
 */
namespace SOME;

class AbstractTemplateRendererTest extends BaseTest
{
    /**
     * Провайдер данных для метода testSpawn
     * @return array <pre><code>array<[
     *     string Движок,
     *     string|null Ожидаемый класс,
     *     bool? Выбрасывает исключение
     * ]></code></pre>
     */
    public function spawnDataProvider(): array
    {
        return [
            ['twig', TwigTemplateRenderer::class],
            ['mustache', MustacheTemplateRenderer::class],
            ['aaa', null, true],
        ];
    }

    /**
     * Тестирует метод spawn
     * @param string $engine Движок
     * @param string $expectedClass Ожидаемый класс
     * @param boolean $withException Выбрасывает исключение
     * @dataProvider spawnDataProvider
     */
    public function testSpawn(string $engine, string $expectedClass = null, $withException = false)
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
