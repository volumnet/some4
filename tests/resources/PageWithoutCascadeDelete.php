<?php
/**
 * Тестовая страница без каскадного удаления
 */
namespace RAAS\CMS;

use SOME\SOME;

class PageWithoutCascadeDelete extends SOME // Наследуем от SOME, а не Page, чтобы не подтягивались ссылки на Page
{
    protected static $tablename = 'cms_pages';

    protected static $defaultOrderBy = "priority";

    protected static $objectCascadeDelete = false;

    protected static $references = [
        'parent' => [
            'FK' => 'pid',
            'classname' => PageWithoutCascadeDelete::class,
            'cascade' => true
        ],
    ];

    protected static $children = [
        'children' => [
            'classname' => PageWithoutCascadeDelete::class,
            'FK' => 'pid'
        ],
    ];
}
