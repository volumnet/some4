<?php
/**
 * Тестовая страница с некаскадным обновлением
 */
namespace RAAS\CMS;

use SOME\SOME;

class PageWithoutCascadeUpdate extends SOME // Наследуем от SOME, а не Page, чтобы не подтягивались ссылки на Page
{
    protected static $tablename = 'cms_pages';

    protected static $defaultOrderBy = "priority";

    protected static $objectCascadeUpdate = false;

    protected static $references = [
        'parent' => [
            'FK' => 'pid',
            'classname' => PageWithoutCascadeUpdate::class,
            'cascade' => false
        ],
    ];

    protected static $children = [
        'children' => [
            'classname' => PageWithoutCascadeUpdate::class,
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
