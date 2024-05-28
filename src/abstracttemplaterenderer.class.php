<?php
/**
 * Абстрактный рендерер шаблонов
 */
declare(strict_types=1);

namespace SOME;

/**
 * Класс абстрактного рендерера шаблонов
 */
abstract class AbstractTemplateRenderer
{
    /**
     * Возвращает экземпляр конкретного рендерера
     * @param string $engine Движок (название) рендерера
     * @throws Exception В случае, если рендерер не найден
     * @return self
     */
    public static function spawn(string $engine): self
    {
        switch ($engine) {
            case 'twig':
                return new TwigTemplateRenderer();
                break;
            case 'mustache':
                return new MustacheTemplateRenderer();
                break;
            default:
                throw new Exception('Renderer for engine "' . $engine . '" is not found');
                break;
        }
    }


    /**
     * Обрабатывает шаблон
     * @param string $template Строка шаблона
     * @param array $data Данные
     * @return string
     */
    abstract public function render(string $template, array $data = []): string;
}
