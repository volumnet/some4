<?php
/**
 * Рендерер шаблонов Twig
 */
declare(strict_types=1);

namespace SOME;

use Twig\Environment;
use Twig\Loader\ArrayLoader;

/**
 * Класс рендерера шаблонов Twig
 */
class TwigTemplateRenderer extends AbstractTemplateRenderer
{
    public function render(string $template, array $data = []): string
    {
        $twig = new Environment(new ArrayLoader(['description' => $template]));
        $result = $twig->render('description', $data);
        return $result;
    }
}
