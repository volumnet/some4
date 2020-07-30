<?php
/**
 * Тестовая страница с полем $aliases
 */
namespace RAAS\CMS;

use RAAS\User as RAASUser;

class PageWithAlias extends Page
{
    protected static $aliases = ['title' => 'name'];

    protected static $references = [
        'parent' => [
            'FK' => 'pid',
            'classname' => self::class,
            'cascade' => true
        ],
        'author' => [
            'FK' => 'author_id',
            'classname' => RAASUser::class,
            'cascade' => false
        ],
        'editor' => [
            'FK' => 'editor_id',
            'classname' => RAASUser::class,
            'cascade' => false
        ],
        'Template' => [
            'FK' => 'template',
            'classname' => Template::class,
            'cascade' => false
        ],
    ];
}
