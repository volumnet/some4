<?php
/**
 * Сущность без первичного ключа
 */
declare(strict_types=1);

namespace SOME;

use Error;
use Exception;
use SOME\SOME;
use SOME\Text;
use RAAS\Attachment;
use RAAS\Application;
use RAAS\User as RAASUser;

/**
 * Класс конкретной сущности
 */
class ConcreteEntity extends SOME
{
    protected static $tablename = 'tmp_entities';

    protected static $defaultOrderBy = "priority";

    protected static $objectCascadeDelete = true;

    protected static $references = [
        'parent' => [
            'FK' => 'pid',
            'classname' => ConcreteEntity::class,
            'cascade' => true
        ],
    ];

    protected static $parents = [
        'parents' => 'parent'
    ];

    protected static $children = [
        'children' => [
            'classname' => ConcreteEntity::class,
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
