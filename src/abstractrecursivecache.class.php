<?php
/**
 * Файл абстрактного рекурсивного кэша
 */
namespace SOME;

/**
 * Класс абстрактного рекурсивного кэша
 * @property-read array $cache <pre><code>array<
 *     string[] ID# сущности =>
 *     array<string[] => mixed> данные сущности
 * ></code></pre> Кэш данных
 * @property-read array $parentId <pre><code>array<
 *     string[] ID# дочерней сущности =>
 *     int ID# родительской сущности
 * ></code></pre> Соответствие дочерних и родительских ID#
 * @property-read $parentsIds <pre><code>array<
 *     string[] ID# дочерней сущности =>
 *     array<string ID# родительской сущности => int ID# родительской сущности>
 * ></code></pre> Родительские ID# в порядке от верхнего к нижнему
 * @property-read $childrenIds array<
 *     string[] ID# родительской сущности =>
 *     array<string ID# дочерней сущности => int ID# дочерней сущности>
 * ></code></pre> Дочерние ID# первого уровня
 * @property-read $allChildrenIds array<
 *     string[] ID# родительской сущности =>
 *     array<string ID# дочерней сущности => int ID# дочерней сущности>
 * ></code></pre> Дочерние ID# всех уровней
 */
abstract class AbstractRecursiveCache extends Singleton
{
    /**
     * Не ассоциировать массив
     */
    const ASSOC_NONE = 0;

    /**
     * Ассоциировать массив на внутреннем уровне
     */
    const ASSOC_INNER = 2;

    /**
     * Ассоциировать массив на внешнем уровне
     */
    const ASSOC_OUTER = 1;

    /**
     * Ассоциировать массив на внешнем и внутреннем уровнях
     */
    const ASSOC_BOTH = 3;

    protected static $instance;

    /**
     * Класс сущности (наследуется от SOME)
     * @var string
     */
    protected static $classname;

    /**
     * Поле родительского ID#
     * @var string
     */
    protected static $pidField = 'pid';

    /**
     * Кэш данных
     * @var array <pre><code>array<
     *     string[] ID# сущности =>
     *     array<string[] => mixed> данные сущности
     * ></code></pre>
     */
    protected $cache = [];

    /**
     * Соответствие дочерних и родительских ID#
     * @var array <pre><code>array<
     *     string[] ID# дочерней сущности =>
     *     int ID# родительской сущности
     * ></code></pre>
     */
    protected $parentId = [];

    /**
     * Родительские ID# в порядке от верхнего к нижнему
     * @var array <pre><code>array<
     *     string[] ID# дочерней сущности =>
     *     array<string ID# родительской сущности => int ID# родительской сущности>
     * ></code></pre>
     */
    protected $parentsIds = [];

    /**
     * Родительские и собственный ID# в порядке от верхнего к нижнему
     * @var array <pre><code>array<
     *     string[] ID# дочерней сущности =>
     *     array<string ID# родительской сущности => int ID# родительской сущности>
     * ></code></pre>
     */
    protected $selfAndParentsIds = [];

    /**
     * Дочерние ID# первого уровня
     * @var array <pre><code>array<
     *     string[] ID# родительской сущности =>
     *     array<string ID# дочерней сущности => int ID# дочерней сущности>
     * ></code></pre>
     */
    protected $childrenIds = [];

    /**
     * Дочерние ID# всех уровней
     * @var array <pre><code>array<
     *     string[] ID# родительской сущности =>
     *     array<string ID# дочерней сущности => int ID# дочерней сущности>
     * ></code></pre>
     */
    protected $allChildrenIds = [];

    /**
     * Собственный и дочерние ID# всех уровней
     * @var array <pre><code>array<
     *     string[] ID# родительской сущности =>
     *     array<string ID# дочерней сущности => int ID# дочерней сущности>
     * ></code></pre>
     */
    protected $selfAndChildrenIds = [];

    public function __get($var)
    {
        switch ($var) {
            case 'cache':
            case 'parentId':
            case 'parentsIds':
            case 'childrenIds':
            case 'allChildrenIds':
                return $this->$var;
                break;
        }
    }


    /**
     * Получает набор сущностей по ID#
     * @param array $ids <pre><code>array<int|array<int>></code></pre> ID# сущностей или массив таких наборов
     * @return array <pre><code>array<SOME|array<SOME>></code></pre>
     */
    public function getArraySet(array $ids = [])
    {
        $classname = static::$classname;
        $result = [];
        foreach ($ids as $key => $val) {
            if (is_array($val)) {
                $result[$key] = $this->getArraySet($val);
            } else {
                $result[$key] = new $classname($this->cache[$val]);
            }
        }
        return $result;
    }


    /**
     * Получает набор кэшей сущностей по ID#
     * @param array $ids <pre><code>array<int|array<int>></code></pre> ID# сущностей или массив таких наборов
     * @return array
     */
    public function getCacheSet(array $ids = [])
    {
        $classname = static::$classname;
        $result = [];
        foreach ($ids as $key => $val) {
            if (is_array($val)) {
                $result[$key] = $this->getCacheSet($val);
            } else {
                $result[$key] = $this->cache[$val];
            }
        }
        return $result;
    }


    /**
     * Получает родительский ID#
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @return int|int[]
     */
    public function getParentId($data, $assoc = true)
    {
        $ids = $this->canonizeIds(is_array($data) ? $data : [$data]);
        $result = [];
        foreach ($ids as $id) {
            $result[(string)$id] = (int)$this->parentId[(string)$id];
        }
        if (!is_array($data)) {
            $result = array_shift($result);
        } elseif (!$assoc) {
            $result = array_values(array_unique($result));
        }
        return $result;
    }


    /**
     * Получает родительскую сущность
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @return SOME|SOME[]
     */
    public function getParent($data, $assoc = true)
    {
        $pids = (array)$this->getParentId($data, $assoc);
        $result = $this->getArraySet($pids);
        if (!is_array($data)) {
            $result = array_shift($result);
        }
        return $result;
    }


    /**
     * Получает кэш родительской сущности
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @return array
     */
    public function getParentCache($data, $assoc = true)
    {
        $pids = (array)$this->getParentId($data, $assoc);
        $result = $this->getCacheSet($pids);
        if (!is_array($data)) {
            $result = array_shift($result);
        }
        return $result;
    }


    /**
     * Получает ID# родительских сущностей
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<int|array<int>></code></pre>
     */
    public function getParentsIds($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarIds('parentsIds', $data, $assoc);
    }


    /**
     * Получает ID# себя или родительских сущностей
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<int|array<int>></code></pre>
     */
    public function getSelfAndParentsIds($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarIds('selfAndParentsIds', $data, $assoc);
    }


    /**
     * Получает родительские сущности
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<SOME|array<SOME>></code></pre>
     */
    public function getParents($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVar('parentsIds', $data, $assoc);
    }


    /**
     * Получает кэш родительских сущностей
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array
     */
    public function getParentsCache($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarCache('parentsIds', $data, $assoc);
    }


    /**
     * Получает свою и родительские сущности
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<SOME|array<SOME>></code></pre>
     */
    public function getSelfAndParents($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVar('selfAndParentsIds', $data, $assoc);
    }


    /**
     * Получает кэш своей и родительских сущностей
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array
     */
    public function getSelfAndParentsCache($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarCache('selfAndParentsIds', $data, $assoc);
    }


    /**
     * Получает ID# дочерних сущностей
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<int|array<int>></code></pre>
     */
    public function getChildrenIds($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarIds('childrenIds', $data, $assoc);
    }


    /**
     * Получает дочерние сущности
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<SOME|array<SOME>></code></pre>
     */
    public function getChildren($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVar('childrenIds', $data, $assoc);
    }


    /**
     * Получает кэш дочерних сущностей
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array
     */
    public function getChildrenCache($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarCache('childrenIds', $data, $assoc);
    }


    /**
     * Получает ID# дочерних сущностей всех уровней
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<int|array<int>></code></pre>
     */
    public function getAllChildrenIds($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarIds('allChildrenIds', $data, $assoc);
    }


    /**
     * Получает дочерние сущности всех уровней
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<SOME|array<SOME>></code></pre>
     */
    public function getAllChildren($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVar('allChildrenIds', $data, $assoc);
    }


    /**
     * Получает кэш дочерних сущностей всех уровней
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array
     */
    public function getAllChildrenCache($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarCache('allChildrenIds', $data, $assoc);
    }


    /**
     * Получает ID# себя и дочерних сущностей всех уровней
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<int|array<int>></code></pre>
     */
    public function getSelfAndChildrenIds($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarIds('selfAndChildrenIds', $data, $assoc);
    }


    /**
     * Получает свою и дочерние сущности всех уровней
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<SOME|array<SOME>></code></pre>
     */
    public function getSelfAndChildren($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVar('selfAndChildrenIds', $data, $assoc);
    }


    /**
     * Получает кэш своей и дочерних сущностей всех уровней
     * @param SOME|int|SOME[]|int[] $data Родительская сущность или ID# родительской сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array
     */
    public function getSelfAndChildrenCache($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarCache('selfAndChildrenIds', $data, $assoc);
    }


    /**
     * Получает ID# сущностей по наименованию переменной
     * @param string $var Наименование переменной
     * @param SOME|int|SOME[]|int[] $data Сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<int|array<int>></code></pre>
     */
    protected function getVarIds($var, $data, $assoc)
    {
        $ids = $this->canonizeIds(is_array($data) ? $data : [$data]);
        $result = [];
        foreach ($ids as $id) {
            $result[(string)$id] = (array)($this->{$var}[(string)(int)$id] ?? []);
            if (!($assoc & self::ASSOC_INNER)) {
                $result[(string)$id] = array_unique($result[(string)$id]);
                $result[(string)$id] = array_values($result[(string)$id]);
            }
        }
        if (!is_array($data)) {
            $result = array_shift($result);
        } elseif (!($assoc & self::ASSOC_OUTER)) {
            if ($assoc & self::ASSOC_INNER) {
                $callback = function ($a, $b) {
                    return $a + $b;
                };
            } else {
                $callback = 'array_merge';
            }
            $result = array_reduce($result, $callback, []);
            if (!($assoc & self::ASSOC_INNER)) {
                $result = array_values(array_unique($result));
            }
        }
        return $result;
    }


    /**
     * Получает сущности по наименованию переменной
     * @param string $var Наименование переменной
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<SOME|array<SOME>></code></pre>
     */
    protected function getVar($var, $data, $assoc)
    {
        $pids = $this->getVarIds($var, $data, $assoc);
        $result = $this->getArraySet($pids);
        return $result;
    }


    /**
     * Получает кэш сущности по наименованию переменной
     * @param string $var Наименование переменной
     * @param SOME|int|SOME[]|int[] $data Дочерняя сущность или ID# дочерней сущности или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID# (константа из static::ASSOC_...)
     * @return array <pre><code>array<SOME|array<SOME>></code></pre>
     */
    protected function getVarCache($var, $data, $assoc)
    {
        $pids = $this->getVarIds($var, $data, $assoc);
        $result = $this->getCacheSet($pids);
        return $result;
    }


    protected function init()
    {
        $this->refresh();
    }


    /**
     * Обновляет все данные кэша
     */
    public function refresh()
    {
        $this->setCache();
        $this->setParentsChildrenIds();
    }


    /**
     * Получает ID# из данных
     * @param int|string|SOME $data Входные данные
     * @return int
     */
    public function canonizeId($data)
    {
        return ($data instanceof SOME) ? $data->id : $data;
    }


    /**
     * Получает ID# из набора данных
     * @param int[]|string[]|SOME[] $data Входные данные
     * @return array <pre><code>array<mixed[] => int></code></pre>
     */
    public function canonizeIds(array $data = [])
    {
        $result = [];
        foreach ($data as $key => $val) {
            $result[$key] = ($val instanceof SOME) ? $val->id : $val;
        }
        return $result;
    }


    /**
     * Получает и устанавливает собственно кэш
     */
    protected function setCache()
    {
        $this->cache = [];
        $classname = static::$classname;
        $sqlQuery = "SELECT * FROM " . $classname::_tablename();
        if ($defaultOrderBy = $classname::_defaultOrderBy()) {
            $sqlQuery .= " ORDER BY " . $defaultOrderBy;
        }
        $sqlResult = $classname::_SQL()->get($sqlQuery);
        foreach ($sqlResult as $sqlRow) {
            $this->cache[(string)$sqlRow['id']] = $sqlRow;
        }
    }


    /**
     * Получает и устанавливает соответствие дочерних и родительских ID#
     */
    protected function setParentsChildrenIds()
    {
        $this->parentId =
        $this->childrenIds =
        $this->parentsIds =
        $this->selfAndParentsIds =
        $this->allChildrenIds =
        $this->selfAndChildrenIds = [];
        foreach ($this->cache as $id => $cacheData) {
            $pid = (int)$cacheData[static::$pidField];
            $this->parentId[(string)$id] = (int)$pid;
            if (!isset($this->childrenIds[(string)$id])) {
                $this->childrenIds[(string)$id] = [];
            }
            $this->childrenIds[(string)$pid][(string)$id] = (int)$id;
        }

        // Установим цепочки родительских ID#
        $ch = array_filter(['0' => $this->childrenIds['0']]);
        while ($ch) {
            $newCh = [];
            foreach ($ch as $pid => $chIds) {
                foreach ($chIds as $chId) {
                    if ($pid > 0) {
                        $this->parentsIds[$chId] = $this->parentsIds[$pid] + [(string)$pid => (int)$pid];
                    } else {
                        $this->parentsIds[$chId] = [];
                    }
                    $newCh[$chId] = $this->childrenIds[$chId];
                }
            }
            $ch = $newCh;
        };
        foreach ($this->parentsIds as $chId => $pIds) {
            $this->selfAndParentsIds[$chId] = $pIds;
            if ($chId) {
                $this->selfAndParentsIds[$chId] += [(string)$chId => (int)$chId];
            }
        }

        // Установим наборы всех дочерних ID#
        $ch = array_keys(array_filter($this->childrenIds, function ($x) {
            return !$x;
        }));
        while ($ch) {
            foreach ($ch as $chId) {
                if ($this->childrenIds[$chId]) {
                    $allGrandChildrenIdsByIds = array_map(function ($x) {
                        if (isset($this->allChildrenIds[$x])) {
                            return (array)$this->allChildrenIds[$x];
                        } else {
                            return [];
                        }
                    }, $this->childrenIds[$chId]);
                    $allGrandChildrenIds = array_reduce(
                        $allGrandChildrenIdsByIds,
                        function ($a, $b) {
                            return $a + $b;
                        },
                        []
                    );
                    $this->allChildrenIds[(string)$chId] = $this->childrenIds[$chId] + $allGrandChildrenIds;
                } else {
                    $this->allChildrenIds[(string)$chId] = [];
                }
            }
            $ch = array_map(function ($x) {
                if (isset($this->parentId[$x])) {
                    return $this->parentId[$x];
                }
                return null;
            }, $ch);
            $ch = array_filter($ch, function ($x) {
                return $x !== null;
            });
            $ch = array_values(array_unique($ch));
        };
        foreach ($this->allChildrenIds as $pid => $chIds) {
            $this->selfAndChildrenIds[$pid] = [];
            if ($pid) {
                $this->selfAndChildrenIds[$pid] = [(string)$pid => (int)$pid];
            }
            $this->selfAndChildrenIds[$pid] += $chIds;
        }
    }
}
