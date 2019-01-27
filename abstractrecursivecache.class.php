<?php
/**
 * Файл абстрактного рекурсивного кэша
 */
namespace SOME;

/**
 * Класс абстрактного рекурсивного кэша
 * @property-read array<
 *                    string[] ID# сущности =>
 *                    array<string[] => mixed> данные сущности
 *                > $cache Кэш данных
 * @property-read array<
 *                    string[] ID# дочерней сущности =>
 *                    int ID# родительской сущности
 *                > $parentId Соответствие дочерних и родительских ID#
 * @property-read array<
 *                    string[] ID# дочерней сущности =>
 *                    array<string ID# родительской сущности => int ID# родительской сущности>
 *                > $parentsIds Родительские ID# в порядке от верхнего к нижнему
 * @property-read array<
 *                    string[] ID# родительской сущности =>
 *                    array<string ID# дочерней сущности => int ID# дочерней сущности>
 *                > $childrenIds Дочерние ID# первого уровня
 * @property-read array<
 *                    string[] ID# родительской сущности =>
 *                    array<string ID# дочерней сущности => int ID# дочерней сущности>
 *                > $allChildrenIds Дочерние ID# всех уровней
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
     * @var array<
     *          string[] ID# сущности =>
     *          array<string[] => mixed> данные сущности
     *      >
     */
    protected $cache = [];

    /**
     * Соответствие дочерних и родительских ID#
     * @var array<
     *          string[] ID# дочерней сущности =>
     *          int ID# родительской сущности
     *      >
     */
    protected $parentId = [];

    /**
     * Родительские ID# в порядке от верхнего к нижнему
     * @var array<
     *          string[] ID# дочерней сущности =>
     *          array<string ID# родительской сущности => int ID# родительской сущности>
     *      >
     */
    protected $parentsIds = [];

    /**
     * Дочерние ID# первого уровня
     * @var array<
     *          string[] ID# родительской сущности =>
     *          array<string ID# дочерней сущности => int ID# дочерней сущности>
     *      >
     */
    protected $childrenIds = [];

    /**
     * Дочерние ID# всех уровней
     * @var array<
     *          string[] ID# родительской сущности =>
     *          array<string ID# дочерней сущности => int ID# дочерней сущности>
     *      >
     */
    protected $allChildrenIds = [];

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
     * @param array<int|array<int>> $ids ID# сущностей или массив таких наборов
     * @return array<SOME|array<SOME>>
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
     * Получает родительский ID#
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @return int|array<int>
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
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param bool $assoc Возвращать массив с ассоциацией по ID#
     * @return SOME|array<SOME>
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
     * Получает ID# родительских сущностей
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @return array<int|array<int>>
     */
    public function getParentsIds($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarIds('parentsIds', $data, $assoc);
    }


    /**
     * Получает родительские сущности
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @return array<SOME|array<SOME>>
     */
    public function getParents($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVar('parentsIds', $data, $assoc);
    }


    /**
     * Получает ID# дочерних сущностей
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @return array<int|array<int>>
     */
    public function getChildrenIds($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarIds('childrenIds', $data, $assoc);
    }


    /**
     * Получает дочерние сущности
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @return array<SOME|array<SOME>>
     */
    public function getChildren($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVar('childrenIds', $data, $assoc);
    }


    /**
     * Получает ID# дочерних сущностей всех уровней
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @return array<int|array<int>>
     */
    public function getAllChildrenIds($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVarIds('allChildrenIds', $data, $assoc);
    }


    /**
     * Получает дочерние сущности всех уровней
     * @param SOME|int|array<SOME|int> $data Родительская сущность
     *                                       или ID# родительской сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @return array<SOME|array<SOME>>
     */
    public function getAllChildren($data, $assoc = self::ASSOC_NONE)
    {
        return $this->getVar('allChildrenIds', $data, $assoc);
    }


    /**
     * Получает ID# сущностей по наименованию переменной
     * @param string $var Наименование переменной
     * @param SOME|int|array<SOME|int> $data Сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @return array<int|array<int>>
     */
    final protected function getVarIds($var, $data, $assoc)
    {
        $ids = $this->canonizeIds(is_array($data) ? $data : [$data]);
        $result = [];
        foreach ($ids as $id) {
            $result[(string)$id] = (array)$this->{$var}[(string)(int)$id];
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
     * @param SOME|int|array<SOME|int> $data Дочерняя сущность
     *                                       или ID# дочерней сущности
     *                                       или их массив
     * @param int $assoc Возвращать массив с ассоциацией по ID#
     *                   (константа из static::ASSOC_...)
     * @return array<SOME|array<SOME>>
     */
    final protected function getVar($var, $data, $assoc)
    {
        $pids = $this->getVarIds($var, $data, $assoc);
        $result = $this->getArraySet($pids);
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
     * @param array<int|string|SOME> $data Входные данные
     * @return array<mixed[] => int>
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
        $this->allChildrenIds = [];
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
                        $this->parentsIds[$chId] = $this->parentsIds[$pid]
                                                 + [(string)$pid => (int)$pid];
                    } else {
                        $this->parentsIds[$chId] = [];
                    }
                    $newCh[$chId] = $this->childrenIds[$chId];
                }
            }
            $ch = $newCh;
        };

        // Установим наборы всех дочерних ID#
        $ch = array_keys(array_filter($this->childrenIds, function ($x) {
            return !$x;
        }));
        while ($ch) {
            foreach ($ch as $chId) {
                if ($this->childrenIds[$chId]) {
                    $allGrandChildrenIdsByIds = array_map(function ($x) {
                        return (array)$this->allChildrenIds[$x];
                    }, $this->childrenIds[$chId]);
                    $allGrandChildrenIds = array_reduce(
                        $allGrandChildrenIdsByIds,
                        function ($a, $b) {
                            return $a + $b;
                        },
                        []
                    );
                    $this->allChildrenIds[(string)$chId] = $this->childrenIds[$chId]
                                                         + $allGrandChildrenIds;
                } else {
                    $this->allChildrenIds[(string)$chId] = [];
                }
            }
            $ch = array_map(function ($x) {
                return $this->parentId[$x];
            }, $ch);
            $ch = array_filter($ch, function ($x) {
                return $x !== null;
            });
            $ch = array_values(array_unique($ch));
        };
    }
}
