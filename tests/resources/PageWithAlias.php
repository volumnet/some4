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


    protected static $parents = [
        'parents' => 'parent',
    ];

    protected static $links = [
        'materials' => [
            'tablename' => 'cms_materials_pages_assoc',
            'field_from' => 'pid',
            'field_to' => 'id',
            'classname' => Material::class,
            'orderBy' => 'id',
        ],
        'materialsIds' => [
            'tablename' => 'cms_materials_pages_assoc',
            'field_from' => 'pid',
            'field_to' => 'id',
            'orderBy' => "id DESC",
        ],
        'materialsData' => [
            'tablename' => 'cms_materials_pages_assoc',
            'field_from' => 'pid',
            'orderBy' => "id DESC",
        ],
    ];
}
