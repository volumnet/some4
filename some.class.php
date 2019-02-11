<?php
/**
 * Файл абстрактного класса сущности SOME
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал
 * работы с сущностями SOME (Semantic Object Modelling Extensible) - базовыми
 * семантическими объектами с неопределенным количеством параметров
 * @package SOME
 * @subpackage SOME
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2013, Volume Networks
 * @version 4.2
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

/**
 * Класс сущности SOME
 *
 * Класс SOME - базовый класс для всех семантических (сущностных) объектов, отражение которых присутствует
 * в базе данных.
 * @package SOME
 * @subpackage SOME
 * @property mixed [тип self::FIELD_ID] Первичный ключ сущности. Может задаваться только тогда, когда
 *                 не определен (только один раз).
 * @property mixed [тип self::FIELD_REGULAR] Поля, хранимые в таблице базы данных (кроме первичного ключа).
 *                 Могут изменяться, но до вызова метода $this->commit() в базу данных не сохраняются.
 *                 При наличии обновлений возвращается значение обновления, при отсутствии — значение,
 *                 сохраненное в базе данных.
 *                 При установке нового значения система проверяет, не является ли это поле внешним ключом.
 *                 Если оно является таковым — удаляются соответствующие сохраненные значения именованных
 *                 ссылок [поля self::FIELD_REFERENCED], а также, если ключ является рекурсивным
 *                 (ссылается на тот же класс), удаляются и все сохраненные значения родительских элементов.
 * @property-read mixed [тип self::FIELD_REFERENCE] Именованные ссылки по внешним ключам, указанным
 *                      в статическом свойстве static::$references. По обращению к именованной ссылке
 *                      возвращается объект класса classname, с первичным ключом, равным $this->[FK]
 * @property-read array [тип self::FIELD_LINK] Связки из таблиц-связок, указанных в статическом свойстве
 *                      static::$links. При отсутствии поля field_to будет возвращен массив строк,
 *                      ассоциированных с текущим объектом по полю field_from. При наличии поля field_to
 *                      проверяется наличие класса, у которого существует связка с той же таблицей, но поле
 *                      field_from соответствует полю field_to текущего класса.
 *                      При наличии такого класса, будет возвращен массив его объектов, первичные ключи
 *                      которых равны значениям поля field_to у строк, где field_from равно первичному ключу
 *                      текущего класса.
 *                      В противном случае будет возвращен массив чисел, соответствующих значениям поля
 *                      field_to строк, где field_from равно первичному ключу текущего класса.
 * @property-read array [тип self::FIELD_LINK, с суффиксом _ids] При наличии поля field_to и сопряженного
 *                      класса, возвращаются первичные ключи объектов сопряженного класса (аналогично
 *                      использованию свойства без суффикса при наличии поля field_to, но без сопряженного
 *                      класса). В противном случае ведет себя аналогично свойству без суффикса.
 * @property-read mixed [тип self::FIELD_COGNIZABLE] Динамические ("осознаваемые") переменные, рассчитываемые
 *                      по функциям, заданным в статическом свойстве static::$cognizableVars
 * @property-read array [тип self::FIELD_СHILDREN] Массивы объектов, имеющих внешние ключи на данный объект.
 * @property-read array [тип self::FIELD_СHILDREN, с суффиксом _ids] Работает аналогично типу self::FIELD_СHILDREN,
 * @property-read array [тип self::FIELD_СHILDREN, с префиксом all_] Только для рекурсивных ссылок: работает аналогично
 *                      типу self::FIELD_СHILDREN, но возвращает объекты, дочерние во всех поколениях, с указанием уровня
 *                      вложенности в свойстве __level.
 * @property-read array [тип self::FIELD_СHILDREN, с префиксом all_ и суффиксом _ids] Только для рекурсивных ссылок:
 *                      возвращает первичные ключи объектов, дочерних во всех поколениях.
 * @property-read array|false [тип self::FIELD_PARENTS] Только для рекурсивных ссылок: возвращает массив
 *                            родительских элементов всех поколений по заданной ссылке.
 * @property-read array|false $parents_ids Только для рекурсивных ссылок: возвращает массив первичных ключей родительских
 *                            элементов всех поколений по заданной ссылке.
 * @proprerty mixed [тип self::FIELD_META] Дополнительные данные, не сохраняемые в таблице базы данных.
 */
abstract class SOME extends \ArrayObject
{
    // <editor-fold defaultstate="collapsed" desc="Константы класса">
    /**
     * Тип свойства — первичный ключ
     */
    const FIELD_ID = 0x1;

    /**
     * Тип свойства — обычное (регулярное) поле или его обновление
     */
    const FIELD_REGULAR = 0x2;

    /**
     * Тип свойства — именованная ссылка по внешнему ключу
     */
    const FIELD_REFERENCE = 0x4;

    /**
     * Тип свойства — массив по таблице-связке
     */
    const FIELD_LINK = 0x8;

    /**
     * Тип свойства — вычисляемое ("осознаваемое") свойство
     */
    const FIELD_COGNIZABLE = 0x10;

    /**
     * Тип свойства — дочерние элементы
     */
    const FIELD_CHILDREN = 0x20;

    /**
     * Тип свойства — родительские элементы
     */
    const FIELD_PARENTS = 0x40;

    /**
     * Тип свойства — мета-данные
     */
    const FIELD_META = 0x80;

    /**
     * Описание исключения для обозначения отсутствия параметра для сортировки,
     * для использования в методе $this->reorder()
     */
    const EXCEPTION_REORDER_PROPERTY_NAME = 'You have to define property name (argument #0)';

    /**
     * Описание исключения для обозначения отсутствия шага,
     * для использования в методе $this->reorder()
     */
    const EXCEPTION_REORDER_STEP = 'You have to define step (argument #1)';

    /**
     * Описание исключения для обозначения отсутствия параметра для сортировки,
     * для использования в методе static::priorityRepair()
     */
    const EXCEPTION_PRIORITYREPAIR_PROPERTY_NAME = 'You have to define property name (argument #0)';

    /**
     * Описание исключения для обозначения неправильного формата класса,
     * для использования в методе self::init_checkClasses()
     */
    const EXCEPTION_INIT_ERRORCLASS = 'Error format of the class "%s"';

    /**
     * Описание исключения для обозначения некорректного формата списка полей,
     * для использования в методе self::init_checkClasses()
     */
    const EXCEPTION_INIT_INVALIDFIELDS = 'Invalid field set in the class "%s"';

    /**
     * Описание исключения для обозначения неправильного формата первичного ключа,
     * для использования в методе self::init_checkClasses()
     */
    const EXCEPTION_INIT_INVALIDPRIMARYKEY = 'Error primary key of the class "%s"';

    /**
     * Описание исключения для обозначения отсутствия наследования объекта подключения к базе данных,
     * для использования в методе static::init_setSQL()
     */
    const EXCEPTION_INIT_SQL = 'Cannot initialize class "%s": trying to set SQL engine but the class doesn\'t extend the property $SQL.';

    /**
     * Описание исключения для обозначения отсутствия наследования префикса таблиц,
     * для использования в методе static::init_setSQL()
     */
    const EXCEPTION_INIT_DBPREFIX = 'Cannot initialize class "%s": trying to set DB prefix but the class doesn\'t extend the property $dbprefix.';

    /**
     * Описание исключения для обозначения отсутствия подключения к базе данных,
     * для использования в методе static::init_checkSQL()
     */
    const EXCEPTION_INIT_NOCONNECTION = 'Cannot initialize class "%s": no active database engine is set.';

    /**
     * Описание исключения для обозначения отсутствия наименования таблицы,
     * для использования в методе static::init_checkSQL()
     */
    const EXCEPTION_INIT_NOTABLENAME = 'Cannot initialize class "%s": no table name is set.';

    /**
     * Описание исключения для обозначения некорректного формата ссылки,
     * для использования в методе static::init_checkReferences()
     */
    const EXCEPTION_INIT_NOREF = 'Cannot initialize class "%s": reference "%s" must be an array(\'FK\' => string, \'classname\' => string).';

    /**
     * Описание исключения для обозначения отсутствия внешнего ключа ссылки,
     * для использования в методе static::init_checkReferences()
     */
    const EXCEPTION_INIT_NOFK = 'Cannot initialize class "%s": reference "%s" must have foreign key.';

    /**
     * Описание исключения для обозначения отсутствия наименования класса у ссылки,
     * для использования в методе static::init_checkReferences()
     */
    const EXCEPTION_INIT_NOCLASSNAME = 'Cannot initialize class "%s": reference "%s" must have class name.';

   /**
     * Описание исключения для обозначения некорректного формата дочерней ссылки,
     * для использования в методе static::init_checkChildren()
     */
    const EXCEPTION_INIT_NOCHILD = 'Cannot initialize class "%s": children "%s" must be an array(\'classname\' => string, \'FK\' => string).';

    /**
     * Описание исключения для обозначения отсутствия внешнего ключа дочерней ссылки,
     * для использования в методе static::init_checkChildren()
     */
    const EXCEPTION_INIT_NOCHILDFK = 'Cannot initialize class "%s": children "%s" must have foreign key.';

    /**
     * Описание исключения для обозначения отсутствия наименования класса у дочерней ссылки,
     * для использования в методе static::init_checkChildren()
     */
    const EXCEPTION_INIT_NOCHILDCLASSNAME = 'Cannot initialize class "%s": children "%s" must have class name.';

    /**
     * Описание исключения для обозначения того, что класс, указанный в качестве дочернего для данного,
     * на самом деле таковым не является; для использования в методе static::init_checkChildren()
     */
    const EXCEPTION_INIT_INVALIDCHILDREN = 'Cannot initialize class "%s": class "%s" is not its children with the foreign key "%s".';

    /**
     * Описание исключения для обозначения того, что ссылка, указанная в качестве родительской для данного класса, не существует;
     * для использования в методе static::init_checkParents()
     */
    const EXCEPTION_INIT_NOPARENTLINK = 'Cannot initialize class "%s": reference "%s" used as parent "%s" doesn\'t exist.';

    /**
     * Описание исключения для обозначения того, что ссылка, указанная в качестве родительской для данного класса, не рекурсивна;
     * для использования в методе static::init_checkParents()
     */
    const EXCEPTION_INIT_PARENTNOTRECURSIVE = 'Cannot initialize class "%s": reference "%s" used as parent "%s" must be recursive.';

    /**
     * Описание исключения для обозначения некорректного формата связки,
     * для использования в методе static::init_checkLinks()
     */
    const EXCEPTION_INIT_NOLINK = 'Cannot initialize class "%s": link "%s" must be an array(\'tablename\' => string, \'field_from\' => string [, \'field_to\' => string]).';

    /**
     * Описание исключения для обозначения отсутствия наименования таблицы,
     * для использования в методе static::init_checkLinks()
     */
    const EXCEPTION_INIT_NOLINKTABLE = 'Cannot initialize class "%s": link "%s" must have table name.';

    /**
     * Описание исключения для обозначения отсутствия поля field_from,
     * для использования в методе static::init_checkLinks()
     */
    const EXCEPTION_INIT_NOFIELDFROM = 'Cannot initialize class "%s": link "%s" must have field_from parameter.';

    /**
     * Описание исключения для обозначения отсутствия доступа к таблице,
     * для использования в методе static::init_checkLinks()
     */
    const EXCEPTION_INIT_TABLEDOESNOTEXISTS = 'Cannot initialize class "%s": table "%s" doesn\'t exist.';

    /**
     * Описание исключения для обозначения отсутствия доступа к таблице,
     * для использования в методе static::init_getFields()
     */
    const EXCEPTION_INIT_NOTABLECONNECTION = 'Cannot initialize class "%s": cannot connect to the "%s" table.';

    /**
     * Описание исключения для обозначения отсутствия первичного ключа,
     * для использования в методе static::init_getFields()
     */
    const EXCEPTION_INIT_NOPRIMARYKEY = 'Cannot initialize class "%s": no primary key found.';

    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Свойства класса">
        // <editor-fold defaultstate="collapsed" desc="Защищенные свойства класса">
    /**
     * Основная таблица сущности
     * @var string наименование таблицы в базе данных без учета префикса
     */
    protected static $tablename = '';

    /**
     * Первичный ключ таблицы
     *
     * Задается в тех случаях, когда невозможно определить первичный ключ из информационной схемы автоматически
     * В остальных случаях не рекомендуется к использованию
     * @var string
     */
    protected static $idN = '';

    /**
     * Именованные ссылки класса
     *
     * Используются для указания объектов, вычисляемых по внешним ключам сущности. Представляет собой массив,
     * ключи которого представляют собой названия ссылок (для последующего доступа по свойствам-именованным
     * ссылкам), либо числовые индексы, если явное использование ссылок не подразумевается. Значения
     * формируются следующим образом:
     *  array(
     *      'FK' => '[название поля в таблице сущности, являющегося внешним ключом]',
     *      'classname' => '[название класса, на первичный ключ которого ссылается внешний ключ данного класса]',
     *      'cascade' => [при установке в true при удалении ссылаемого объекта данный будет каскадно удален]
     *  );
     * @var array
     */
    protected static $references = array();

    /**
     * Дочерние элементы
     *
     * Используется для указания ссылок, по которым будут вычисляться массивы дочерних элементов. Представляет собой массив,
     * ключи которого представляют собой названия свойств. Значения формируются следующим образом:
     *  array(
     *      'classname' => '[название класса, ссылающегося на текущий объект]',
     *      'FK' => '[название поля в таблице дочерней сущности, являющегося внешним ключом на данный класс]',
     *  );
     * @var array
     */
    protected static $children = array();

    /**
     * Родительские элементы
     *
     * Используется для указания ссылок, по которым будут вычисляться массивы родительских элементов. Представляет собой массив,
     * ключи которого представляют собой названия свойств. Значения представляют собой названия ссылок текущего класса
     * на родительский класс
     * @var array
     */
    protected static $parents = array();

    /**
     * Связки класса по таблицам-связкам
     *
     * Используются для указания объектов, вычисляемых по таблицам-связкам (таблицам, не являющимся
     * собственными таблицами сущностей SOME, но содержащим по крайней мере два внешних ключа на собственные
     * таблицы сущностей SOME)
     * Представляет собой массив, ключи которого представляют собой названия ссылок (для последующего доступа
     * по свойствам-именованным ссылкам), либо числовые индексы, если явное использование ссылок
     * не подразумевается. Значения формируются следующим образом:
     *  array(
     *      'tablename' => '[название таблицы-связки "многие ко многим"]',
     *      'field_from' => '[название поля - внешнего ключа в таблице-связке, соответствующего
     *                       первичному ключу данного класса]',
     *      'field_to' => '[название поля, значения которого планируем получить по свойству-именованной ссылке]',
     *      'classname' => '[название класса, объекты которого планируется получить при неуспешном поиске по полям]'
     *  );
     * Элемент field_to необходим только в случае, если ссылка именованная (в противном случае он игнорируется).
     * Элемент classname используется только в том случае, если сопряженный класс не найден. В противном случае он игнорируется
     * @var array массив ссылок
     */
    protected static $links = array();

    /**
     * Массив внешних кэшей
     *
     * Внешним кэшем называется результат выполнения некоторой функции F(x1..xn, y1..ym, z1..zq, ...),
     * где xi, yj, zk, ... -- поля объектов B, C, D, и т.д., из полей которых формируется кэш. Внешний кэш
     * обязательно завязан на внешние ключи, определяющие связанные объекты. Также для кэша задается
     * выражение в формате SQL,  определяющее функцию расчета значения кэша. При изменении объекта B
     * изменяются все объекты A, для которых существуют кэши, завязанные на B, при условии что по крайней
     * мере один кэш изменился (при этом стоит отметить, что кэш в объекте A ни при каких условиях
     * не должен ссылаться на объект A либо зависеть от него).
     * Массив имеет следующую структуру:
     * array(
     *     'affected' => array([Перечень именованных ссылок объектов, задействованных в кэше]),
     *     'sql' => [
     *         SQL-выражение для расчета кэша. Свойства обектов задаются в виде [ссылка].[свойство],
     *         например User.vis
     *     ]
     * )
     * @var array
     */
    protected static $caches = array();

    /**
     * Массив функций для вычисления динамических ("осознаваемых") свойств
     *
     * Представляет собой массив названий динамических полей, вычисляемых по методам с названиями вида
     * $this->_[название свойства](). Такие методы не принимают аргументов.
     * Значение, возвращаемое функцией, записывается в кэш динамического свойства и возвращается в клиентский код
     * @var array
     */
    protected static $cognizableVars = array();

    /**
     * Псевдонимы свойств
     *
     * При получении и установке свойств позволяют пользоваться псевдонимами, а не реальными именами полей из базы данных.
     * Во избежание ошибок категорически не рекомендуется, чтобы псевдонимы совпадали с какими-то из значимых наименований свойств.
     * @var array массив вида array([псевдоним] => [поле])
     */
    protected static $aliases = array();

    /**
     * Префикс таблиц, используемых в текущем классе
     *
     * Окончательное имя таблицы вычисляется как "[префикс][заданное имя таблицы]"
     * Внимание! этим свойством следует пользоваться очень осторожно при различных префиксах системы,
     * поскольку, если в двух классах указаны ссылки на одинаковые таблицы, но указан разный префикс,
     * это может привести к ошибкам.
     * Внимание! Если используются несколько префиксов, в одной из групп (по одному префиксу), в каждом
     * классе группы, данная переменная должна быть переопределена
     * @var string
     */
    protected static $dbprefix;

    /**
     * Параметр для сортировки по умолчанию
     *
     * Выражение, которое будет подставлено по умолчанию в директиву ORDER BY для формирования списков
     * @var string
     */
    protected static $defaultOrderBy;

    /**
     * Авто-инкрементарный порядок отображения
     *
     * При сохранении нового объекта, автоматом будет подставлено значение $defaultOrderBy, на 1 больше максимального в данной таблице.
     * Без $defaultOrderBy смысла не имеет
     * @var bool
     */
    protected static $aiPriority;

    /**
     * База данных
     *
     * Содержит активное подключение к базе данных
     * @var \SOME\DB
     */
    protected static $SQL;

    /**
     * Каскадированное объектное обновление
     *
     * При установке в true, при каскадированном (по внешним кэшам) обновлении данных, для каждой обновляемой
     * строки в таблице будет создан отдельный SOME-объект. Это необходимо в случае, если обновление объекта
     * затрагивает данные, не хранимые в базе данных (например, изображения)
     * @var bool
     */
    protected static $objectCascadeUpdate = false;

    /**
     * Каскадированное объектное удаление
     *
     * При установке в true, при каскадированном (по внешним кэшам) удалении данных, для каждой удаляемой
     * строки в таблице будет создан отдельный SOME-объект. Это необходимо в случае, если удаление объекта
     * затрагивает данные, не хранимые в базе данных (например, изображения)
     * @var <type>
     */
    protected static $objectCascadeDelete = false;
        // </editor-fold>
        // <editor-fold defaultstate="collapsed" desc="Приватные свойства класса">
            // <editor-fold defaultstate="collapsed" desc="Приватные динамические свойства класса">
    /**
     * Первичный ключ объекта
     *
     * По концепции SOME объект должен иметь одно и только одно поле в таблице БД, являющееся первичным
     * ключом, причем быть авто-инкрементным. Соответственно, значение этого поля однозначно идентифицирует
     * объект в своем роде.
     * Значение поля задается:
     * - при инициализации объекта числом (число равно первичному ключу),
     * - при инициализации объекта массивом (если в массиве присутствует первичный ключ),
     * - при первом commit'е вновь созданного объекта (когда происходит присвоение первичного ключа строке
     * таблицы).
     * - при первой установке значения вручную.
     * !!! Значение первичного ключа не может быть, согласно концепции SOME, ни изменено, ни удалено.
     * @var mixed
     */
    protected $_id;

    /**
     * Обычные (регулярные) свойства.
     *
     * Массив отражает данные, сохраненные в базе данных (за исключением первичного ключа).
     * Значения полей задаются:
     * - при инициализации объекта числом,
     * - при commit'е объекта, когда обновленные данные сохраняются из $updates в $properties.
     * !!! Значения не могут быть удалены, поскольку таблица объявлена с известными фиксированными полями.
     * @var array
     */
    protected $properties = array();

    /**
     * Обновления регулярных свойств
     *
     * Могут содержать любые поля из таблицы БД, за исключением первичного ключа
     * Значения задаются:
     * - вручную пользователем,
     * - при инициализации объекта массивом.
     * Значения удаляются:
     * - при выполнении commit'а (тогда они перемещаются из $updates в $properties),
     * - при выполнении rollback'а или reload'а (в этих двух случаях они просто очищаются),
     * - вручную функцией unset.
     * @var array
     */
    protected $updates = array();

    /**
     * Именованные ссылки по внешним ключам
     *
     * Внешний ключ берется сначала из $updates, в случае его отсутствия из $properties.
     * Значения задаются в момент первого вызова — при этом они вычисляются и сохраняются в переменную.
     * В остальных случаях значения не задаются чтобы лишний раз не нагружать базу данных (поскольку
     * вычисление внешней ссылки, как правило, сопряжено с запросами к базе), а также в целях экономии
     * памяти. (Т.е. если объект не вызван, т.е. не нужен, он не будет вычислен).
     * Значения удаляются:
     *  - при установке нового значения во внешний ключ (поскольку старый объект уже не актуален, а новый,
     * согласно только что приведенным рассуждениям, будет создан при первом вызове).
     *  - при выполнении rollback'а (по сути то же обновление) внешнего ключа,
     *  - при удалении (по сути то же обновление) внешнего ключа из $updates функцией unset.
     *  - при выполнении reload'а
     *  - при удалении ссылки вручную функцией unset,
     *  !!! (При commit'е удаления не происходит, т.к. трудно себе представить ситуацию, когда ссылающийся
     * объект каким-то образом влияет на ссылаемый.)
     * @var array
     */
    protected $referenced = array();

    /**
     * Массивы из таблиц-связок
     *
     * Значения задаются в момент первого вызова — при этом они вычисляются и сохраняются в переменную.
     * В остальных случаях значения не задаются чтобы лишний раз не нагружать базу данных (поскольку
     * вычисление связок, как правило, сопряжено с запросами к базе), а также в целях экономии памяти.
     * Значения удаляются:
     * - при вызове reload'а
     * - при удалении значения вручную функцией unset.
     * !!! Никакое изменение внутри объекта не удаляет поле, поскольку на данные таблицы-связки влияет
     * только первичный ключ объекта, а он, согласно концепции SOME, меняться не может.
     * @var array
     */
    protected $linked = array();

    /**
     * Именованные объекты, рассчитанные ("осознанные") с помощью заданных функций.
     *
     * Вспомогательные значения берутся сначала из $updates, затем из $properties.
     * Значения задаются в момент первого вызова — при этом они вычисляются и сохраняются в переменную.
     * В остальных случаях значения не задаются чтобы лишний раз не нагружать базу данных (поскольку
     * вычисление осознанного объекта, как правило, сопряжено с запросами к базе), а также в целях экономии
     * памяти. (Т.е. если объект не вызван, т.е. не нужен, он не будет вычислен).
     * Значения удаляются:
     * - при изменении любого значения из $properties/$updates (поскольку, следуя принципу инкапсуляции,
     *   мы не знаем, какие поля использует функция, высчитывающая значения)
     * - при выполнении rollback'а (по сути то же обновление) любого поля (заметим, что если $updates пуст,
     *   то $cognized-объект не удаляется),
     * - при удалении (по сути то же обновление) любого из $updates функцией unset.
     * - при выполнении reload'а
     * - при удалении ссылки вручную функцией unset
     * @var array
     */
    protected $cognized = array();

    /**
     * Дополнительные вспомогательные данные в свободной форме, не привязанные к базе данных или
     * иному хранилищу
     *
     * Задаются:
     * - вручную пользователем
     * - при инициализации объекта массивом, где присутствуют данные, не относящиеся к полям собственной
     * таблицы объекта
     * Удаляются:
     * - вручную функцией unset
     * @var array
     */
    protected $meta = array();

    /**
     * Набор дочерних элементов
     *
     * Хранят дочерние объекты, заданные в массиве static::$children, также их варианты с суффиксом _ids,
     * префиксом all_ (для рекурсивных ссылок) и в комбинации (для рекурсивных ссылок)
     * Значения задаются в момент первого вызова — при этом они вычисляются и сохраняются в переменную.
     * В остальных случаях значения не задаются чтобы лишний раз не нагружать базу данных (поскольку
     * вычисление дочерних элементов, как правило, сопряжено с запросами к базе), а также в целях экономии
     * памяти. (Т.е. если переменная не вызвана, т.е. не нужна, она не будет вычислена).
     * Значения удаляются:
     * - при commit'е (поскольку изменение объекта может каскадно отразиться на его дочерних объектах)
     * - при вызове reload'а
     * - при удалении значения вручную функцией unset.
     * @var array Массив вида array(\SOME\SOME дочерний элемент, ...)
     */
    protected $_children = array();

    /**
     * Набор родительских элементов
     *
     * Для рекурсивных ссылок: хранят родительские объекты, заданные в массиве static::$parents, а также их варианты с суффиксом _ids
     * Значения задаются в момент первого вызова — при этом они вычисляются и сохраняются в переменную.
     * В остальных случаях значения не задаются чтобы лишний раз не нагружать базу данных (поскольку
     * вычисление дочерних элементов, как правило, сопряжено с запросами к базе), а также в целях экономии
     * памяти. (Т.е. если переменная не вызвана, т.е. не нужна, она не будет вычислена).
     * Значения удаляются:
     * - при установке нового значения во внешний ключ (поскольку старый объект уже не актуален, а новый,
     * согласно приведенным выше рассуждениям, будет создан при первом вызове).
     * - при выполнении rollback'а (по сути то же обновление) внешнего ключа,
     * - при удалении (по сути то же обновление) внешнего ключа из $updates функцией unset.
     * - при вызове reload'а
     * - при удалении значения вручную функцией unset.
     * !!! (При commit'е удаления не происходит, т.к. трудно себе представить ситуацию, когда
     * дочерний объект каким-то образом влияет на родительский.)
     * @var array Массив вида array(\SOME\SOME родительский элемент, ...)
     */
    protected $_parents = array();
            // </editor-fold>

            // <editor-fold defaultstate="collapsed" desc="Приватные статические свойства класса">
    /**
     * Внутренняя схема устройства классов
     *
     * Внутренняя схема формируется и дополняется при инициализации дочерних классов и представляет собой
     *  массив следующего вида:
     * array(
     *    [имя класса] => array(
     *        'tablename' => '[имя таблицы класса]',
     *        'PRI' => '[имя первичного ключа таблицы класса]',
     *        'AI' => (boolean)[указатель, является ли первичный ключ авто-инкрементированным],
     *        'fields' => array([поле], ...), // индексированный массив названий полей из таблицы класса
     *    ),
     *    ...
     * );
     */
    private static $classes = array();

    /**
     * Массив соответствий константам видов полей типовым переменным, через которые можно получить значения
     * этих полей
     * @var array
     */
    private static $varsByTypes = array(
        self::FIELD_ID => '_id', self::FIELD_REGULAR => 'updates', self::FIELD_REFERENCE => 'referenced', self::FIELD_LINK => 'linked',
        self::FIELD_COGNIZABLE => 'cognized', self::FIELD_CHILDREN => '_children', self::FIELD_PARENTS => '_parents',
        self::FIELD_META => 'meta'
    );
            // </editor-fold>
        // </editor-fold>
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Методы класса">
        // <editor-fold defaultstate="collapsed" desc="Публичные методы класса">
            // <editor-fold defaultstate="collapsed" desc="Magic-methods и функции интерфейса ArrayObject">
    /**
     * Конструктор класса
     *
     * Создает экземпляр класса на основе входых данных.
     * Создавать экземпляр можно на основе массива свойств, либо на основе идентификатора (первичного ключа).
     * Также можно создать пустой экземпляр с помощью $import_data равного null,
     * или не указанного.
     * @param mixed $import_data Входные данные
     */
    public function __construct($import_data = null)
    {
        static::init();
        $this->_id = null;
        $this->properties = $this->updates = $this->referenced = $this->linked = $this->cognized = $this->meta
                          = $this->_children = $this->_parents = array();
        if ($import_data) {
            if (is_array($import_data)) {
                $this->__construct_array($import_data);
            } elseif ($import_data instanceof self) {
                $this->__construct_object($import_data);
            } elseif ($import_data !== null) {
                $this->__construct_id($import_data);
            }
        }
    }


    public function __get($var)
    {
        if (isset(static::$aliases[$var])) {
            $var = static::$aliases[$var];
        }
        $type = self::typeof($var);
        if ($type == self::FIELD_ID || $var == self::$varsByTypes[self::FIELD_ID]) {
            return $this->_id;
        } elseif ($type == self::FIELD_REGULAR) {
            return (isset($this->updates[$var]) ? $this->updates[$var] : (isset($this->properties[$var]) ? $this->properties[$var] : null));
        } elseif ($type == self::FIELD_REFERENCE) {
            return $this->__get_reference($var);
        } elseif ($type == self::FIELD_LINK) {
            return $this->__get_links($var);
        } elseif ($type == self::FIELD_COGNIZABLE) {
            return $this->__get_cognizable($var);
        } elseif ($type == self::FIELD_CHILDREN) {
            return $this->__get_children($var);
        } elseif ($type == self::FIELD_PARENTS) {
            return $this->__get_parents($var);
        } elseif ($type == self::FIELD_META) {
            return isset($this->meta[$var]) ? $this->meta[$var] : null;
        }
        return null;
    }


    public function __set($var, $val)
    {
        if (isset(static::$aliases[$var])) {
            $var = static::$aliases[$var];
        }
        switch (self::typeof($var)) {
            case self::FIELD_ID:
                !$this->_id ? ($this->_id = $val) : null;
                break;
            case self::FIELD_REGULAR:
                // 2015-11-29, AVS: поменял на self::__get($var), т.к. __get может быть переопределен и тогда сравнение будет неверным
                if ($val !== self::__get($var)) {
                    $this->updates[$var] = $val;
                    $ref = static::getReferenceByFK($var);
                    if ($ref) {
                        unset($this->referenced[$ref]);
                        $parent = array_search($ref, static::$parents);
                        if ($parent) {
                            unset($this->_parents[$parent]);
                        }
                    }
                    $this->cognized = array();
                }
                break;
            default:
                $this->meta[$var] = $val;
                break;
        }
    }


    public function __isset($var)
    {
        $key = self::typeof($var);
        switch ($key) {
            case self::FIELD_REFERENCE:
            case self::FIELD_LINK:
            case self::FIELD_COGNIZABLE:
            case self::FIELD_META:
                return isset($this->{self::$varsByTypes[$key]}[$var]);
                break;
            case self::FIELD_CHILDREN:
            case self::FIELD_PARENTS:
                return isset($this->{self::$varsByTypes[$key]}[\preg_replace('/_ids$/i', '', $var)]);
                break;
            case self::FIELD_ID:
                return (bool)$this->_id;
                break;
            case self::FIELD_REGULAR:
                return (isset($this->updates[$var]) ? true : isset($this->properties[$var]));
                break;
        }
    }


    public function __unset($var)
    {
        $key = self::typeof($var);
        switch ($key) {
            case self::FIELD_REFERENCE:
            case self::FIELD_LINK:
            case self::FIELD_COGNIZABLE:
            case self::FIELD_META:
                unset($this->{self::$varsByTypes[$key]}[$var]);
                break;
            case self::FIELD_CHILDREN:
            case self::FIELD_PARENTS:
                $this->__unset_children($var);
                break;
            case self::FIELD_REGULAR:
                $this->__unset_regular($var);
                break;
        }
    }


    public function __clone()
    {
        $this->_id = null;
        // 2017-09-01, AVS: было $this->updates = $this->properties: при клонировании несохраненные данные терялись
        $this->updates = array_merge($this->properties, $this->updates);
        $this->properties = array();
    }


    /**
     * Клонировать объект с сохранением ID# и свойств
     */
    public function deepClone()
    {
        $new = clone $this;
        $new->_id = $this->_id;
        $new->updates = $this->updates;
        $new->properties = $this->properties;
        return $new;
    }


    /**
     * Интерфейс получения массива данных из объекта
     *
     * Позволяет получить свойства объекта в виде массива.
     * @param int $varType битовая маска объектов, доступных для получения - по умолчанию id, updates/properties и meta
     * @return array Массив свойств
     */
    public function getArrayCopy($varType = 0x83)
    {
        $arr = array();
        foreach (self::$varsByTypes as $key => $val) {
            if ($key & $varType) {
                switch ($key) {
                    case self::FIELD_ID:
                        $arr[$this->_idN()] = $this->_id;
                        break;
                    case self::FIELD_REGULAR:
                        $arr = array_merge($arr, $this->properties);
                        // nobreak;
                    default:
                        $arr = array_merge($arr, $this->$val);
                }
            }
        }
        return $arr;
    }

    /**
     * Интерфейс доступа к классу как к массиву (для записи)
     *
     * Позволяет записать какое-либо динамическое свойство с помощью выражения $object[$var] = ...
     * @param string $var наименование динамического свойства
     * @param mixed $val записываемое значение динамического свойства
     */
    final public function offsetSet($var, $val)
    {
        $this->__set($var, $val);
    }


    /**
     * Интерфейс доступа к классу как к массиву (проверка существования свойства)
     *
     * Позволяет проверить существование значения какого-либо динамического свойства с помощью выражения
     * isset($object[$var])
     * @param string $var наименование динамического свойства
     * @return bool true, если свойство определено, false в противном случае
     */
    final public function offsetExists($var)
    {
        return $this->__isset($var);
    }


    /**
     * Интерфейс доступа к классу как к массиву (удаление свойства)
     *
     * Позволяет удалить динамическое свойство с помощью выражения unset($object[$var])
     * @param string $var наименование динамического свойства
     */
    final public function offsetUnset($var)
    {
        $this->__unset($var);
    }


    /**
     * Интерфейс доступа к классу как к массиву (для чтения)
     *
     * Позволяет получить значение какого-либо динамического свойства с помощью выражения $object[$var]
     * @param string $var наименование динамического свойства
     * @return mixed значение искомого свойства
     */
    final public function offsetGet($var)
    {
        return $this->__get($var);
    }
            // </editor-fold>

            // <editor-fold defaultstate="collapsed" desc="Публичные динамические методы">
    /**
     * Сохраняет данные в таблицу базы данных
     *
     * Сохраняет все обновленные поля типа self::FIELD_REGULAR в базу, для новых объектов также назначая
     * первичный ключ.
     */
    public function commit()
    {
        if (static::$defaultOrderBy && static::$aiPriority) {
            $priorityN = static::$defaultOrderBy;
            if (!$this->_id && !$this->$priorityN) {
                $this->$priorityN = self::$SQL->getvalue("SELECT MAX(" . $priorityN . ") FROM " . self::_tablename()) + 1;
            }
        }
        $this->commit_checkCaches();
        if ($this->_id) {
            $arr = array_merge($this->properties, $this->updates, array(static::_idN() => $this->_id));
            static::$SQL->add(static::_tablename(), $arr, array_merge($this->properties, $this->updates));
        } elseif (self::$classes[\get_called_class()]['AI']) {
            $this->_id = static::$SQL->add(static::_tablename(), $this->updates);
        } else {
            $this->_id = static::$SQL->getvalue("SELECT MAX(" . static::_idN() . ") FROM " . static::_tablename()) + 1;
            $arr = array_merge($this->updates, array(static::_idN() => $this->_id));
            static::$SQL->add(static::_tablename(), $arr);
        }
        $this->properties = array_merge($this->properties, $this->updates);
        if ($this->updates) {
            static::onupdate(array($this->_id));
        }
        $this->updates = array();
        $this->_children = array();
    }


    /**
     * Откатывает изменения в объекте относительно сохраненных в таблице базы данных
     */
    public function rollback()
    {
        static::init();
        // 2015-02-11, AVS: сделал rollback подобно reload'у из-за утечек памяти
        // if ($this->updates) {
        //     foreach ($this->updates as $key => $val) {
        //         $ref = static::getReferenceByFK($key);
        //         if ($ref) {
        //             unset($this->referenced[$ref]);
        //             $parent = array_search($ref, static::$parents);
        //             if ($parent) {
        //                 unset($this->_parents[$parent]);
        //             }
        //         }
        //     }
        // }
        $this->updates = $this->referenced = $this->linked = $this->cognized = $this->_children = $this->_parents = array();
    }


    /**
     * Полностью перезагружает данные в объект из таблицы, очищая всевозможные кэшированные значения
     *
     * Отличие от создания нового объекта состоит в том, что $this->commit() оставляет данные типа
     * self::FIELD_META в их текущем состоянии
     */
    final public function reload()
    {
        static::init();
        $this->properties = $this->updates = $this->referenced = $this->linked = $this->cognized
                          = $this->_children = $this->_parents = array();
        if ($this->_id) {
            $this->__construct_id($this->_id);
        }
    }


    /**
     * Дочерние элементы для данного объекта
     *
     * Возвращает дочерние объекты по именованной ссылке
     * @param string $ref Название ссылки из массива $children
     * @param string $where Условие WHERE для SQL-запроса, получающего список дочерних элементов.
     *               При пустом значении не используется.
     * @param string $addSQL Дополнительные SQL-инструкции
     * @param int $max_level Количество необходимых уровней вложенности дочерних элементов. Значение больше 1
     *                       доступно только по рекурсивной ссылке - в этом случае у каждого элемента
     *                       появляется свойство __level, где хранится уровень вложенности.
     * @return array Индексированный массив дочерних объектов.
     */
    final public function children($ref = null, $where = '', $addSQL = '', $max_level = 1)
    {
        $classname = static::$children[$ref]['classname'];
        if ($max_level != 1 && $classname != \get_called_class()) {
            return false;
        }
        $pidN = static::$children[$ref]['FK'];
        $children = array();
        if ($this->_id) {
            $ch = array($this->_id);
        } else {
            $ch = array(0, '', null);
        }
        $i = 0;
        do {
            $SQL_query = "SELECT *, " . ++$i . " AS __level FROM " . $classname::_tablename()
                       . " WHERE " . $pidN . " IN (" . implode(", ", array_fill(0, count($ch), "?")) . ") "
                       . ($where ? " AND (" . $where . ")" : "") . $addSQL;
            $ch = static::$SQL->get(array($SQL_query, $ch));
            $static = \get_called_class();
            $ch = array_map(function ($x) use ($classname) {
                return new $classname($x);
            }, $ch);
            $children = array_merge($children, $ch);
            $ch = array_map(function ($x) {
                return $x->_id;
            }, $ch);
        } while ($ch && (!$max_level || $i < $max_level));
        return $children;
    }


     /**
     * Родительские элементы для данного объекта
     *
     * Работает только для древовидных структур, т.е. таких, где сущность является родительской для самой себя.
     * Возвращает все родительские элементы по именованной ссылке
     * @param string $ref Название ссылки из массива static::$parents
     * @return array|false Индексированный массив родительских объектов от корневого до непосредственного родителя,
     *                     либо false, если ссылка не рекурсивная
     */
    final public function parents($ref = null)
    {
        $reference = static::$references[static::$parents[$ref]];
        $classname = $reference['classname'];
        if ($classname != \get_called_class()) {
            return false;
        }
        $pidN = $reference['FK'];
        $parents = array();
        $p = $this;
        do {
            $SQL_query = "SELECT * FROM " . static::_tablename() . " WHERE " . static::_idN() . " = ?";
            $p = static::$SQL->getline(array($SQL_query, array($p->$pidN)));
            if ($p) {
                $p = new static($p);
                $parents[] = $p;
            }
        } while ($p && $p->$pidN);
        return array_reverse($parents);
    }


    /**
     * Смена порядка отображения сущности в списке
     *
     * Передвигает сущность в списке себе подобных вверх или вниз
     * @param int|+INF|-INF $step Количество позиций, на которые нужно передвинуть запись.
     *                      При отрицательном либо положительном числовом значении запись передвигается
     *                      на $step позиций вверх или вниз (либо до начала или конца списка, если абсолютное
     *                      значение $step больше количества оставшихся до начала или конца списка записей)
     *                      соответственно
     *                      При значении -INF либо +INF запись перемещается соответственно в начало или
     *                      в конец списка
     * @param string $where Дополнительное условие для поиска, например, общность родительских элементов
     * @param string $priorityN Наименование колонки, отвечающей за приоритет
     * @return bool true, если нет ошибок в сущности (появившихся в процессе выполнения метода либо до него),
     *              false, если ошибки имеются
     */
    public function reorder()
    {
        list($step, $where, $priorityN) = func_get_args();
        $SQL_bind = array();
        $bindAssoc = false;
        if ($where === null) {
            $whereSQL = "1";
            $whereBind = array();
            foreach (static::$references as $ref => $reference) {
                if ($reference['cascade']) {
                    $whereSQL .= " AND " . $reference['FK'] . " = ?";
                    $whereBind[] = $this->{$reference['FK']};
                }
            }
        } else {
            static::$SQL->parseSQLBindings($where, $whereSQL, $whereBind, $bindAssoc);
        }
        if (!$priorityN) {
            if (static::$defaultOrderBy && preg_match('/^\\w+$/i', static::$defaultOrderBy)) {
                $priorityN = static::$defaultOrderBy;
            }
            if (!$priorityN) {
                throw new Exception(self::EXCEPTION_REORDER_PROPERTY_NAME);
            }
        } elseif (!$step) {
            throw new Exception(self::EXCEPTION_REORDER_STEP);
        }
        $SQL_query = "SELECT " . static::_idN() . ", " . $priorityN . "  FROM " . static::_tablename()
                   . " WHERE " . $priorityN . " " . ($step < 0 ? "<" : ">") . ($bindAssoc ? " :SOMEBind_priority " : " ? ")
                   . ($whereSQL ? " AND (" . $whereSQL . ") " : "")
                   . " ORDER BY " . $priorityN . " " . ($step < 0 ? "DESC" : "ASC") . (!is_infinite($step) ? " LIMIT " . abs((int)$step) : "");
        if ($bindAssoc) {
            $SQL_bind = array(':SOMEBind_priority' => (int)$this->$priorityN);
        } else {
            $SQL_bind = array((int)$this->$priorityN);
        }
        if ($whereBind) {
            $SQL_bind = array_merge($SQL_bind, (array)$whereBind);
        }
        $swapwith = static::$SQL->get(array($SQL_query, $SQL_bind));
        $save_ok = true;
        if ($swapwith) {
            for ($i = 0; $i < count($swapwith); $i++) {
                $swapId = $swapwith[$i][static::_idN()];
                $swapPri = (int)($i ? $swapwith[$i - 1][$priorityN] : (int)$this->$priorityN);
                $save_ok &= static::$SQL->update(static::_tablename(), array(static::_idN() . " = ?", $swapId), array($priorityN => $swapPri));
            }
            $this->$priorityN = (int)$swapwith[count($swapwith) - 1][$priorityN];
            static::$SQL->update(static::_tablename(), array(static::_idN() . " = ?", $this->_id), array($priorityN => $this->$priorityN));
        }
        return $save_ok;
    }

            // </editor-fold>

            // <editor-fold defaultstate="collapsed" desc="Публичные статические методы">
    /**
     * Инициализирует класс или систему SOME в целом, либо задает новые значения
     *
     * Тип инициализации зависит от того, от имени какого класса был вызван метод.
     * Инициализация предполагает сбор информации об объекте из базы данных. С помощью этого же метода
     * можно переопределить объект подключения к базе данных либо префикс таблиц.
     * @param \SOME\DB $SQL Объект подключения к базе данных
     * @param string $dbprefix Префикс таблиц баз данных
     * @param array $classes Массив классов во внутреннем формате self::$classes
     * @return true|array При инициализации класса \SOME\SOME возвращает true
     *                    При инициализации наследующего класса — запись класса из массива self::$classes
     */
    final public static function init(\SOME\DB $SQL = null, $dbprefix = null, array $classes = array())
    {
        static::init_setSQL($SQL, $dbprefix);
        if (\get_called_class() == __CLASS__) {
            if ($classes) {
                if ($classes_to_initialize = self::init_checkClasses($classes)) {
                    self::$classes = array_merge(self::$classes, $classes);
                    // Инициализируем упоминаемые классы
                    foreach ($classes_to_initialize as $classname) {
                        $classname::init();
                    }
                }
            }
            return true;
        }
        // Запишем информацию о классе
        if (!isset(self::$classes[\get_called_class()])) {
            static::init_checkSQL();
            $classes_to_initialize = array_merge(static::init_checkReferences(), static::init_checkChildren());
            static::init_checkParents();
            static::init_checkLinks();
            self::$classes[\get_called_class()] = array('tablename' => static::$dbprefix . static::$tablename, 'fields' => array(), 'AI' => false);
            static::init_getFields();
            // Инициализируем упоминаемые классы
            foreach ($classes_to_initialize as $classname) {
                $classname::init();
            }
        }
        return self::$classes[\get_called_class()];
    }


    /**
     * Удаляет объект и его окружение согласно установленным связям
     *
     * @param \SOME\SOME Объект(ы) для удаления
     */
    public static function delete(SOME $object)
    {
        $classname = \get_class($object);
        if ($object->_id) {
            $classname::ondelete(array($object->_id));
            $classname::onupdate(array($object->_id));
            // 2017-02-10, AVS: переместили удаление текущей сущности в конец, т.к. логичнее удалять ее последней,
            // к тому же возникали проблемы с "висящими" ссылками в RAAS\CMS\Pages при каскадном удалении
            $SQL_query = "DELETE FROM " . $classname::_tablename() . " WHERE " . $classname::_idN() . " = ?";
            $SQL_bind = array($object->_id);
            $classname::$SQL->query(array($SQL_query, $SQL_bind));
        }
        $object = null;
    }


    /**
     * Получает объект по соответствию поля значению
     *
     * Считается что заданное поле должно быть уникальным, поэтому никаких директив сортировки и группировки не предусмотрено.
     * В противном случае рекомендуется пользоваться методом getSQLObject
     * @param string $field - поле таблицы
     * @param mixed $value - значение поля
     */
    final public static function importBy($field, $value)
    {
        if (static::typeof($field) == static::FIELD_REGULAR) {
            return static::getSQLObject(array("SELECT * FROM " . static::_tablename() . " WHERE " . $field . " = ?", $value));
        }
        return null;
    }

    /**
     * Получение набора сущностей согласно схеме классов и дополнительным параметрам
     *
     * Метод возвращает массив объектов текущего класса.
     * Аргументы могут идти в произвольном порядке
     * @param array $params - дополнительные параметры в виде массива (все элементы опциональные):
     *                        array(
     *                            'select' => array(string[]|array[]),   // Условия для подстановки в выражение SELECT. Условия объединяются запятой
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                                                                   // По умолчанию равно [имя класса].*
     *                            'from' => array(string[]),             // массив строк вида "[имя таблицы] AS [псевдоним] ON [условие подключения]".
     *                                                                   // Таблицы подключаются через LEFT JOIN.
     *                                                                   // Первой всегда присутствует таблица текущего класса с псевдонимом, равным имени класса.
     *                                                                   // Псевдоним не обязателен.
     *                                                                   // В случае использования метода по связке, будет добавлена также таблица-связка без псевдонима
     *                            'where' => array(string[]|array[]),    // Условия для подстановки в выражение WHERE. Условия объединяются оператором AND.
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                                                                   // При использовании метода по ссылке или связке условия связок добавляются автоматически
     *                            'groupBy' => string|array,             // Условие для группировки результатов SQL-запроса.
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                            'orderBy' => string|array              // Условие для сортировки результатов SQL-запроса
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                        )
     * @param \SOME\Pages $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *                    После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     */
    public static function getSet()
    {
        // Распознаем аргументы
        static::getSet_parseParams(func_get_args(), $Pages, $params);

        // Проверка недостающих таблиц
        static::getSet_checkTables($params, $bindAssoc, $usedAliases, $requiredAliases);

        // Добавление недостающих таблиц и параметров
        static::getSet_addMissingTables($params, $usedAliases, $requiredAliases);

        // Составление SQL-запроса
        $sql = $SQL_bind = array();
        foreach (array('select', 'from', 'where') as $key) {
            foreach ($params[$key] as $val) {
                static::$SQL->parseSQLBindings($val, $x, $y, $bindAssoc);
                $sql[$key][] = $x;
                $SQL_bind = array_merge((array)$SQL_bind, (array)$y);
            }
        }
        foreach (array('groupBy', 'orderBy') as $key) {
            static::$SQL->parseSQLBindings($params[$key], $x, $y, $bindAssoc);
            $sql[$key] = $x;
            $SQL_bind = array_merge((array)$SQL_bind, (array)$y);
        }
        $sql['where'] = array_map(function ($x) {
            return "(" . $x . ")";
        }, array_filter($sql['where'], 'trim'));
        $SQL_query = " SELECT SQL_CALC_FOUND_ROWS " . implode(", ", $sql['select']) . " FROM " . implode(" LEFT JOIN ", $sql['from'])
                   . ($sql['where'] ? " WHERE " . implode(" AND ", $sql['where']) : "")
                   . ($sql['groupBy'] ? " GROUP BY " . $sql['groupBy'] : "") . ($sql['orderBy'] ? " ORDER BY " . $sql['orderBy'] : "");
        // echo $SQL_query; print_r ($SQL_bind); exit;
        return static::getSQLSet($SQL_bind ? array($SQL_query, $SQL_bind) : $SQL_query, $Pages);
    }


    /**
     * Получение набора дочерних/ссылочных сущностей согласно схеме классов и дополнительным параметрам
     *
     * Метод возвращает массив дочерних/ссылочных объектов текущего класса.
     * Аргументы могут идти в произвольном порядке
     * @param string $child Наименование дочерней ссылки или связки из схемы класса.
     * @param array $params - дополнительные параметры в виде массива (все элементы опциональные):
     *                        array(
     *                            'select' => array(string[]|array[]),   // Условия для подстановки в выражение SELECT. Условия объединяются запятой
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                                                                   // По умолчанию равно [имя класса].*
     *                            'from' => array(string[]),             // массив строк вида "[имя таблицы] AS [псевдоним] ON [условие подключения]".
     *                                                                   // Таблицы подключаются через LEFT JOIN.
     *                                                                   // Первой всегда присутствует таблица текущего класса с псевдонимом, равным имени класса.
     *                                                                   // Псевдоним не обязателен.
     *                                                                   // В случае использования метода по связке, будет добавлена также таблица-связка без псевдонима
     *                            'where' => array(string[]|array[]),    // Условия для подстановки в выражение WHERE. Условия объединяются оператором AND.
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                                                                   // При использовании метода по ссылке или связке условия связок добавляются автоматически
     *                            'groupBy' => string|array,             // Условие для группировки результатов SQL-запроса.
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                            'orderBy' => string|array              // Условие для сортировки результатов SQL-запроса
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                        )
     * @param \SOME\Pages $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *                    После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     */
    final public function getChildSet()
    {
        // Распознаем аргументы
        $this->getSet_parseParams(func_get_args(), $Pages, $params, $child, $link);

        // Проверка недостающих таблиц
        static::getSet_checkTables($params, $bindAssoc, $usedAliases, $requiredAliases);

        if ($child) {
            if ($classname = $child['classname']) {
                $class = Namespaces::getClass($classname);
                if ($bindAssoc) {
                    $row = array("`" . $class . "`.`" . $child['FK'] . "` = :SOMEBind_" . $class . "_" . $child['FK'], array(':SOMEBind_' . $class . '_' . $child['FK'] => (int)$this->_id));
                } else {
                    $row = array("`" . $class . "`.`" . $child['FK'] . "` = ?", (int)$this->_id);
                }
                array_unshift($params['where'], $row);
                return $classname::getSet($params, $Pages);
            }
        } elseif ($link) {
            if (($classname = $link['classname']) && ($tablename = $link['tablename'])) {
                $tablename = $classname::_dbprefix() . $tablename;
                $class = Namespaces::getClass($classname);
                $params['from'][] = "`" . $tablename . "` ON `" . $tablename . "`.`" . $link['field_to'] . "` = `" . $class . "`.`" . $classname::_idN() . "`";
                if ($bindAssoc) {
                    $row = array("`" . $tablename . "`.`" . $link['field_from'] . "` = :SOMEBind_" . $tablename . "_" . $link['field_from'], array(':SOMEBind_' . $tablename . '_' . $link['field_from'] => (int)$this->_id));
                } else {
                    $row = array("`" . $tablename . "`.`" . $link['field_from'] . "` = ?", (int)$this->_id);
                }
                array_unshift($params['where'], $row);
                return $classname::getSet($params, $Pages);
            }
        }
        return null;
    }


    /**
     * Возвращает значение первичного ключа
     * @return string
     */
    final public function __id()
    {
        return $this->_id;
    }


    /**
     * Получение набора сущностей из SQL-запроса
     *
     * Метод выполняет SQL-запрос и при необходимости формирует из него список сущностей с постраничной разбивкой
     * @param string $SQL_query текст SQL-запроса
     * @param \SOME\Pages|null $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *                         После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     *                         В случае установки в null, постраничной разбивки не происходит.
     * @param string|callback|null $type Принудительное назначение типа.
     *                                   При указании функции, элементом массива становится результат этой функции от ассоциативного
     *                                   массива-строки из таблицы базы данных.
     *                                   При указании строки, элементом массива становится экземпляр класса с названием равным этой строке,
     *                                   созданный от ассоциативного массива-строки из таблицы базы данных.
     *                                   При указании null из класса, дочернего к SOME, элементом массива становится экземпляр этого класса,
     *                                   созданный от ассоциативного массива-строки из таблицы базы данных.
     *                                   При указании null из класса SOME, элементом массива является ассоциативный массив-строка из таблицы
     *                                   базы данных.
     * @return array
     */
    final public static function getSQLSet($SQL_query, $Pages = null, $type = null)
    {
        static::init();
        // Проверка правильности постраничной разбивки
        do {
            // Получение набора строк из базы данных
            $Set = array();
            $sql = $SQL_query;
            if ($Pages) {
                if (is_array($SQL_query)) {
                    $sql[0] = $SQL_query[0] . " LIMIT " . (int)$Pages->from . ", " . (int)$Pages->rows_per_page;
                } else {
                    $sql = $SQL_query . " LIMIT " . (int)$Pages->from . ", " . (int)$Pages->rows_per_page;
                }
            }
            $temp = static::$SQL->get($sql);
            if ($Pages) {
                $total = static::$SQL->getvalue("SELECT FOUND_ROWS()");
            }

            // Формирование массива сущностей
            for ($i = 0; $i < count($temp); $i++) {
                if (\get_called_class() == __CLASS__) {
                    if (is_callable($type)) {
                        $Set[] = $type($temp[$i]);
                    } elseif ($type !== null) {
                        $Set[] = new $type($temp[$i]);
                    } else {
                        $Set[] = $temp[$i];
                    }
                } else {
                    $Set[] = new static($temp[$i]);
                }
            }
        } while ($Pages && !$Pages->check(count($Set), $total));
        return $Set;
    }

    /**
     * Получение сущности из SQL-запроса
     *
     * Метод выполняет SQL-запрос и при необходимости формирует из него сущность
     * @param string|array $SQL_query текст SQL-запроса или массив подстановочного запроса
     * @param \SOME\Pages|null $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *                         После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     *                         В случае установки в null, постраничной разбивки не происходит.
     * @param string|callback|null $type Принудительное назначение типа.
     *                                   При указании функции, элементом массива становится результат этой функции от ассоциативного
     *                                   массива-строки из таблицы базы данных.
     *                                   При указании строки, элементом массива становится экземпляр класса с названием равным этой строке,
     *                                   созданный от ассоциативного массива-строки из таблицы базы данных.
     *                                   При указании null из класса, дочернего к SOME, элементом массива становится экземпляр этого класса,
     *                                   созданный от ассоциативного массива-строки из таблицы базы данных.
     *                                   При указании null из класса SOME, элементом массива является ассоциативный массив-строка из таблицы
     *                                   базы данных.
     * @return array
     */
    final public static function getSQLObject($SQL_query, $type = null)
    {
        static::init();
        if (is_array($SQL_query)) {
            $SQL_query[0] = $SQL_query[0] . (!stristr($SQL_query[0], "LIMIT") ? " LIMIT 1" : "");
        } else {
            $SQL_query = $SQL_query . (!stristr($SQL_query, "LIMIT") ? " LIMIT 1" : "");
        }
        // Получение набора строк из базы данных
        $temp = static::$SQL->getline($SQL_query);

        // Формирование сущности
        if (\get_called_class() == __CLASS__) {
            if (is_callable($type)) {
                $row = $type($temp);
            } elseif ($type !== null) {
                $row = new $type($temp);
            } else {
                $row = $temp;
            }
        } else {
            $row = new static($temp);
        }
        return $row;
    }

    /**
     * Получение набора сущностей из массива
     *
     * Метод формирует список сущностей из массива, при необходимости производя постраничную разбивку
     * @param array $array Входной массив. Передается по ссылке для уменьшения расхода памяти.
     * @param \SOME\Pages|null $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *                         После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     *                         В случае установки в null, постраничной разбивки не происходит.
     * @param string|callback|null $type Принудительное назначение типа.
     *                                   При указании функции, элементом массива становится результат этой функции от элемента $array.
     *                                   При указании строки, элементом массива становится экземпляр класса с названием равным этой строке,
     *                                   созданный от элемента $array.
     *                                   При указании null из класса, дочернего к SOME, элементом массива становится экземпляр этого класса,
     *                                   созданный от элемента $array.
     *                                   При указании null из класса SOME, элементом массива является элемент $array.
     * @return array
     */
    final public static function getArraySet(&$array, $Pages = null, $type = null)
    {
        static::init();
        do {
            $Set = array();
            $temp = ($Pages ? array_slice($array, (int)$Pages->from, (int)$Pages->rows_per_page) : $array);
            for ($i = 0; $i < count($temp); $i++) {
                if (is_object($temp[$i])) {
                    $Set[] = $temp[$i];
                } elseif (is_callable($type)) {
                    $Set[] = $type($temp[$i]);
                } elseif ($type !== null) {
                    $Set[] = new $type($temp[$i]);
                } elseif (\get_called_class() != __CLASS__) {
                    $Set[] = new static($temp[$i]);
                } else {
                    $Set[] = $temp[$i];
                }
            }
        } while ($Pages && !$Pages->check(count($Set), count($array)));
        return $Set;
    }


    /**
     * Возвращает наименование таблицы класса (с учетом префикса таблиц)
     * @return string
     */
    final public static function _tablename()
    {
        static::init();
        return self::$classes[\get_called_class()]['tablename'];
    }


    /**
     * Возвращает наименование колонки первичного ключа
     * @return string
     */
    final public static function _idN()
    {
        static::init();
        return self::$classes[\get_called_class()]['PRI'];
    }


    /**
     * Возвращает значение статического свойства static::$references
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    final public static function _references($key = null)
    {
        return $key ? static::$references[$key] : static::$references;
    }


    /**
     * Возвращает значение статического свойства static::$children
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    final public static function _children($key = null)
    {
        return $key ? static::$children[$key] : static::$children;
    }


    /**
     * Возвращает значение статического свойства static::$parents
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    final public static function _parents($key = null)
    {
        return $key ? static::$parents[$key] : static::$parents;
    }


    /**
     * Возвращает значение статического свойства static::$links
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    final public static function _links($key = null)
    {
        return $key ? static::$links[$key] : static::$links;
    }


    /**
     * Возвращает значение статического свойства static::$caches
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    final public static function _caches($key = null)
    {
        return $key ? static::$caches[$key] : static::$caches;
    }


    /**
     * Возвращает значение статического свойства static::$cognizableVars
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    final public static function _cognizableVars($key = null)
    {
        return $key ? static::$cognizableVars[$key] : static::$cognizableVars;
    }


    /**
     * Возвращает значение статического свойства static::$dbprefix
     * @return string
     */
    final public static function _dbprefix()
    {
        return static::$dbprefix;
    }


    /**
     * Возвращает значение статического свойства static::$defaultOrderBy
     * @return string
     */
    final public static function _defaultOrderBy()
    {
        return static::$defaultOrderBy;
    }


    /**
     * Возвращает значение статического свойства static::$aiPriority
     * @return string
     */
    final public static function _aiPriority()
    {
        return static::$aiPriority;
    }


    /**
     * Возвращает значение статического свойства static::$SQL
     * @return \SOME\DB
     */
    final public static function _SQL()
    {
        return static::$SQL;
    }


    /**
     * Возвращает значение статического свойства static::$objectCascadeUpdate
     * @return bool
     */
    final public static function _objectCascadeUpdate()
    {
        return static::$objectCascadeUpdate;
    }


    /**
     * Возвращает значение статического свойства static::$objectCascadeDelete
     * @return bool
     */
    final public static function _objectCascadeDelete()
    {
        return static::$objectCascadeDelete;
    }


    /**
     * Возвращает структуру классов
     */
    final public static function _classes()
    {
        return self::$classes;
    }


    /**
     * Метод автозагрузки для классов в пространстве имен SOME
     *
     * Метод удовлетворяет требованиям, предъявляемым к функции-кандидату на автозагрузчик
     * @param string classname имя класса с указанием пространств имен
     */
    final public static function autoload($classname)
    {
        $ns_array = explode('\\', trim($classname, '\\'));
        $class_alias = array_pop($ns_array);
        $ns = implode('\\', $ns_array);
        if ($ns_array && $ns_array[0] == 'SOME') {
        }
        if (is_file(__DIR__ . '/' . strtolower($class_alias) . '.class.php')) {
            @include_once __DIR__ . '/' . strtolower($class_alias) . '.class.php';
        } elseif (is_file(__DIR__ . '/' . strtolower($class_alias) . '.interface.php')) {
            @include_once __DIR__ . '/' . strtolower($class_alias) . '.interface.php';
        }
    }
            // </editor-fold>
        // </editor-fold>

        // <editor-fold defaultstate="collapsed" desc="Защищенные методы класса">
    /**
     * Возвращает наименование сопряженного класса по именованной связке
     *
     * Подразумевается, что будет возвращен класс, имеющий связку с такой же таблицей, что и данный класс,
     * но с полем field_from, соответствующим полю field_to текущего класса;
     * либо класс, имеющий данную таблицу в качестве собственной
     * @param string $var Наименование именованной связки из массива static::$links
     * @return string
     * @todo Доделать возвращение классов с собственной таблицей
     */
    final protected static function getClassByLink($var)
    {
        $tablename = static::$links[$var]['tablename'];
        $field = static::$links[$var]['field_to'];
        foreach (self::$classes as $classname => $class) {
            $class_dbprefix = $classname::$dbprefix;
            $static_dbprefix = static::$dbprefix;
            $callback = function ($x) use ($classname, $tablename, $field, $class_dbprefix, $static_dbprefix) {
                return isset($x['tablename'], $x['field_from'])
                        && (($class_dbprefix . $x['tablename']) == ($static_dbprefix . $tablename))
                        && $x['field_from'] == $field;
            };
            if (array_filter($classname::$links, $callback)) {
                return $classname;
            }
        }
        return false;
    }


    /**
     * Возвращает (если есть) именованную ссылку по внешнему ключу.
     *
     * @param string $FK Наименование поля, являющегося внешним ключом
     * @return string|false Именованная ссылка из массива static::$references, либо false в случае отсутствия
     */
    final public static function getReferenceByFK($FK)
    {
        $temp = array_filter(static::$references, function ($x) use ($FK) {
            return $x['FK'] == $FK;
        });
        if ($temp) {
            return array_shift(array_keys($temp));
        }
        return false;
    }


    /**
     * Определяет, какие классы будут затронуты при изменении текущего
     *
     * При изменении текущего класса будут затронуты классы, содержащие внешние кэши с использованием
     * ссылок на текущий класс.
     * @return array массив вида array([имя класса] => array([имя кэша класса] => [тело кэша класса], ...), ...)
     */
    final protected static function affects()
    {
        $temp = array();
        foreach (self::$classes as $classname => $class) {
            $aff = $classname::getCachesByClassname(\get_called_class());
            if ($aff) {
                $temp[$classname] = $aff;
            }
        }
        return $temp;
    }


    /**
     * Определяет, есть ли в данном классе кэши, зависимые от класса $classname
     *
     * @param string $classname имя класса для проверки зависимости
     * @return array массив вида array([имя кэша] => [тело кэша], ...)
     */
    final protected static function getCachesByClassname($classname)
    {
        $aff = array();
        foreach (static::$caches as $FC => $cache) {
            foreach ($cache['affected'] as $ref) {
                if (static::$references[$ref]['classname'] == $classname) {
                    $aff[$FC] = $cache;
                    break;
                }
            }
        }
        return $aff;
    }


    /**
     * Определяет, для каких классов данный класс является связанным.
     *
     * Возвращает классы, содержащие ссылки на данный
     * @param bool|null $cascade Фильтр по каскадируемости ссылок.
     *                  Если установлен в null, возвращаются классы с любым типом ссылок.
     *                  Если true или false — соответственно только с каскадируемыми либо некаскадируемыми
     *                  ссылками
     * @return array массив вида array([имя класса] => array([имя ссылки класса] => [ссылка класса], ...), ...)
     */
    final protected static function isReferencedBy($cascade = null)
    {
        $temp = array();
        foreach (self::$classes as $classname => $class) {
            $aff = $classname::getReferencesByClassname(\get_called_class(), $cascade);
            if ($aff) {
                $temp[$classname] = $aff;
            }
        }
        return $temp;
    }


    /**
     * Определяет, есть ли в данном классе ссылки на класс $classname
     *
     * @param string $classname имя класса для проверки ссылок
     * @param bool|null $cascade Фильтр по каскадируемости ссылок.
     *                  Если установлен в null, возвращаются классы с любым типом ссылок.
     *                  Если true или false — соответственно только с каскадируемыми либо некаскадируемыми
     *                  ссылками
     * @return array массив вида array([имя ссылки] => [ссылка], ...)
     */
    final protected static function getReferencesByClassname($classname, $cascade = null)
    {
        $temp = array();
        foreach (static::$references as $ref => $reference) {
            if ($reference['classname'] == $classname && ($cascade === null || $reference['cascade'] == $cascade)) {
                $temp[$ref] = $reference;
            }
        }
        return $temp;
    }


    /**
     * Упорядочение сущностей
     *
     * Метод выставляет значения в порядке отображения сущностей (свойство $priorityN) в таблице
     * последовательными номерами (1, 2, 3... и т.д.). Используется для непрерывного и экономного
     * расходования порядковых номеров при больших объемах данных.
     * @param string $priorityN Наименование колонки, отвечающей за приоритет
     * @return bool true, если упорядочение проведено успешно, false, если возникли ошибки
     */
    final public static function priorityRepair($priorityN = null)
    {
        static::init();
        if (!$priorityN && static::$defaultOrderBy) {
            $priorityN = static::$defaultOrderBy;
        }
        if (!$priorityN) {
            throw new Exception(self::EXCEPTION_PRIORITYREPAIR_PROPERTY_NAME);
        }
        $SQL_query = "SET @priority = 0; UPDATE " . static::_tablename() . " SET " . $priorityN . " = (@priority := @priority + 1) WHERE 1 ORDER BY " . $priorityN;
        static::$SQL->query($SQL_query);
        return true;
    }
        // </editor-fold>

        // <editor-fold defaultstate="collapsed" desc="Приватные методы класса">
            // <editor-fold defaultstate="collapsed" desc="Приватные динамические методы класса">
    /**
     * Инициализирует объект массивом данных
     *
     * При инициализации объекта массивом данных производятся следующие действия:
     * - Устанавливается ID (если есть)
     * - Устанавливаются $updates
     * - Устанавливаются $meta
     * - Устанавливаются $cognizable (т.к. мы можем вычислять их и на уровне запроса)
     * @param array $row Ассоциативный массив вида array([имя поля] => [значение поля])
     */
    final private function __construct_array(array $row)
    {
        foreach ($row as $key => $val) {
            if (isset(static::$aliases[$key])) {
                $key = static::$aliases[$key];
            }
            switch (self::typeof($key)) {
                case self::FIELD_ID:
                    if (!$this->_id) {
                        $this->_id = $val;
                    }
                    break;
                case self::FIELD_REGULAR:
                case self::FIELD_META:
                case self::FIELD_COGNIZABLE:
                    $prop = self::$varsByTypes[self::typeof($key)];
                    $this->{$prop}[$key] = $val;
                    break;
            }
        }
    }


    /**
     * Инициализирует объект через другой SOME-объект
     *
     * При совпадении типов копируются все данные
     * При различных типах копируются только ID, properties, updates и meta
     * @param \SOME\SOME $row SOME-объект
     */
    final private function __construct_object(\SOME\SOME $row)
    {
        if (\get_class($row) == \get_class($this)) {
            $mask = 0xFF;
        } else {
            $mask = 0x83;
        }
        $this->__construct_array($row->getArrayCopy($mask));
    }


    /**
     * Инициализирует объект первичным ключом
     *
     * При инициализации объекта числом (первичным ключом) производятся следующие действия:
     * - Устанавливается ID
     * - Устанавливаются $properties
     * @param mixed $id
     */
    final private function __construct_id($id)
    {
        $SQL_query = "SELECT * FROM " . static::_tablename() . " WHERE " . static::_idN() . " = ? LIMIT 1";
        $row = static::$SQL->getline(array($SQL_query, array($id)));
        foreach ((array)$row as $key => $val) {
            switch (self::typeof($key)) {
                case self::FIELD_ID:
                    if (!$this->_id) {
                        $this->_id = $val;
                    }
                    break;
                case self::FIELD_REGULAR:
                    $this->properties[$key] = $val;
                    break;
            }
        }
    }


    /**
     * Получает объект по именованной ссылке из массива $references
     *
     * Именованные ссылки вычисляются по первому вызову и записываются в массив $this->referenced
     * @param string $var Наименование свойства
     * @return mixed Значение свойства
     */
    final private function __get_reference($var)
    {
        if (!isset($this->referenced[$var])) {
            $classname = static::$references[$var]['classname'];
            $id = static::$references[$var]['FK'];
            $this->referenced[$var] = new $classname($this->$id);
        }
        return $this->referenced[$var];
    }


    /**
     * Получает массив по таблице-связке из массива $links
     *
     * Связки вычисляются по таблицам.
     * Если есть соответствующая field_from <-> field_to сущность и связка вызвана без суффикса _id,
     * то возвращается массив объектов. Если же соответствующего класса нет, либо связка вызвана
     * с суффиксом _id, возвращаются первичные ключи предполагаемых объектов
     * @param string $var Наименование свойства
     * @return array Массив объектов либо ключей
     */
    final private function __get_links($var)
    {
        ($ids = preg_match('/(.*?)_ids$/i', $var, $regs)) ? ($var = $regs[1]) : false;
        $classname = static::getClassByLink($var);
        if (!$classname && isset(static::$links[$var]['classname']) && static::$links[$var]['classname']) {
            $classname = static::$links[$var]['classname'];
        }
        if (!isset($this->linked[$var])) {
            static::__get_links_getLinked($var, $classname);
        }
        return ($ids ? array_map(function ($x) {
            return $x->_id;
        }, $this->linked[$var]) : $this->linked[$var]);
    }


    /**
     * Получает массив по таблице-связке из массива $links, для использования в методе $this->__get_links()
     *
     * В отличие от метода $this->__get_links() вычисляет массив объектов класса $classname (если он задан)
     * по именованной связке $var, либо массив значений поля field_to связки $var, если параметр $classname
     * не задан. В обоих случаях field_to принимается равным значению первичного ключа текущего объекта
     * @param string $var Наименование свойства
     * @param string|null $classname Имя класса, экземплярами которого должны быть возвращаемые в массиве
     *                    объекты, либо null для возврата значений field_to
     */
    final private function __get_links_getLinked($var, $classname = null)
    {
        $tl = static::$dbprefix . static::$links[$var]['tablename'];
        $ffrom = static::$links[$var]['field_from'];
        $fto = static::$links[$var]['field_to'];
        if (static::$links[$var]['field_to']) {
            if ($classname) {
                $te = $classname::_tablename();
                $idN = $classname::_idN();
                $orderBy = $classname::_defaultOrderBy();
                // 2013-12-08 добавлено tl.* для получения промежуточных параметров ссылок
                // 2014-02-12 переставили местами tl, te - иначе при присутствии в tl поля id выдается id исходной сущности, а не искомых
                $SQL_query = "SELECT tl.*, te.* FROM " . $te . " AS te JOIN " . $tl . " AS tl ON tl." . $fto . " = te." . $idN
                           . " WHERE tl." . $ffrom . " = ?"
                           . ($orderBy ? " ORDER BY te." . $orderBy : "");
                $SQL_result = static::$SQL->get(array($SQL_query, $this->_id));
                $this->linked[$var] = array_map(function ($x) use ($classname) {
                    return new $classname($x);
                }, (array)$SQL_result);
            } elseif (static::$links[$var]['field_to']) {
                $SQL_query = "SELECT " . $fto . " FROM " . $tl . " WHERE " . $ffrom . " = ?";
                $this->linked[$var] = static::$SQL->getcol(array($SQL_query, $this->_id));
            }
        } else {
            $SQL_query = "SELECT * FROM " . $tl . " WHERE " . $ffrom . " = ?";
            $SQL_result = static::$SQL->get(array($SQL_query, $this->_id));
            $this->linked[$var] = static::$SQL->get(array($SQL_query, $this->_id));
        }
    }


    /**
     * Получает динамические ("осознаваемые") свойства по функциям из массива $cognizableVars
     *
     * Осознаваемые свойства вычисляются при первом вызове
     * @param string $var Наименование свойства
     * @return mixed Значение свойства
     */
    final private function __get_cognizable($var)
    {
        if (!isset($this->cognized[$var]) && \in_array($var, static::$cognizableVars) && is_callable(array($this, '_' . $var))) {
            $this->cognized[$var] = $this->{'_' . $var}($this);
        }
        return $this->cognized[$var];
    }


    /**
     * Получает дочерние свойства первого либо всех уровней по именованной ссылке
     *
     * @param string $var Наименование свойства (совпадает с ключом из массива static::$children)
     * @return mixed Значение свойства
     */
    final private function __get_children($var)
    {
        $all = preg_match('/^all_/i', $var);
        $ids = preg_match('/_ids$/i', $var);
        $ref = self::clear_var($var);
        $var2 = ($all ? 'all_' : '') . $ref;
        if (!isset($this->_children[$var2])) {
            $classname = static::$children[$ref]['classname'];
            $orderBy = $classname::_defaultOrderBy();
            $this->_children[$var2] = $this->children($ref, '', ($orderBy ? " ORDER BY " . $orderBy : ""), $all ? 0 : 1);
            if ($all) {
                $this->_children[$ref] = array_filter($this->_children[$var2], function ($x) {
                    return $x->__level == 1;
                });
            }
        }
        return ($ids ? array_map(function ($x) {
            return $x->_id;
        }, $this->_children[$var2]) : $this->_children[$var2]);
    }


    /**
     * Получает родительские свойства
     *
     * Родительские свойства могут быть вычислены только для рекурсивной ссылки.
     * @param string $var Наименование свойства (совпадает с ключом из массива static::$parents)
     * @return mixed Значение свойства
     */
    final private function __get_parents($var)
    {
        $ids = preg_match('/_ids$/i', $var);
        $ref = self::clear_var($var);
        if (!isset($this->_parents[$ref])) {
            $this->_parents[$ref] = $this->parents($ref);
        }
        return ($ids ? array_map(function ($x) {
            return $x->_id;
        }, $this->_parents[$ref]) : $this->_parents[$ref]);
    }


    /**
     * Удаляет сохраненные в кэше значения дочерних элементов
     * @param string $var Наименование свойства
     */
    final private function __unset_children($var)
    {
        $var = self::clear_var($var);
        unset($this->{self::$varsByTypes[$key]}[$var]);
        unset($this->{self::$varsByTypes[$key]}['all_' . $var]);
    }


    /**
     * Удаляет обновления свойств, хранимых в таблице базы данных (тип self::FIELD_REGULAR)
     * @param string $var Наименование свойства
     */
    final private function __unset_regular($var)
    {
        if (isset($this->updates[$var])) {
            $ref = static::getReferenceByFK($var);
            if ($ref) {
                unset($this->referenced[$ref]);
                $parent = array_search($ref, static::$parents);
                if ($parent) {
                    unset($this->_parents[$parent]);
                }
            }
            unset($this->updates[$var]);
            $this->cognized = array();
        }
    }


    /**
     * Проверяет кэши после сохранения
     *
     * Если у объекта изменены свойства, порождающие кэш, а сам кэш не изменен, система автоматически меняет кэш
     */
    final private function commit_checkCaches()
    {
        $affectedCaches = array();
        foreach (static::$caches as $FC => $cache) {
            if (!isset($this->updates[$FC])) {
                foreach ($cache['affected'] as $refName) {
                    $reference = static::$references[$refName];
                    if ((isset($this->updates[$reference['FK']]) ? $this->updates[$reference['FK']] : null) != (isset($this->properties[$reference['FK']]) ? $this->properties[$reference['FK']] : null)) {
                        $affectedCaches[$FC] = $cache;
                        break;
                    }
                }
            }
        }
        foreach ($affectedCaches as $FC => $cache) {
            $F = $W = array();
            foreach ($cache['affected'] as $refName) {
                $reference = static::$references[$refName];
                $classname = $reference['classname'];
                $F[] = $classname::_tablename() . " AS " . $refName . ($F ? " ON 1" : "");
                $W[] = "(" . $refName . "." . $classname::_idN() . " = " . static::$SQL->quote($this->{$reference['FK']}) . ")";
            }
            $cacheSQL = $cache['sql'];
            $cacheSQL = preg_replace_callback('/`?__SOME__`?\.`?(\w+)`?/umi', function ($matches) {
                return static::$SQL->quote($this->{$matches[1]});
            }, $cacheSQL);
            $SQL_query = "SELECT (" . $cacheSQL . ") FROM " . implode(" LEFT JOIN ", $F) . " WHERE " . implode(" AND ", $W);
            $c = static::$SQL->getvalue($SQL_query);
            if (($c === null) || ($c === false)) {
                $c = static::$SQL->getvalue("SELECT DEFAULT(" . $FC . ") FROM " . static::_tablename() . " LIMIT 1");
            }
            $this->$FC = $c;
        }
    }

    /**
     * Принимает все изменения как синхронизированные параметры без записи в базу
     */
    public function trust()
    {
        // 2017-09-01, AVS: поменял с final private на public, вдруг понадобится
        $this->properties = array_merge($this->properties, $this->updates);
        $this->updates = array();
        $this->_children = array();
    }
            // </editor-fold>

            // <editor-fold defaultstate="collapsed" desc="Приватные статические методы класса">
                // <editor-fold defaultstate="collapsed" desc="Семейство onupdate">
    /**
     * Событие, наступающее при изменении объекта/группы объектов данного класса
     *
     * Реализует каскадные удаления/обновления. При удалении объектов часть, отвечающая за обновление
     * связанных кэшами и некаскадируемыми ссылками объектов, реализована здесь же.
     * @param array $ids Массив первичных ключей изменяемых/удаляемых объектов данного класса
     * @param bool $ondelete При установке в true считается что объекты были удалены
     *             (дополнительная проверка на изменение ссылок)
     * @return bool Возвращает true, если пройден цикл каскадного изменения, либо false в случае, если
     *              отсутствовали первичные ключи изменяемых/удаляемых элементов
     */
    final private static function onupdate(array $ids, $ondelete = false)
    {
        if (!$ids) {
            return false;
        }
        $SQL = static::$SQL;
        $ids = array_map(function ($x) use ($SQL) {
            return $SQL->quote($x);
        }, $ids);
        $classes = \array_keys(\array_merge(static::affects(), $ondelete ? static::isReferencedBy(false): array()));
        foreach ($classes as $classname) {
            $SQL = $classname::onupdate_getSQL(\get_called_class(), $ids, $ondelete);
            if (!$SQL) {
                return false;
            }
            list($SQL_query, $SQL_update) = $SQL;
            if ($classname::$objectCascadeUpdate) {
                $SQL_result = $classname::getSQLSet($SQL_query);
                foreach ($SQL_result as $row) {
                    $row->trust();
                    $affected = array_filter(array_keys($row->meta), function ($x) {
                        return substr($x, 0, 8) == '__SOME__';
                    });
                    foreach ($affected as $key) {
                        $row->{str_replace('__SOME__', '', $key)} = $row->$key;
                    }
                    $row->commit();
                }
            } else {
                $new_ids = $classname::$SQL->getcol($SQL_query);
                $classname::$SQL->query($SQL_update);
                $classname::onupdate($new_ids);
            }
        }
        return true;
    }


    /**
     * Получает SQL-запросы на выборку и модификацию объектов, для использования в методе static::onupdate()
     *
     * @param string $event_class Наименование класса, изменение/удаление объекта которого повлекло изменение данного класса
     * @param array $ids Массив первичных ключей изменяемых/удаляемых объектов класса $event_class
     * @param bool $ondelete При установке в true считается что объекты были удалены
     *             (дополнительная проверка на изменение ссылок)
     * @return array|false Массив вида array([запрос на выборку], [запрос на модификацию]),
     *                     либо false в случае отсутствия задействованных классов.
     */
    final private static function onupdate_getSQL($event_class, array $ids, $ondelete)
    {
        $S = array("__SOME__." . (static::$objectCascadeUpdate ? "*" : static::_idN()));
        $F = array(static::_tablename() . " AS __SOME__");
        $W = $U = array();
        foreach (static::getCachesByClassname($event_class) as $FC => $cache) {
            if (static::$objectCascadeUpdate) {
                $S[$FC] = static::onupdate_getSQL_whatByCache($FC);
            }
            $U[$FC] = static::onupdate_getSQL_updateByCache($FC);
            $F = array_merge($F, static::onupdate_getSQL_fromByCache($FC));
            $W[] = static::onupdate_getSQL_whereByCache($FC, \get_called_class(), $ids);
        }
        if ($ondelete) {
            foreach (static::getReferencesByClassname($event_class, false) as $ref => $reference) {
                if (static::$objectCascadeUpdate) {
                    $S[$reference['FK']] = static::onupdate_getSQL_whatByRef($ref);
                }
                $U[$reference['FK']] = static::onupdate_getSQL_updateByRef($ref);
                $F = array_merge($F, static::onupdate_getSQL_fromByRef($ref));
                $W[] = static::onupdate_getSQL_whereByRef($ref, $event_class, $ids);
            }
        }
        if ($S && $F && $W && $U) {
            $SQL_query = "SELECT " . implode(", ", $S) . " FROM " . implode(" ", $F) . " WHERE " . implode(" OR ", $W);
            $SQL_update = "UPDATE " . implode(" ", $F) . " SET " . implode(", ", $U) . " WHERE " . implode(" OR ", $W);
            // print_r (array($SQL_query, $SQL_update)); exit;
            return array($SQL_query, $SQL_update);
        }
        return false;
    }


    /**
     * Получает по внешнему ключу часть директивы SELECT запроса на выборку, для использования в методе static::onupdate_getSQL
     *
     * @param string $FC Наименование внешнего ключа
     * @return string Выражение для получения нового значения внешнего ключа в виде __SOME__[наименование внешнего ключа]
     */
    final private static function onupdate_getSQL_whatByCache($FC)
    {
        $cache = static::$caches[$FC];
        return "(" . $cache['sql'] . ") AS __SOME__" . $FC;
    }


    /**
     * Получает по внешнему ключу часть директивы SET запроса на обновление, для использования в методе static::onupdate_getSQL
     *
     * @param string $FC Наименование внешнего ключа
     * @return string Выражение для использования в SET
     */
    final private static function onupdate_getSQL_updateByCache($FC)
    {
        $cache = static::$caches[$FC];
        return "__SOME__." . $FC . " = (" . $cache['sql'] . ")";
    }


    /**
     * Получает по внешнему ключу выражение FROM запросов, для использования в методе static::onupdate_getSQL
     *
     * @param string $FC Наименование внешнего ключа
     * @return array<string> Массив объявлений таблиц для использования в FROM
     */
    final private static function onupdate_getSQL_fromByCache($FC)
    {
        $cache = static::$caches[$FC];
        $SQL_from = array();
        foreach ($cache['affected'] as $ref) {
            $reference = static::$references[$ref];
            $cls = $reference['classname'];
            $tbl = $cls::_tablename();
            $refFK = $ref . "." . $cls::_idN();
            $someFK = "__SOME__." . $reference['FK'];
            $SQL_from[$ref] = "LEFT JOIN " . $tbl . " AS " . $ref . " ON " . $refFK . " = " . $someFK;
        }
        return $SQL_from;
    }


    /**
     * Получает по внешнему ключу часть условия WHERE запросов, для использования в методе static::onupdate_getSQL
     *
     * @param string $FC Наименование внешнего ключа
     * @param string $event_class Наименование класса, изменение/удаление объекта которого повлекло изменение данного класса
     * @param array $ids Массив первичных ключей изменяемых/удаляемых объектов класса $event_class
     * @return string Выражение для использования в WHERE
     */
    final private static function onupdate_getSQL_whereByCache($FC, $event_class, array $ids)
    {
        $cache = static::$caches[$FC];
        $W = "(( 0 ";
        foreach ($cache['affected'] as $ref) {
            $cls = static::$references[$ref]['classname'];
            if ($cls == $event_class) {
                $W .= " OR " . $ref . "." . $cls::_idN() . " IN (" . implode(", ", $ids) . ")";
            }
        }
        $W .= " ) AND (__SOME__." . $FC . " != (" . $cache['sql'] . ")))";
        return $W;
    }


    /**
     * Получает по ссылке часть директивы SELECT запроса на выборку, для использования в методе static::onupdate_getSQL
     *
     * @param string $ref Наименование ссылки
     * @return string Выражение для получения нового значения ссылки в виде __SOME__[наименование внешнего ключа]
     */
    final private static function onupdate_getSQL_whatByRef($ref)
    {
        $reference = static::$references[$ref];
        $cls = $reference['classname'];
        $refFK = $ref . "." . $cls::_idN();
        $someFK = "__SOME__." . $reference['FK'];
        $someAlias = "__SOME__" . $reference['FK'];
        return "IF(" . $refFK . " IS NOT NULL, " . $refFK . ", " . " DEFAULT(" . $someFK . ")) AS " . $someAlias;
    }


    /**
     * Получает по ссылке часть директивы SET запроса на обновление, для использования в методе static::onupdate_getSQL
     *
     * @param string $ref Наименование ссылки
     * @return string Выражение для использования в SET
     */
    final private static function onupdate_getSQL_updateByRef($ref)
    {
        $reference = static::$references[$ref];
        $cls = $reference['classname'];
        $tbl = $cls::_tablename();
        $refFK = $ref . "." . $cls::_idN();
        $someFK = "__SOME__." . $reference['FK'];
        return $someFK . " = IF(" . $refFK . " IS NOT NULL, " . $refFK . ", " . " DEFAULT(" . $someFK . "))";
    }


    /**
     * Получает по ссылке выражение FROM запросов, для использования в методе static::onupdate_getSQL
     *
     * @param string $refKey Наименование ссылки
     * @return array<string> Массив объявлений таблиц для использования в FROM
     */
    final private static function onupdate_getSQL_fromByRef($refKey)
    {
        $SQL_from = array();
        $reference = static::$references[$refKey];
        $refCls = $reference['classname'];
        $tbl = $refCls::_tablename();
        $refFK = $refKey . "." . $refCls::_idN();
        $someFK = "__SOME__." . $reference['FK'];
        $SQL_from[$refKey] = "LEFT JOIN " . $tbl . " AS " . $refKey . " ON " . $refFK . " = " . $someFK;
        return $SQL_from;
    }


    /**
     * Получает по внешнему ключу часть условия WHERE запросов, для использования в методе static::onupdate_getSQL
     *
     * @param string $refKey Наименование ссылки
     * @param string $eventClass Наименование класса, изменение/удаление объекта которого повлекло изменение данного класса
     * @param array $ids Массив первичных ключей изменяемых/удаляемых объектов класса $eventClass
     * @return string Выражение для использования в WHERE
     */
    final private static function onupdate_getSQL_whereByRef($refKey, $eventClass, array $ids)
    {
        $reference = static::$references[$refKey];
        $refCls = $reference['classname'];
        $refFK = $refKey . "." . $refCls::_idN();
        $someFK = "__SOME__." . $reference['FK'];
        $W = "(" . $someFK . " != " . $refFK;
        if ($refCls == $eventClass) {
            $W .= " AND (" . $refKey . "." . $refCls::_idN() . " IN (" . implode(", ", $ids) . ") OR " . $refKey . "." . $refCls::_idN() . " IS NULL)";
        }
        $W .= ")";
        return $W;
    }
                // </editor-fold>

                // <editor-fold defaultstate="collapsed" desc="Семейство ondelete">
    /**
     * Событие, наступающее при удалении объекта/группы объектов данного класса
     *
     * Реализует каскадные удаления.
     * @param array $ids Массив первичных ключей удаляемых объектов данного класса
     * @return bool Возвращает true, если пройден цикл каскадного изменения, либо false в случае, если
     *              отсутствовали первичные ключи изменяемых/удаляемых элементов
     */
    final private static function ondelete(array $ids)
    {
        if (!$ids) {
            return false;
        }
        $SQL = static::$SQL;
        $ids = array_map(function ($x) use ($SQL) {
            return $SQL->quote($x);
        }, $ids);
        // Каскадное удаление классов
        // 2017-02-10, AVS: // 2017-02-10, AVS: переместили удаление связанных сущностей в начало, т.к.
        // возникали проблемы с "висящими" ссылками в RAAS\CMS\Pages при каскадном удалении
        $children_classes = static::isReferencedBy(true);
        foreach ($children_classes as $classname => $refs) {
            $SQL_query = "SELECT " . (static::$objectCascadeDelete ? "*" : $classname::_idN())
                       . " FROM " . $classname::_tablename()
                       . " WHERE 0 ";
            foreach ($refs as $ref => $reference) {
                $SQL_query .= " OR " . $reference['FK'] . " IN (" . implode(", ", $ids) . ") ";
            }
            $classname::ondelete_cascadeDelete($SQL_query);
        }
        // Удаляем связки, где текущий класс найден как сопряженный по поиску
        foreach (static::$links as $key => $link) {
            $SQL_query = "DELETE FROM " . static::$dbprefix . $link['tablename']
                       . " WHERE " . $link['field_from'] . " IN (" . implode(", ", $ids) . ") ";
            static::$SQL->query($SQL_query);
        }
        // Удаляем связки, где текущий класс объявлен как сопряженный в явном виде
        foreach (self::$classes as $classname => $class) {
            foreach ($classname::$links as $key => $link) {
                if ($link['classname'] == \get_called_class()) {
                    $SQL_query = "DELETE FROM " . $classname::$dbprefix . $link['tablename']
                               . " WHERE " . $link['field_to'] . " IN (" . implode(", ", $ids) . ") ";
                    static::$SQL->query($SQL_query);
                }
            }
        }
        return true;
    }


    /**
     * Реализует каскадное удаление задействованных объектов по запросу на удаление, для использования в методе static::ondelete().
     * @param $SQL_query Запрос на выборку объектов задействованного класса.
     */
    final private static function ondelete_cascadeDelete($SQL_query)
    {
        $SQL_result = static::$SQL->get($SQL_query);
        if ($SQL_result) {
            if (static::$objectCascadeDelete) {
                foreach ($SQL_result as $row) {
                    $row = new static($row);
                    static::delete($row);
                }
            } else {
                $idN = static::_idN();
                $SQL = static::$SQL;
                $new_ids = array_map(function ($x) use ($idN) {
                    return $x[$idN];
                }, $SQL_result);
                $sql_new_ids = array_map(function ($x) use ($SQL) {
                    return $SQL->quote($x);
                }, $new_ids);
                $SQL_query = "DELETE FROM " . static::_tablename()
                           . " WHERE " . static::_idN() . " IN (" . implode(", ", $sql_new_ids) . ")";
                static::$SQL->query($SQL_query);
                static::ondelete($new_ids);
                static::onupdate($new_ids, true);
            }
        }
    }

    /**
     * Распознает аргументы для метода getSet и getChildSet
     *
     * @param array $args массив переданных аргументов в getSet и getChildSet
     * @param \SOME\Pages|null обработчик страниц при постраничной разбивке
     * @param array $params дополнительные параметры в виде массива (все элементы опциональные):
     *                        array(
     *                            'select' => array(string[]|array[]),   // Условия для подстановки в выражение SELECT. Условия объединяются запятой
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                                                                   // По умолчанию равно [имя класса].*
     *                            'from' => array(string[]),             // массив строк вида "[имя таблицы] AS [псевдоним] ON [условие подключения]".
     *                                                                   // Таблицы подключаются через LEFT JOIN.
     *                                                                   // Первой всегда присутствует таблица текущего класса с псевдонимом, равным имени класса.
     *                                                                   // Псевдоним не обязателен.
     *                                                                   // В случае использования метода по связке, будет добавлена также таблица-связка без псевдонима
     *                            'where' => array(string[]|array[]),    // Условия для подстановки в выражение WHERE. Условия объединяются оператором AND.
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                                                                   // При использовании метода по ссылке или связке условия связок добавляются автоматически
     *                            'groupBy' => string|array,             // Условие для группировки результатов SQL-запроса.
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                            'orderBy' => string|array              // Условие для сортировки результатов SQL-запроса
     *                                                                   // Допускаются как строчные значения, так и массивы запросов с подстановками
     *                        )
     * @param string $child|null Наименование дочерней ссылки из схемы класса. Может использоваться только при не статическом вызове.
     * @param string $link|null Наименование связки из схемы класса. Может использоваться только при не статическом вызове.
     */
    private function getSet_parseParams($args, &$Pages, &$params, &$child = null, &$link = null)
    {
        $Pages = null;
        $params = array('select' => array(), 'from' => array(), 'where' => array(), 'orderBy' => '', 'groupBy' => '');
        for ($i = 0; $i < count($args); $i++) {
            if ($args[$i] instanceof \SOME\Pages) {
                $Pages = $args[$i];
            } elseif (is_array($args[$i])) {
                foreach ($args[$i] as $key => $val) {
                    $key = strtolower($key);
                    switch ($key) {
                        case 'select':
                        case 'from':
                        case 'where':
                            $params[$key] = (array)$val;
                            break;
                        case 'orderby':
                        case 'groupby':
                            $params[str_replace('by', 'By', $key)] = (string)$val;
                            break;
                    }
                }
            } elseif (isset($this) && ($this instanceof self) && is_string($args[$i])) {
                if (static::typeof($args[$i]) == static::FIELD_CHILDREN) {
                    $child = static::$children[$args[$i]];
                } elseif (static::typeof($args[$i]) == static::FIELD_LINK) {
                    $link = static::$links[$args[$i]];
                }
            }
        }
    }


    /**
     * Проверка недостающих таблиц для методов getSet() и getChildSet()
     *
     * @param array $params массив дополнительных параметров, возвращенный из метода getSet_parseParams
     * @param bool $bindAssoc указывает, используется ли ассоциативная (TRUE) SQL-связка или индексированная (FALSE)
     * @param array(string[]) $usedAliases массив объявленных псевдонимов (или при отсутствии псевдонимов имен таблиц) в разных частях запроса
     * @param array(string[]) $requiredAliases массив ссылаемых псевдонимов (или при отсутствии псевдонимов имен таблиц) в разных частях запроса
     */
    private static function getSet_checkTables($params, &$bindAssoc, &$usedAliases, &$requiredAliases)
    {
        $bindAssoc = false;
        $usedAliases = array();
        $requiredAliases = array();
        foreach ($params['from'] as $val) {
            if (preg_match('/(\\w+)(\\s+AS\\s+(\\w+))?/i', $val, $regs)) {
                if (isset($regs[3])) {
                    $usedAliases[] = trim($regs[3]);
                } else {
                    $usedAliases[] = trim($regs[1]);
                }
            }
        }
        foreach ($params['select'] as $val) {
            static::$SQL->parseSQLBindings($val, $x, $y, $bindAssoc);
            if (preg_match_all('/(\\w+)\\.(\\w+)/i', $val, $regs)) {
                foreach ($regs[1] as $x) {
                    $requiredAliases[] = trim($x);
                }
            }
        }
        foreach ($params['where'] as $val) {
            static::$SQL->parseSQLBindings($val, $x, $y, $bindAssoc);
            if (preg_match_all('/(\\w+)\\.(\\w+)/i', $x, $regs)) {
                foreach ($regs[1] as $x) {
                    $requiredAliases[] = trim($x);
                }
            }
        }
        static::$SQL->parseSQLBindings($params['groupBy'], $x, $y, $bindAssoc);
        if (preg_match_all('/(\\w+)\\.(\\w+)/i', $x, $regs)) {
            foreach ($regs[1] as $x) {
                $requiredAliases[] = trim($x);
            }
        }
        static::$SQL->parseSQLBindings($params['orderBy'], $x, $y, $bindAssoc);
        if (preg_match_all('/(\\w+)\\.(\\w+)/i', $x, $regs)) {
            foreach ($regs[1] as $x) {
                $requiredAliases[] = trim($x);
            }
        }
        $requiredAliases = array_values(array_unique($requiredAliases));
        $usedAliases = array_values(array_unique($usedAliases));
    }


    /**
     * Добавление недостающих таблиц и параметров для использования в методе getSet
     *
     * @param array $params массив дополнительных параметров, возвращенный из метода getSet_parseParams
     * @param array(string[]) $usedAliases массив объявленных псевдонимов (или при отсутствии псевдонимов имен таблиц) в разных частях запроса
     * @param array(string[]) $requiredAliases массив ссылаемых псевдонимов (или при отсутствии псевдонимов имен таблиц) в разных частях запроса
     */
    private static function getSet_addMissingTables(&$params, &$usedAliases, $requiredAliases)
    {
        if ((\get_called_class() != __CLASS__)) {
            $classname = Namespaces::getClass(\get_called_class());
            if (!in_array("`" . $classname . "`.*", $params['select'])) {
                array_unshift($params['select'], "`" . $classname . "`.*");
            }
            if (!in_array($classname, $usedAliases)) {
                array_unshift($params['from'], "`" . static::_tablename() . "` AS `" . $classname . "`");
            }
            foreach ($requiredAliases as $val) {
                if (!in_array($val, $usedAliases)) {
                    $refTree = explode('__', $val);
                    $c = \get_called_class();
                    for ($i = 0; $i < count($refTree); $i++) {
                        if (in_array($c::typeof($refTree[$i]), array($c::FIELD_REFERENCE, $c::FIELD_LINK, $c::FIELD_CHILDREN))) {
                            $oldAlias = $i ? implode('__', array_slice($refTree, 0, $i)) : Namespaces::getClass($c);
                            $alias = implode('__', array_slice($refTree, 0, $i + 1));
                            if ($c::typeof($refTree[$i]) == $c::FIELD_REFERENCE) {
                                $reference = $c::$references[$refTree[$i]];
                                $refclass = $reference['classname'];
                                if (!in_array($alias, $usedAliases)) {
                                    $params['from'][] = "`" . $refclass::_tablename() . "` AS `" . $alias . "` ON `" . $alias . "`.`" . $refclass::_idN() . "` = `" . $oldAlias . "`.`" . $reference['FK'] . "`";
                                    $usedAliases[] = $alias;
                                }
                            } elseif ($c::typeof($refTree[$i]) == $c::FIELD_CHILDREN) {
                                $reference = $c::$children[$refTree[$i]];
                                $refclass = $reference['classname'];
                                if (!in_array($alias, $usedAliases)) {
                                    $params['from'][] = "`" . $refclass::_tablename() . "` AS `" . $alias . "` ON `" . $alias . "`.`" . $reference['FK'] . "` = `" . $oldAlias . "`.`" . $c::_idN() . "`";
                                    $usedAliases[] = $alias;
                                }
                            } elseif (($c::typeof($refTree[$i]) == $c::FIELD_LINK)) {
                                $link = $c::$links[$refTree[$i]];
                                if (isset($c::$links[$refTree[$i]]['classname'])) {
                                    $refclass = $link['classname'];
                                    $dbprefix = $refclass::_dbprefix();
                                } else {
                                    $dbprefix = static::_dbprefix();
                                }
                                if (!in_array($alias, $usedAliases)) {
                                    // 2015-11-22, AVS: заменил `" . $alias . "___LINK` на `" . $alias . "`, т.к. не схватывает имя
                                    // 2015-12-20, AVS: заменил обратно, т.к. возникает одинаковое название с целевой страницей ссылки (например, cms_materials_pages_assoc AS pages JOIN cms_pages AS pages)
                                    $params['from'][] = "`" . $dbprefix . $link['tablename'] . "` AS `" . $alias . "___LINK` ON `" . $alias . "___LINK`.`" . $link['field_from'] . "` = `" . $oldAlias . "`.`" . $c::_idN() . "`";
                                    $usedAliases[] = $alias . '';
                                    if (isset($c::$links[$refTree[$i]]['classname'])) {
                                        $refclass = $link['classname'];
                                        $usedAliases[] = $alias;
                                        $params['from'][] = "`" . $refclass::_tablename() . "` AS `" . $alias . "` ON `" . $alias . "`.`" . $refclass::_idN() . "` = `" . $alias . "___LINK`.`" . $link['field_to'] . "`";
                                    }
                                }
                            }
                            $c = $refclass;
                        } else {
                            if ($val == 'pages') {
                                echo $val;
                                exit;
                            }
                            break;
                        }
                    }
                }
            }
            if (!$params['where']) {
                $params['where'] = array("1");
            }
            if ((count($params['from']) > 1) && !$params['groupBy']) {
                $params['groupBy'] = "`" . $classname . "`.`" . static::_idN() . "`";
            }
            if (!$params['orderBy'] && static::$defaultOrderBy) {
                $params['orderBy'] = "`" . $classname . "`.`" . static::$defaultOrderBy . "`";
            }
        }
    }
                // </editor-fold>

                // <editor-fold defaultstate="collapsed" desc="Семейство init">
    /**
     * Устанавливает объект подключения к базе данных и префикс таблиц для конкретного класса, либо в целом для SOME
     *
     * Используется методом static::init()
     * @param \SOME\DB $SQL Объект подключения к базе данных
     * @param string $dbprefix Префикс таблиц базы данных
     * @return bool Возвращает true в случае нормального присвоения, false в противном случае
     */
    final private static function init_setSQL(\SOME\DB $SQL = null, $dbprefix = null)
    {
        $ok = true;
        if ($SQL !== null) {
            $old_SOME_dbprefix = self::$dbprefix;
            $old_static_dbprefix = static::$dbprefix;
            static::$SQL = $SQL;
            if ($old_SOME_dbprefix != $old_static_dbprefix && self::$dbprefix == static::$dbprefix && \get_called_class() != __CLASS__) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_SQL, \get_called_class()));
                $ok = false;
            }
        }
        if ($dbprefix !== null) {
            $old_SOME_dbprefix = self::$dbprefix;
            $old_static_dbprefix = static::$dbprefix;
            static::$dbprefix = $dbprefix;
            if ($old_SOME_dbprefix != $old_static_dbprefix && self::$dbprefix == static::$dbprefix && \get_called_class() != __CLASS__) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_DBPREFIX, \get_called_class()));
                $ok = false;
            }
        }
        return $ok;
    }


    /**
     * Проверяет правильность формата импортируемых классов
     * @param array $classes массив импортируемых классов
     */
    final private static function init_checkClasses(array $classes)
    {
        $classes_to_initialize = array();
        foreach ($classes as $classname => $class) {
            if (!is_array($class)) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_ERRORCLASS, $classname));
                $ok = false;
            } elseif (!isset($class['fields']) || !is_array($class['fields']) || array_values(array_map('strval', $class['fields'])) != $class['fields']) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_INVALIDFIELDS, $classname));
                $ok = false;
            } elseif (!isset($class['PRI']) || !is_string($class['PRI'])) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_INVALIDPRIMARYKEY, $classname));
                $ok = false;
            }
        }
        return $ok ? $classes_to_initialize : false;
    }


    /**
     * Проверяет доступность базы данных и таблицы класса, для использования в методе static::init().
     * @return bool Возвращает true в случае, если база данных и таблица доступны, false в противном случае
     */
    final private static function init_checkSQL()
    {
        $ok = true;
        if (!static::$SQL || !static::$SQL->connection) {
            throw new Exception(sprintf(self::EXCEPTION_INIT_NOCONNECTION, \get_called_class()));
            $ok = false;
        }
        if (!static::$tablename) {
            throw new Exception(sprintf(self::EXCEPTION_INIT_NOTABLENAME, \get_called_class()));
            $ok = false;
        }
        return $ok;
    }


    /**
     * Проверяет правильность ссылок, для использования в методе static::init().
     * @return array|false Возвращает массив классов в очередь на инициализацию в случае, если ссылки правильные,
     *                     либо false в противном случае
     */
    final private static function init_checkReferences()
    {
        $ok = true;
        $classes_to_initialize = array();
        foreach (static::$references as $ref => $reference) {
            if (!is_array($reference)) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOREF, \get_called_class(), $ref));
                $ok = false;
            } elseif (!isset($reference['FK'])) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOFK, \get_called_class(), $ref));
                $ok = false;
            } elseif (!isset($reference['classname'])) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOCLASSNAME, \get_called_class(), $ref));
                $ok = false;
            }
            $classes_to_initialize[] = $reference['classname'];
        }
        return $ok ? $classes_to_initialize : false;
    }


    /**
     * Проверяет, корректно ли установлен массив static::$children, для использования в методе static::init().
     *
     * Под корректностью установки понимается то, что у дочернего класса classname поле FK должно быть внешним ключом на текущий объект
     * @return array|false Возвращает массив классов в очередь на инициализацию в случае, если ссылки правильные,
     *                     либо false в противном случае
     */
    final private static function init_checkChildren()
    {
        $ok = true;
        $classes_to_initialize = array();
        foreach (static::$children as $ref => $reference) {
            if (!is_array($reference)) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOCHILD, \get_called_class(), $ref));
                $ok = false;
            } elseif (!isset($reference['FK'])) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOCHILDFK, \get_called_class(), $ref));
                $ok = false;
            } elseif (!isset($reference['classname'])) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOCHILDCLASSNAME, \get_called_class(), $ref));
                $ok = false;
            } else {
                $classname = $reference['classname'];
                $remote_ref = $classname::getReferenceByFK($reference['FK']);
                // 2015-05-04, AVS: добавили !is_subclass_of, чтобы обеспечить наследуемость
                if (($classname::$references[$remote_ref]['classname'] != \get_called_class()) && !is_subclass_of(\get_called_class(), $classname::$references[$remote_ref]['classname'])) {
                    throw new Exception(sprintf(self::EXCEPTION_INIT_INVALIDCHILDREN, \get_called_class(), $classname, $reference['FK']));
                }
            }
            $classes_to_initialize[] = $classname;
        }
        return $ok ? $classes_to_initialize : false;
    }


    /**
     * Проверяет, корректно ли установлен массив static::$parents, для использования в методе static::init().
     *
     * Под корректностью установки понимается то, что родительская ссылка, указанная в массиве,
     * должна быть рекурсивной, т.е. вести на тот же класс
     * @return bool Возвращает true в случае, если ссылки правильные, false в противном случае
     */
    final private static function init_checkParents()
    {
        $ok = true;
        foreach (static::$parents as $key => $ref) {
            if (!isset(static::$references[$ref])) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOPARENTLINK, \get_called_class(), $ref, $key));
            } elseif (static::$references[$ref]['classname'] != \get_called_class()) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_PARENTNOTRECURSIVE, \get_called_class(), $ref, $key));
            }
        }
        return $ok;
    }

    /**
     * Проверяет правильность таблиц-связок, для использования в методе static::init().
     * @return bool Возвращает true в случае, если ссылки правильные, false в противном случае
     */
    final private static function init_checkLinks()
    {
        $ok = true;
        foreach (static::$links as $i => $link) {
            if (!is_array($link)) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOLINK, \get_called_class(), $i));
                $ok = false;
            } elseif (!isset($link['tablename'])) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOLINKTABLE, \get_called_class(), $i));
                $ok = false;
            } elseif (!isset($link['field_from'])) {
                throw new Exception(sprintf(self::EXCEPTION_INIT_NOFIELDFROM, \get_called_class(), $i));
                $ok = false;
            } else {
                $SQL_query = "SELECT (COUNT(*) + 1) FROM " . static::$dbprefix . $link['tablename'] . " LIMIT 1";
                if (!static::$SQL->getvalue($SQL_query)) {
                    throw new Exception(sprintf(self::EXCEPTION_INIT_TABLEDOESNOTEXISTS, \get_called_class(), static::$dbprefix . $link['tablename']));
                }
                $ok = false;
            }
        }
        return $ok;
    }


    /**
     * Проверяет доступность таблицы и первичного ключа, для использования в методе static::init().
     * @return bool Возвращает true в случае, если таблица и первичный ключ доступны, false в противном случае
     */
    final private static function init_getFields()
    {
        $ok = true;
        if (in_array(static::$SQL->dbtype, array('sqlite', 'sqlite2'))) {
            $SQL_query = "SELECT sql FROM sqlite_master WHERE type = 'table' AND tbl_name = '" . static::$SQL->real_escape_string(self::$classes[\get_called_class()]['tablename']) . "'";
        } else {
            $SQL_query = "SHOW FIELDS FROM " . self::$classes[\get_called_class()]['tablename'];
        }

        $SQL_result = static::$SQL->uget($SQL_query);
        if (!$SQL_result) {
            throw new Exception(sprintf(self::EXCEPTION_INIT_NOTABLECONNECTION, \get_called_class(), self::$classes[\get_called_class()]['tablename']));
            $ok = false;
        }

        if (in_array(static::$SQL->dbtype, array('sqlite', 'sqlite2'))) {
            preg_match('/^[^\\(]+\\((.*)\\)[^\\)]*$/ims', $SQL_result, $regs);
            $regs = explode(',', $regs[1]);
            $regs = array_map('trim', $regs);
            foreach ($regs as $row) {
                if (preg_match('/^PRIMARY KEY\\((.*?)\\)/i', $row, $regs2)) {
                    $f = $regs2[1];
                    self::$classes[\get_called_class()]['PRI'] = trim($f);
                } elseif (!preg_match('/^(PRIMARY KEY|UNIQUE|CHECK|FOREIGN)/i', $row)) {
                    $regs2 = explode(' ', $row);
                    $f = $regs2[0];
                    self::$classes[\get_called_class()]['fields'][] = trim($f);
                    if (preg_match('/(^| )PRIMARY KEY( |$)/i', $row)) {
                        self::$classes[\get_called_class()]['PRI'] = trim($f);
                        if (preg_match('/(^| )AUTOINCREMENT( |$)/i', $row)) {
                            self::$classes[\get_called_class()]['AI'] = true;
                        }
                    }
                }
            }
        } else {
            foreach ($SQL_result as $row) {
                self::$classes[\get_called_class()]['fields'][] = $row['Field'];
                if ((!static::$idN && $row['Key'] == 'PRI') || (static::$idN == $row['Field'])) {
                    self::$classes[\get_called_class()]['PRI'] = $row['Field'];
                    if ($row['Extra'] == 'auto_increment') {
                        self::$classes[\get_called_class()]['AI'] = true;
                    }
                }
            }
        }

        if (!self::$classes[\get_called_class()]['PRI']) {
            throw new Exception(sprintf(self::EXCEPTION_INIT_NOPRIMARYKEY, \get_called_class()));
            $ok = false;
        }
        return $ok;
    }
                // </editor-fold>

    /**
     * Возвращает тип свойства.
     * @param string $prop Имя свойства
     * @return int Константы типов свойств вида self::FIELD_*
     */
    final private static function typeof($prop)
    {
        static::init();
        if ($prop == self::$classes[\get_called_class()]['PRI']) {
            return self::FIELD_ID;
        } elseif (\in_array($prop, self::$classes[\get_called_class()]['fields'])) {
            return self::FIELD_REGULAR;
        } elseif (isset(static::$references[$prop])) {
            return self::FIELD_REFERENCE;
        } elseif (isset(static::$links[$prop]) || isset(static::$links[\preg_replace('/_ids$/i', '', $prop)])) {
            return self::FIELD_LINK;
        } elseif (\in_array($prop, static::$cognizableVars)) {
            return self::FIELD_COGNIZABLE;
        } elseif (isset(static::$children[\preg_replace('/^all_/i', '', \preg_replace('/_ids$/i', '', $prop))])) {
            return self::FIELD_CHILDREN;
        } elseif (isset(static::$parents[\preg_replace('/_ids$/i', '', $prop)])) {
            return self::FIELD_PARENTS;
        }
        return self::FIELD_META;
    }


    /**
     * Возвращает наименование свойства, очищенное от префикса all_ и суффикса _ids
     * @param string $prop Наименование свойства
     * @return string
     */
    final private static function clear_var($prop)
    {
        $prop2 = preg_replace('/^(.*?)_ids$/i', '$1', preg_replace('/^all_(.*?)$/i', '$1', $prop));
        return $prop2;
    }
            // </editor-fold>
        // </editor-fold>
    // </editor-fold>
}
