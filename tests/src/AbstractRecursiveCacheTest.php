<?php
/**
 * Файл теста абстрактного рекурсивного кэша
 */
namespace SOME;

use SOME\Pages;

/**
 * Класс теста абстрактного рекурсивного кэша
 */
class AbstractRecursiveCacheTest extends BaseTmpDBTest
{
    /**
     * Проверяет, является ли переменная индексированным массивом
     * (допускается пустая строка в качестве ключа)
     * @param mixed $array Переменная для проверки
     * @return bool
     */
    public function isIndexedArray($array)
    {
        if (!is_array($array)) {
            return false;
        }
        $keys = array_keys($array);
        $numericKeys = array_filter($keys, function ($x) {
            return is_numeric($x) || ($x === '');
        });
        return (count($numericKeys) == count($keys));
    }


    /**
     * Проверяет свойство $cache
     */
    public function testCache()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->cache;

        $this->assertEquals('Услуга 2', $result[5]['name']);
    }


    /**
     * Проверяет свойство parentId
     */
    public function testParentId()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->parentId;

        $this->assertEquals(17, $result['18']);
        $this->assertEquals(0, $result['1']);
        $this->assertNull($result['0'] ?? null);
    }


    /**
     * Проверяет свойство parentsIds
     */
    public function testParentsIds()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->parentsIds;

        $this->assertEquals([1, 15, 16, 17], array_values($result['18']));
        $this->assertEquals([1, 15, 16, 17], array_keys($result['18']));
        $this->assertEquals(['1' => 1], $result['2']);
        $this->assertEquals([], $result['1']);
        $this->assertNull($result['0'] ?? null);
    }


    /**
     * Проверяет свойство childrenIds
     */
    public function testChildrenIds()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->childrenIds;

        $this->assertEquals([18, 19, 20], array_values($result['17']));
        $this->assertEquals([18, 19, 20], array_keys($result['17']));
        $this->assertEquals([], $result['2']);
        $this->assertEquals([
            2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33
        ], array_values($result['1']));
        $this->assertEquals([
            2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33
        ], array_keys($result['1']));
        $this->assertEquals(['1' => 1], $result['0']);
    }


    /**
     * Проверяет свойство allChildrenIds
     */
    public function testAllChildrenIds()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->allChildrenIds;

        $this->assertEquals([18, 19, 20], array_values($result['17']));
        $this->assertEquals([18, 19, 20], array_keys($result['17']));
        $this->assertEquals([17, 21, 22, 18, 19, 20], array_values($result['16']));
        $this->assertEquals([17, 21, 22, 18, 19, 20], array_keys($result['16']));
        $this->assertEquals([], $result['2']);
        $this->assertEquals([
            1,
            2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
            4, 5, 6, 26, 28, 16, 23, 24,
            17, 21, 22,
            18, 19, 20,
        ], array_values($result['0']));
        $this->assertEquals([
            1,
            2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
            4, 5, 6, 26, 28, 16, 23, 24,
            17, 21, 22,
            18, 19, 20,
        ], array_keys($result['0']));
    }


    /**
     * Тест получения неизвестного свойства
     */
    public function testUndefinedProperty()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->abc;

        $this->assertNull($result);
    }


    /**
     * Тест получения ID# из данных
     */
    public function testCanonizeId()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->canonizeId(18);

        $this->assertEquals(18, $result);
    }


    /**
     * Тест получения ID# из данных - случай с передачей SOME
     */
    public function testCanonizeIdWithSOME()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->canonizeId(new ConcreteEntity(18));

        $this->assertEquals(18, $result);
    }


    /**
     * Тест получения ID# из набора данных
     */
    public function testCanonizeIds()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->canonizeIds([
            'aaa' => 18,
            'bbb' => new ConcreteEntity(15),
            'ccc' => new ConcreteEntity(20),
        ]);

        $this->assertEquals(['aaa' => 18, 'bbb' => 15, 'ccc' => 20], $result);
    }


    /**
     * Тест обновления всех данных кэша
     */
    public function testRefresh()
    {
        $cache = ConcreteRecursiveCache::i();
        $entity = new ConcreteEntity(15);

        $entity->urn = 'production';
        $entity->commit();
        $result = $cache->cache[15];

        $this->assertEquals('catalog', $result['urn']);

        $cache->refresh();
        $result = $cache->cache[15];

        $this->assertEquals('production', $result['urn']);

        $entity->urn = 'catalog';
        $entity->commit();
        $cache->refresh();
    }


    /**
     * Тест получения набора сущностей по ID#
     */
    public function testGetArraySet()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getArraySet(['aaa' => 15, 'bbb' => 18, 'ccc' => 20]);
        $result = array_map(function ($x) {
            return $x->urn;
        }, $result);

        $this->assertEquals(['aaa' => 'catalog', 'bbb' => 'category111', 'ccc' => 'category113'], $result);
    }


    /**
     * Тест получения кэша набора сущностей по ID#
     */
    public function testGetCacheSet()
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getArraySet(['aaa' => 15, 'bbb' => 18, 'ccc' => 20]);
        $result = array_map(function ($x) {
            return $x['urn'];
        }, $result);

        $this->assertEquals(['aaa' => 'catalog', 'bbb' => 'category111', 'ccc' => 'category113'], $result);
    }


    /**
     * Провайдер данных для функции testGetParentId
     */
    public function getParentIdDataProvider()
    {
        static::checkSetUp();
        return [
            [18, true, 17],
            [18, false, 17],
            [new ConcreteEntity(18), true, 17],
            [new ConcreteEntity(18), false, 17],
            [1, true, 0],
            [1, false, 0],
            [new ConcreteEntity(1), true, 0],
            [new ConcreteEntity(1), false, 0],
            [0, true, null],
            [0, false, null],
            [new ConcreteEntity(), true, null],
            [new ConcreteEntity(), false, null],
            [[4, 26, 24, 23], true, ['4' => 3, '26' => 14, '24' => 15, '23' => 15]],
            [[4, 26, 24, 23], false, [3, 14, 15]],
            [
                [new ConcreteEntity(4), new ConcreteEntity(26), new ConcreteEntity(24), new ConcreteEntity(23)],
                true,
                ['4' => 3, '26' => 14, '24' => 15, '23' => 15]
            ],
            [
                [new ConcreteEntity(4), new ConcreteEntity(26), new ConcreteEntity(24), new ConcreteEntity(23)],
                false,
                [3, 14, 15]
            ],
        ];
    }


    /**
     * Тест получения родительского ID#
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getParentIdDataProvider
     */
    public function testGetParentId($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getParentId($data, $assoc);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения родительской сущности
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getParentIdDataProvider
     */
    public function testGetParent($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getParent($data, $assoc);
        if (is_array($result)) {
            $result = array_map(function ($x) {
                return $x->id;
            }, $result);
        } else {
            $result = $result->id;
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения кэша родительской сущности
     * @param SOME|int|SOME[]int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getParentIdDataProvider
     */
    public function testGetParentCache($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getParentCache($data, $assoc);
        if ($this->isIndexedArray($result)) {
            $result = array_map(function ($x) {
                return $x['id'];
            }, $result);
        } elseif ($result) {
            $result = $result['id'];
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для функции testGetParentsIds
     */
    public function getParentsIdsDataProvider()
    {
        static::checkSetUp();
        return [
            [
                18,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1, '15' => 15, '16' => 16, '17' => 17]
            ],
            [
                18,
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1, '15' => 15, '16' => 16, '17' => 17]
            ],
            [
                18,
                AbstractRecursiveCache::ASSOC_OUTER,
                [1, 15, 16, 17]
            ],
            [
                18,
                AbstractRecursiveCache::ASSOC_NONE,
                [1, 15, 16, 17]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_OUTER,
                [1]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_NONE,
                [1]
            ],
            [
                1,
                AbstractRecursiveCache::ASSOC_BOTH,
                []
            ],
            [
                1,
                AbstractRecursiveCache::ASSOC_INNER,
                []
            ],
            [
                1,
                AbstractRecursiveCache::ASSOC_OUTER,
                []
            ],
            [
                1,
                AbstractRecursiveCache::ASSOC_NONE,
                []
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_BOTH,
                []
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_INNER,
                []
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_OUTER,
                []
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_NONE,
                []
            ],
            [
                new ConcreteEntity(18),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1, '15' => 15, '16' => 16, '17' => 17]
            ],
            [
                new ConcreteEntity(18),
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1, '15' => 15, '16' => 16, '17' => 17]
            ],
            [
                new ConcreteEntity(18),
                AbstractRecursiveCache::ASSOC_OUTER,
                [1, 15, 16, 17]
            ],
            [
                new ConcreteEntity(18),
                AbstractRecursiveCache::ASSOC_NONE,
                [1, 15, 16, 17]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_OUTER,
                [1]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_NONE,
                [1]
            ],
            [
                new ConcreteEntity(1),
                AbstractRecursiveCache::ASSOC_BOTH,
                []
            ],
            [
                new ConcreteEntity(1),
                AbstractRecursiveCache::ASSOC_INNER,
                []
            ],
            [
                new ConcreteEntity(1),
                AbstractRecursiveCache::ASSOC_OUTER,
                []
            ],
            [
                new ConcreteEntity(1),
                AbstractRecursiveCache::ASSOC_NONE,
                []
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_BOTH,
                []
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_INNER,
                []
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_OUTER,
                []
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_NONE,
                []
            ],
            [
                [18, 2, 1, 0],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '18' => ['1' => 1, '15' => 15, '16' => 16, '17' => 17],
                    '2' => ['1' => 1],
                    '1' => [],
                    '0' => [],
                ]
            ],
            [
                [18, 2, 1, 0],
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '1' => 1, '15' => 15, '16' => 16, '17' => 17
                ]
            ],
            [
                [18, 2, 1, 0],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '18' => [1, 15, 16, 17],
                    '2' => [1],
                    '1' => [],
                    '0' => [],
                ]
            ],
            [
                [18, 2, 1, 0],
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    1, 15, 16, 17
                ]
            ],
            [
                [new ConcreteEntity(18), new ConcreteEntity(2), new ConcreteEntity(1), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '18' => ['1' => 1, '15' => 15, '16' => 16, '17' => 17],
                    '2' => ['1' => 1],
                    '1' => [],
                    '' => [],
                ]
            ],
            [
                [new ConcreteEntity(18), new ConcreteEntity(2), new ConcreteEntity(1), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '1' => 1, '15' => 15, '16' => 16, '17' => 17
                ]
            ],
            [
                [new ConcreteEntity(18), new ConcreteEntity(2), new ConcreteEntity(1), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '18' => [1, 15, 16, 17],
                    '2' => [1],
                    '1' => [],
                    '' => [],
                ]
            ],
            [
                [new ConcreteEntity(18), new ConcreteEntity(2), new ConcreteEntity(1), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    1, 15, 16, 17
                ]
            ],
        ];
    }


    /**
     * Тест получения ID# родительских сущностей
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (битовая маска)
     *                   0 - нет
     *                   1 - на уровне дочерних ID#
     *                   2 - на уровне родительских ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getParentsIdsDataProvider
     */
    public function testGetParentsIds($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getParentsIds($data, $assoc);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения родительских сущностей
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getParentsIdsDataProvider
     */
    public function testGetParents($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getParents($data, $assoc);
        if (is_array($result)) {
            $result = array_map(function ($x) {
                if (is_array($x)) {
                    return array_map(function ($y) {
                        return $y->id;
                    }, $x);
                } else {
                    return $x->id;
                }
            }, $result);
        } else {
            $result = $result->id;
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения кэша родительских сущностей
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getParentsIdsDataProvider
     */
    public function testGetParentsCache($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getParentsCache($data, $assoc);
        if ($this->isIndexedArray($result)) {
            $result = array_map(function ($x) {
                if ($this->isIndexedArray($x)) {
                    return array_map(function ($y) {
                        return $y['id'];
                    }, $x);
                } else {
                    return $x['id'];
                }
            }, $result);
        } elseif ($result) {
            $result = $result['id'];
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для функции testGetSelfAndParentsIds
     */
    public function getSelfAndParentsIdsDataProvider()
    {
        static::checkSetUp();
        return [
            [
                18,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1, '15' => 15, '16' => 16, '17' => 17, '18' => 18]
            ],
            [
                18,
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1, '15' => 15, '16' => 16, '17' => 17, '18' => 18]
            ],
            [
                18,
                AbstractRecursiveCache::ASSOC_OUTER,
                [1, 15, 16, 17, 18]
            ],
            [
                18,
                AbstractRecursiveCache::ASSOC_NONE,
                [1, 15, 16, 17, 18]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1, '2' => 2]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1, '2' => 2]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_OUTER,
                [1, 2]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_NONE,
                [1, 2]
            ],
            [
                1,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1]
            ],
            [
                1,
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1]
            ],
            [
                1,
                AbstractRecursiveCache::ASSOC_OUTER,
                [1]
            ],
            [
                1,
                AbstractRecursiveCache::ASSOC_NONE,
                [1]
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_BOTH,
                []
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_INNER,
                []
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_OUTER,
                []
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_NONE,
                []
            ],
            [
                new ConcreteEntity(18),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1, '15' => 15, '16' => 16, '17' => 17, '18' => 18]
            ],
            [
                new ConcreteEntity(18),
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1, '15' => 15, '16' => 16, '17' => 17, '18' => 18]
            ],
            [
                new ConcreteEntity(18),
                AbstractRecursiveCache::ASSOC_OUTER,
                [1, 15, 16, 17, 18]
            ],
            [
                new ConcreteEntity(18),
                AbstractRecursiveCache::ASSOC_NONE,
                [1, 15, 16, 17, 18]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1, '2' => 2]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1, '2' => 2]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_OUTER,
                [1, 2]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_NONE,
                [1, 2]
            ],
            [
                new ConcreteEntity(1),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1]
            ],
            [
                new ConcreteEntity(1),
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1]
            ],
            [
                new ConcreteEntity(1),
                AbstractRecursiveCache::ASSOC_OUTER,
                [1]
            ],
            [
                new ConcreteEntity(1),
                AbstractRecursiveCache::ASSOC_NONE,
                [1]
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_BOTH,
                []
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_INNER,
                []
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_OUTER,
                []
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_NONE,
                []
            ],
            [
                [18, 2, 1, 0],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '18' => ['1' => 1, '15' => 15, '16' => 16, '17' => 17, '18' => 18],
                    '2' => ['1' => 1, '2' => 2],
                    '1' => ['1' => 1],
                    '0' => [],
                ]
            ],
            [
                [18, 2, 1, 0],
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '1' => 1, '15' => 15, '16' => 16, '17' => 17, '18' => 18, '2' => 2
                ]
            ],
            [
                [18, 2, 1, 0],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '18' => [1, 15, 16, 17, 18],
                    '2' => [1, 2],
                    '1' => [1],
                    '0' => [],
                ]
            ],
            [
                [18, 2, 1, 0],
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    1, 15, 16, 17, 18, 2
                ]
            ],
            [
                [new ConcreteEntity(18), new ConcreteEntity(2), new ConcreteEntity(1), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '18' => ['1' => 1, '15' => 15, '16' => 16, '17' => 17, '18' => 18],
                    '2' => ['1' => 1, '2' => 2],
                    '1' => ['1' => 1],
                    '' => [],
                ]
            ],
            [
                [new ConcreteEntity(18), new ConcreteEntity(2), new ConcreteEntity(1), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '1' => 1, '15' => 15, '16' => 16, '17' => 17, '18' => 18, '2' => 2
                ]
            ],
            [
                [new ConcreteEntity(18), new ConcreteEntity(2), new ConcreteEntity(1), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '18' => [1, 15, 16, 17, 18],
                    '2' => [1, 2],
                    '1' => [1],
                    '' => [],
                ]
            ],
            [
                [new ConcreteEntity(18), new ConcreteEntity(2), new ConcreteEntity(1), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    1, 15, 16, 17, 18, 2
                ]
            ],
        ];
    }


    /**
     * Тест получения ID# собственной и родительских сущностей
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (битовая маска)
     *                   0 - нет
     *                   1 - на уровне дочерних ID#
     *                   2 - на уровне родительских ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getSelfAndParentsIdsDataProvider
     */
    public function testGetSelfAndParentsIds($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getSelfAndParentsIds($data, $assoc);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения собственной и родительских сущностей
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getSelfAndParentsIdsDataProvider
     */
    public function testGetSelfAndParents($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getSelfAndParents($data, $assoc);
        if (is_array($result)) {
            $result = array_map(function ($x) {
                if (is_array($x)) {
                    return array_map(function ($y) {
                        return $y->id;
                    }, $x);
                } else {
                    return $x->id;
                }
            }, $result);
        } else {
            $result = $result->id;
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения кэшей собственной и родительских сущностей
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getSelfAndParentsIdsDataProvider
     */
    public function testGetSelfAndParentsCache($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getSelfAndParentsCache($data, $assoc);
        if ($this->isIndexedArray($result)) {
            $result = array_map(function ($x) {
                if ($this->isIndexedArray($x)) {
                    return array_map(function ($y) {
                        return $y['id'];
                    }, $x);
                } else {
                    return $x['id'];
                }
            }, $result);
        } elseif ($result) {
            $result = $result['id'];
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для функции testGetChildrenIds
     */
    public function getChildrenIdsDataProvider()
    {
        static::checkSetUp();
        return [
            [
                17,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['18' => 18, '19' => 19, '20' => 20]
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_INNER,
                ['18' => 18, '19' => 19, '20' => 20]
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_OUTER,
                [18, 19, 20]
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_NONE,
                [18, 19, 20]
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_BOTH,
                []
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_INNER,
                []
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_OUTER,
                []
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_NONE,
                []
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1]
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1]
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_OUTER,
                [1]
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_NONE,
                [1]
            ],
            [
                [17, 2, 0],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '17' => ['18' => 18, '19' => 19, '20' => 20],
                    '2' => [],
                    '0' => ['1' => 1]
                ]
            ],
            [
                [17, 2, 0],
                AbstractRecursiveCache::ASSOC_INNER,
                ['18' => 18, '19' => 19, '20' => 20, '1' => 1]
            ],
            [
                [17, 2, 0],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '17' => [18, 19, 20],
                    '2' => [],
                    '0' => [1]
                ]
            ],
            [
                [17, 2, 0],
                AbstractRecursiveCache::ASSOC_NONE,
                [18, 19, 20, 1]
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['18' => 18, '19' => 19, '20' => 20]
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_INNER,
                ['18' => 18, '19' => 19, '20' => 20]
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_OUTER,
                [18, 19, 20]
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_NONE,
                [18, 19, 20]
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_BOTH,
                []
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_INNER,
                []
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_OUTER,
                []
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_NONE,
                []
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['1' => 1]
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_INNER,
                ['1' => 1]
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_OUTER,
                [1]
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_NONE,
                [1]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '17' => ['18' => 18, '19' => 19, '20' => 20],
                    '2' => [],
                    '' => ['1' => 1]
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_INNER,
                ['18' => 18, '19' => 19, '20' => 20, '1' => 1]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '17' => [18, 19, 20],
                    '2' => [],
                    '' => [1]
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_NONE,
                [18, 19, 20, 1]
            ],
        ];
    }


    /**
     * Тест получения ID# дочерних сущностей
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getChildrenIdsDataProvider
     */
    public function testGetChildrenIds($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getChildrenIds($data, $assoc);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения дочерних сущностей
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @dataProvider getChildrenIdsDataProvider
     */
    public function testGetChildren($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getChildren($data, $assoc);
        if (is_array($result)) {
            $result = array_map(function ($x) {
                if (is_array($x)) {
                    return array_map(function ($y) {
                        return $y->id;
                    }, $x);
                } else {
                    return $x->id;
                }
            }, $result);
        } else {
            $result = $result->id;
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения кэша дочерних сущностей
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @dataProvider getChildrenIdsDataProvider
     */
    public function testGetChildrenCache($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getChildrenCache($data, $assoc);
        if ($this->isIndexedArray($result)) {
            $result = array_map(function ($x) {
                if ($this->isIndexedArray($x)) {
                    return array_map(function ($y) {
                        return $y['id'];
                    }, $x);
                } else {
                    return $x['id'];
                }
            }, $result);
        } elseif ($result) {
            $result = $result['id'];
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для функции testGetAllChildrenIds
     */
    public function getAllChildrenIdsDataProvider()
    {
        static::checkSetUp();
        return [
            [
                17,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['18' => 18, '19' => 19, '20' => 20],
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_INNER,
                ['18' => 18, '19' => 19, '20' => 20],
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_OUTER,
                [18, 19, 20],
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_NONE,
                [18, 19, 20],
            ],
            [
                16,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                16,
                AbstractRecursiveCache::ASSOC_INNER,
                ['17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                16,
                AbstractRecursiveCache::ASSOC_OUTER,
                [17, 21, 22, 18, 19, 20],
            ],
            [
                16,
                AbstractRecursiveCache::ASSOC_NONE,
                [17, 21, 22, 18, 19, 20],
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_BOTH,
                [],
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_INNER,
                [],
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_OUTER,
                [],
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_NONE,
                [],
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,

                    '17' => 17, '21' => 21, '22' => 22,

                    '18' => 18, '19' => 19, '20' => 20,
                ],
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,

                    '17' => 17, '21' => 21, '22' => 22,

                    '18' => 18, '19' => 19, '20' => 20,
                ],
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    1,
                    2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
                    4, 5, 6, 26, 28, 16, 23, 24,
                    17, 21, 22,
                    18, 19, 20,
                ],
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    1,
                    2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
                    4, 5, 6, 26, 28, 16, 23, 24,
                    17, 21, 22,
                    18, 19, 20,
                ],
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['18' => 18, '19' => 19, '20' => 20],
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_INNER,
                ['18' => 18, '19' => 19, '20' => 20],
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_OUTER,
                [18, 19, 20],
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_NONE,
                [18, 19, 20],
            ],
            [
                new ConcreteEntity(16),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                new ConcreteEntity(16),
                AbstractRecursiveCache::ASSOC_INNER,
                ['17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                new ConcreteEntity(16),
                AbstractRecursiveCache::ASSOC_OUTER,
                [17, 21, 22, 18, 19, 20],
            ],
            [
                new ConcreteEntity(16),
                AbstractRecursiveCache::ASSOC_NONE,
                [17, 21, 22, 18, 19, 20],
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_BOTH,
                [],
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_INNER,
                [],
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_OUTER,
                [],
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_NONE,
                [],
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,

                    '17' => 17, '21' => 21, '22' => 22,

                    '18' => 18, '19' => 19, '20' => 20,
                ],
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,

                    '17' => 17, '21' => 21, '22' => 22,

                    '18' => 18, '19' => 19, '20' => 20,
                ],
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    1,
                    2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
                    4, 5, 6, 26, 28, 16, 23, 24,
                    17, 21, 22,
                    18, 19, 20,
                ],
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    1,
                    2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
                    4, 5, 6, 26, 28, 16, 23, 24,
                    17, 21, 22,
                    18, 19, 20,
                ],
            ],
            [
                [17, 16, 2, 0],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '17' => ['18' => 18, '19' => 19, '20' => 20],
                    '16' => ['17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
                    '2' => [],
                    '0' => [
                        '1' => 1,

                        '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                        '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                        '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                        '32' => 32, '33' => 33,

                        '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                        '16' => 16, '23' => 23, '24' => 24,

                        '17' => 17, '21' => 21, '22' => 22,

                        '18' => 18, '19' => 19, '20' => 20,
                    ],
                ]
            ],
            [
                [17, 16, 2, 0],
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '18' => 18, '19' => 19, '20' => 20,
                    '17' => 17, '21' => 21, '22' => 22,
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,
                ]
            ],
            [
                [17, 16, 2, 0],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '17' => [18, 19, 20],
                    '16' => [17, 21, 22, 18, 19, 20],
                    '2' => [],
                    '0' => [
                        1,

                        2, 3, 7, 8, 9, 10,
                        11, 12, 13, 14, 15,
                        25, 27, 29, 30, 31,
                        32, 33,

                        4, 5, 6, 26, 28,
                        16, 23, 24,

                        17, 21, 22,

                        18, 19, 20,
                    ],
                ]
            ],
            [
                [17, 16, 2, 0],
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    18, 19, 20,
                    17, 21, 22,
                    1,

                    2, 3, 7, 8, 9, 10,
                    11, 12, 13, 14, 15,
                    25, 27, 29, 30, 31,
                    32, 33,

                    4, 5, 6, 26, 28,
                    16, 23, 24,
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(16), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '17' => ['18' => 18, '19' => 19, '20' => 20],
                    '16' => ['17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
                    '2' => [],
                    '' => [
                        '1' => 1,

                        '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                        '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                        '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                        '32' => 32, '33' => 33,

                        '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                        '16' => 16, '23' => 23, '24' => 24,

                        '17' => 17, '21' => 21, '22' => 22,

                        '18' => 18, '19' => 19, '20' => 20,
                    ],
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(16), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '18' => 18, '19' => 19, '20' => 20,
                    '17' => 17, '21' => 21, '22' => 22,
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(16), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '17' => [18, 19, 20],
                    '16' => [17, 21, 22, 18, 19, 20],
                    '2' => [],
                    '' => [
                        1,

                        2, 3, 7, 8, 9, 10,
                        11, 12, 13, 14, 15,
                        25, 27, 29, 30, 31,
                        32, 33,

                        4, 5, 6, 26, 28,
                        16, 23, 24,

                        17, 21, 22,

                        18, 19, 20,
                    ],
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(16), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    18, 19, 20,
                    17, 21, 22,
                    1,

                    2, 3, 7, 8, 9, 10,
                    11, 12, 13, 14, 15,
                    25, 27, 29, 30, 31,
                    32, 33,

                    4, 5, 6, 26, 28,
                    16, 23, 24,
                ]
            ],
        ];
    }


    /**
     * Тест получения ID# дочерних сущностей всех уровней
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getAllChildrenIdsDataProvider
     */
    public function testGetAllChildrenIds($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getAllChildrenIds($data, $assoc);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения дочерних сущностей всех уровней
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @dataProvider getAllChildrenIdsDataProvider
     */
    public function testGetAllChildren($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getAllChildren($data, $assoc);
        if (is_array($result)) {
            $result = array_map(function ($x) {
                if (is_array($x)) {
                    return array_map(function ($y) {
                        return $y->id;
                    }, $x);
                } else {
                    return $x->id;
                }
            }, $result);
        } else {
            $result = $result->id;
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения кэшей дочерних сущностей всех уровней
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @dataProvider getAllChildrenIdsDataProvider
     */
    public function testGetAllChildrenCache($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getAllChildrenCache($data, $assoc);
        if ($this->isIndexedArray($result)) {
            $result = array_map(function ($x) {
                if ($this->isIndexedArray($x)) {
                    return array_map(function ($y) {
                        return $y['id'];
                    }, $x);
                } else {
                    return $x['id'];
                }
            }, $result);
        } elseif ($result) {
            $result = $result['id'];
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Провайдер данных для функции testGetSelfAndChildrenIds
     */
    public function getSelfAndChildrenIdsDataProvider()
    {
        static::checkSetUp();
        return [
            [
                17,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['17' => 17, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_INNER,
                ['17' => 17, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_OUTER,
                [17, 18, 19, 20],
            ],
            [
                17,
                AbstractRecursiveCache::ASSOC_NONE,
                [17, 18, 19, 20],
            ],
            [
                16,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['16' => 16, '17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                16,
                AbstractRecursiveCache::ASSOC_INNER,
                ['16' => 16, '17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                16,
                AbstractRecursiveCache::ASSOC_OUTER,
                [16, 17, 21, 22, 18, 19, 20],
            ],
            [
                16,
                AbstractRecursiveCache::ASSOC_NONE,
                [16, 17, 21, 22, 18, 19, 20],
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_BOTH,
                ['2' => 2],
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_INNER,
                ['2' => 2],
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_OUTER,
                [2],
            ],
            [
                2,
                AbstractRecursiveCache::ASSOC_NONE,
                [2],
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,

                    '17' => 17, '21' => 21, '22' => 22,

                    '18' => 18, '19' => 19, '20' => 20,
                ],
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,

                    '17' => 17, '21' => 21, '22' => 22,

                    '18' => 18, '19' => 19, '20' => 20,
                ],
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    1,
                    2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
                    4, 5, 6, 26, 28, 16, 23, 24,
                    17, 21, 22,
                    18, 19, 20,
                ],
            ],
            [
                0,
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    1,
                    2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
                    4, 5, 6, 26, 28, 16, 23, 24,
                    17, 21, 22,
                    18, 19, 20,
                ],
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['17' => 17, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_INNER,
                ['17' => 17, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_OUTER,
                [17, 18, 19, 20],
            ],
            [
                new ConcreteEntity(17),
                AbstractRecursiveCache::ASSOC_NONE,
                [17, 18, 19, 20],
            ],
            [
                new ConcreteEntity(16),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['16' => 16, '17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                new ConcreteEntity(16),
                AbstractRecursiveCache::ASSOC_INNER,
                ['16' => 16, '17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
            ],
            [
                new ConcreteEntity(16),
                AbstractRecursiveCache::ASSOC_OUTER,
                [16, 17, 21, 22, 18, 19, 20],
            ],
            [
                new ConcreteEntity(16),
                AbstractRecursiveCache::ASSOC_NONE,
                [16, 17, 21, 22, 18, 19, 20],
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_BOTH,
                ['2' => 2],
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_INNER,
                ['2' => 2],
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_OUTER,
                [2],
            ],
            [
                new ConcreteEntity(2),
                AbstractRecursiveCache::ASSOC_NONE,
                [2],
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,

                    '17' => 17, '21' => 21, '22' => 22,

                    '18' => 18, '19' => 19, '20' => 20,
                ],
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,

                    '17' => 17, '21' => 21, '22' => 22,

                    '18' => 18, '19' => 19, '20' => 20,
                ],
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    1,
                    2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
                    4, 5, 6, 26, 28, 16, 23, 24,
                    17, 21, 22,
                    18, 19, 20,
                ],
            ],
            [
                new ConcreteEntity(),
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    1,
                    2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33,
                    4, 5, 6, 26, 28, 16, 23, 24,
                    17, 21, 22,
                    18, 19, 20,
                ],
            ],
            [
                [17, 16, 2, 0],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '17' => ['17' => 17, '18' => 18, '19' => 19, '20' => 20],
                    '16' => ['16' => 16, '17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
                    '2' => ['2' => 2],
                    '0' => [
                        '1' => 1,

                        '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                        '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                        '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                        '32' => 32, '33' => 33,

                        '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                        '16' => 16, '23' => 23, '24' => 24,

                        '17' => 17, '21' => 21, '22' => 22,

                        '18' => 18, '19' => 19, '20' => 20,
                    ],
                ]
            ],
            [
                [17, 16, 2, 0],
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '17' => 17,
                    '18' => 18, '19' => 19, '20' => 20,
                    '21' => 21, '22' => 22,
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,
                ]
            ],
            [
                [17, 16, 2, 0],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '17' => [17, 18, 19, 20],
                    '16' => [16, 17, 21, 22, 18, 19, 20],
                    '2' => [2],
                    '0' => [
                        1,

                        2, 3, 7, 8, 9, 10,
                        11, 12, 13, 14, 15,
                        25, 27, 29, 30, 31,
                        32, 33,

                        4, 5, 6, 26, 28,
                        16, 23, 24,

                        17, 21, 22,

                        18, 19, 20,
                    ],
                ]
            ],
            [
                [17, 16, 2, 0],
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    17, 18, 19, 20,
                    16, 21, 22,
                    2,
                    1, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33, 4, 5, 6, 26, 28, 23, 24,
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(16), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_BOTH,
                [
                    '17' => ['17' => 17, '18' => 18, '19' => 19, '20' => 20],
                    '16' => ['16' => 16, '17' => 17, '21' => 21, '22' => 22, '18' => 18, '19' => 19, '20' => 20],
                    '2' => ['2' => 2],
                    '' => [
                        '1' => 1,

                        '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                        '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                        '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                        '32' => 32, '33' => 33,

                        '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                        '16' => 16, '23' => 23, '24' => 24,

                        '17' => 17, '21' => 21, '22' => 22,

                        '18' => 18, '19' => 19, '20' => 20,
                    ],
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(16), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_INNER,
                [
                    '17' => 17,
                    '18' => 18, '19' => 19, '20' => 20,
                    '21' => 21, '22' => 22,
                    '1' => 1,

                    '2' => 2, '3' => 3, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                    '11' => 11, '12' => 12, '13' => 13, '14' => 14, '15' => 15,
                    '25' => 25, '27' => 27, '29' => 29, '30' => 30, '31' => 31,
                    '32' => 32, '33' => 33,

                    '4' => 4, '5' => 5, '6' => 6, '26' => 26, '28' => 28,
                    '16' => 16, '23' => 23, '24' => 24,
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(16), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_OUTER,
                [
                    '17' => [17, 18, 19, 20],
                    '16' => [16, 17, 21, 22, 18, 19, 20],
                    '2' => [2],
                    '' => [
                        1,

                        2, 3, 7, 8, 9, 10,
                        11, 12, 13, 14, 15,
                        25, 27, 29, 30, 31,
                        32, 33,

                        4, 5, 6, 26, 28,
                        16, 23, 24,

                        17, 21, 22,

                        18, 19, 20,
                    ],
                ]
            ],
            [
                [new ConcreteEntity(17), new ConcreteEntity(16), new ConcreteEntity(2), new ConcreteEntity()],
                AbstractRecursiveCache::ASSOC_NONE,
                [
                    17, 18, 19, 20,
                    16, 21, 22,
                    2,
                    1, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 25, 27, 29, 30, 31, 32, 33, 4, 5, 6, 26, 28, 23, 24,
                ]
            ],
        ];
    }


    /**
     * Тест получения ID# собственных и дочерних сущностей всех уровней
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @param mixed $expected Ожидаемый результат
     * @dataProvider getSelfAndChildrenIdsDataProvider
     */
    public function testGetSelfAndChildrenIds($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getSelfAndChildrenIds($data, $assoc);

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения собственных и дочерних сущностей всех уровней
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @dataProvider getSelfAndChildrenIdsDataProvider
     */
    public function testGetSelfAndAllChildren($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getSelfAndChildren($data, $assoc);
        if (is_array($result)) {
            $result = array_map(function ($x) {
                if (is_array($x)) {
                    return array_map(function ($y) {
                        return $y->id;
                    }, $x);
                } else {
                    return $x->id;
                }
            }, $result);
        } else {
            $result = $result->id;
        }

        $this->assertEquals($expected, $result);
    }


    /**
     * Тест получения кэшей собственных и дочерних сущностей всех уровней
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @dataProvider getSelfAndChildrenIdsDataProvider
     */
    public function testGetSelfAndAllChildrenCache($data, $assoc, $expected)
    {
        $cache = ConcreteRecursiveCache::i();

        $result = $cache->getSelfAndChildrenCache($data, $assoc);
        if ($this->isIndexedArray($result)) {
            $result = array_map(function ($x) {
                if ($this->isIndexedArray($x)) {
                    return array_map(function ($y) {
                        return $y['id'];
                    }, $x);
                } else {
                    return $x['id'];
                }
            }, $result);
        } elseif ($result) {
            $result = $result['id'];
        }

        $this->assertEquals($expected, $result);
    }
}
