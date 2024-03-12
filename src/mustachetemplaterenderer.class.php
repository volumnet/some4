<?php
/**
 * Рендерер шаблонов Mustache
 */
namespace SOME;

use Mustache_Engine;

/**
 * Класс рендерера шаблонов Mustache
 */
class MustacheTemplateRenderer extends AbstractTemplateRenderer
{
    public function render(string $template, array $data = []): string
    {
        $mustache = new Mustache_Engine();
        $result = $mustache->render($template, $data);
        return $result;
    }
}
