<?php
/**
 * Файл класса инициатора событий
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал
 * работы с сущностями SOME (Semantic Object Modelling Extensible) - базовыми
 * семантическими объектами с неопределенным количеством параметров
 * @package SOME
 * @subpackage Event
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2018, Volume Networks
 * @version 4.2
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

/**
 * Класс инициатора событий
 * @package SOME
 * @subpackage Event
 */
class EventProcessor extends Singleton
{
    /**
     * Экземпляр класса
     * @var EventProcessor
     */
    protected static $instance;

    /**
     * Зарегистрированные наблюдатели
     * @var array<string[] Имя события => array<
     *          string[] Имя класса объекта (пустая строка если для всех) => array<
     *              string[] ID# наблюдателя => callable(
     *                  stdClass|null Объект, породивший событие,
     *                  array Дополнительные данные
     *              ) Событие
     *          >
     *      >>
     */
    protected $listeners = array();

    /**
     * Зарегистрировать наблюдателя
     * @param string $eventname Имя события
     * @param string $classname Имя класса объекта (указывается null, если для всех)
     * @param callable $listener Функция-обработчик события
     * @param string $listenerId ID# наблюдателя
     * @return string ID# наблюдателя (возвращается или генерируется)
     */
    public static function on($eventname, $classname, callable $listener, $listenerId = null)
    {
        if (!$listenerId) {
            $listenerId = uniqid('');
        }
        static::i()->listeners[$eventname][(string)$classname][$listenerId] = $listener;
    }


    /**
     * Отвязать наблюдателя
     * @param string $eventname Имя события
     * @param string $classname Имя класса объекта (указывается пустая строка, если для всех)
     * @param string $listenerId ID# наблюдателя
     * @return bool Существовал ли наблюдатель
     */
    public static function off($eventname, $classname, $listenerId)
    {
        if (!isset(static::i()->listeners[$eventname][(string)$classname][$listenerId])) {
            return false;
        }
        unset(static::i()->listeners[$eventname][(string)$classname][$listenerId]);
        return true;
    }


    /**
     * Получить наблюдателя(ей)
     * @param string|null $eventname Имя события, либо null для всех
     * @param string|null $classname Имя класса объекта, либо null для всех
     * @param string|null $listenerId ID# наблюдателя, либо null для всех
     * @return array|callable|null
     */
    public static function get($eventname = null, $classname = null, $listenerId = null)
    {
        $result = static::i()->listeners;
        if (!$eventname) {
            return $result;
        }
        if (!isset($result[$eventname])) {
            return null;
        }
        $result = $result[$eventname];
        if (!$classname) {
            return $result;
        }
        if (!isset($result[$classname])) {
            return null;
        }
        $result = $result[$classname];
        if (!$listenerId) {
            return $result;
        }
        if (!isset($result[$listenerId])) {
            return null;
        }
        $result = $result[$listenerId];
        return $result;
    }


    /**
     * Оповестить о событии
     * @param string $eventname Имя события
     * @param string|null $object Объект, генерирующий событие
     * @param array $data Дополнительные данные
     * @param bool $debug Добавлять данные из debug_backtrace, а именно
     *                    __CLASS__ . ':' . __METHOD__ . ':' к названию события,
     *                    $object и $data['args'] в данные
     */
    public static function emit($eventname = '', $object = null, array $data = array(), $debug = true)
    {
        if ($debug) {
            $db = debug_backtrace(0, 2);
            $db = $db[1];
            if ($db['function']) {
                $eventname = $db['function'] . ($eventname ? ':' . $eventname : '');
                if ($db['class']) {
                    $eventname = $db['class'] . ($eventname ? ':' . $eventname : '');
                }
            }
            if ($db['args']) {
                $data['args'] = $db['args'];
            }
            if (!$object && $db['object']) {
                $object = $db['object'];
            }
        }
        if (isset(static::i()->listeners[$eventname])) {
            $listeners = static::i()->listeners[$eventname];
            foreach ($listeners as $classname => $classnameListeners) {
                if (!$classname || ($object && ($object instanceof $classname))) {
                    foreach ($classnameListeners as $listener) {
                        $listener($object, $data);
                    }
                }
            }
        }
    }
}
