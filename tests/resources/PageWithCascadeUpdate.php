<?php
/**
 * Тестовая страница с каскадным обновлением
 */
namespace RAAS\CMS;

use SOME\SOME;

class PageWithCascadeUpdate extends SOME // Наследуем от SOME, а не Page, чтобы не подтягивались ссылки на Page
{
    protected static $tablename = 'cms_pages';

    protected static $defaultOrderBy = "priority";

    protected static $objectCascadeUpdate = true;

    protected static $references = [
        'parent' => [
            'FK' => 'pid',
            'classname' => PageWithCascadeUpdate::class,
            'cascade' => false
        ],
    ];

    protected static $children = [
        'children' => [
            'classname' => PageWithCascadeUpdate::class,
            'FK' => 'pid'
        ],
    ];

    protected static $caches = [
        'pvis' => [
            'affected' => ['parent'],
            'sql' => "IF(parent.id, (parent.vis AND parent.pvis), 1)"
        ],
        'cache_url' => [
            'affected' => ['parent'],
            'sql' => "IF(parent.id, CONCAT(parent.cache_url, __SOME__.urn, '/'), '/')",
        ],
    ];
}
