<?php
/**
 * Файл абстрактного класса сущности SOME
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал
 * работы с сущностями SOME (Semantic Object Modelling Extensible) - базовыми
 * семантическими объектами с неопределенным количеством параметров
 * @package SOME
 * @subpackage SOME
 * @author Александр В. Сурнин <info@volumnet.ru>
 * @copyright © 2022, «Объемные Сети»
 */
namespace SOME;

use ArrayObject;

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
 * @property-read array [тип self::FIELD_СHILDREN, с суффиксом _ids] Работает аналогично типу0 self::FIELD_СHILDREN,
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
abstract class SOME extends ArrayObject
{
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
     * Основная таблица сущности
     * @var string наименование таблицы в базе данных без учета префикса
     */
    protected static $tablename = '';

    /**
     * Первичный ключ таблицы
     *
     * Задается в тех случаях, когда невозможно определить первичный ключ из информационной схемы автоматически
     * В остальных случаях не рекомендуется к использованию
     *
     * @var string
     * @deprecated 2022-10-07 Практически никогда не использовалось
     */
    protected static $idN = '';

    /**
     * Именованные ссылки класса
     *
     * Используются для указания объектов, вычисляемых по внешним ключам сущности
     *
     * @var array <pre><code>array<
     *     string|int[] Название ссылки (для последующего доступа по свойствам-именованным
     *         ссылкам), либо числовые индексы, если явное использование ссылок не подразумевается
     *     => [
     *         'FK' => string название поля в таблице сущности, являющегося внешним ключом,
     *         'classname' => string название класса, на первичный ключ которого ссылается внешний ключ данного класса,
     *         'cascade' => bool при установке в true при удалении ссылаемого объекта данный будет каскадно удален
     *     ]
     * ></code></pre>
     */
    protected static $references = [];

    /**
     * Дочерние элементы
     *
     * Используется для указания ссылок, по которым будут вычисляться массивы дочерних элементов.
     *
     * @var array <pre><code>array<string[] Название свойства => [
     *     'classname' => string название класса, ссылающегося на текущий объект,
     *     'FK' => string название поля в таблице дочерней сущности, являющегося внешним ключом на данный класс,
     * ]></code></pre>
     */
    protected static $children = [];

    /**
     * Родительские элементы
     *
     * Используется для указания ссылок, по которым будут вычисляться массивы родительских элементов
     *
     * @var array <pre><code>array<
     *     string[] Название свойства => string Название ссылки текущего класса на родительский класс
     * ></code></pre>
     */
    protected static $parents = [];

    /**
     * Связки класса по таблицам-связкам
     *
     * Используются для указания объектов, вычисляемых по таблицам-связкам (таблицам, не являющимся
     * собственными таблицами сущностей SOME, но содержащим по крайней мере два внешних ключа на собственные
     * таблицы сущностей SOME)
     * Представляет собой массив, ключи которого представляют собой названия ссылок.
     *
     * @var array <pre><code>array<
     *      string|int[] Название ссылки (для последующего доступа по свойствам-именованным ссылкам),
     *          либо числовые индексы, если явное использование ссылок не подразумевается
     *      => [
     *          'tablename' => string название таблицы-связки "многие ко многим",
     *          'field_from' => string название поля - внешнего ключа в таблице-связке, соответствующего
     *                           первичному ключу данного класса,
     *          'field_to' => string название поля, значения которого планируем
     *              получить по свойству-именованной ссылке
     *              (необходим только в случае, если ссылка именованная, в противном случае он игнорируется),
     *          'classname' => string название класса, объекты которого планируется получить
     *              при неуспешном поиске по полям
     *              (используется только в том случае, если сопряженный класс не найден,
     *              в противном случае он игнорируется),
     *          'orderBy' =>? string сортировка по полю таблицы-связки (точки не допускаются)
     *      ]
     * ></code></pre>
     */
    protected static $links = [];

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
     *
     * @var array <pre><code>[
     *     'affected' => string[] Перечень именованных ссылок объектов, задействованных в кэше],
     *     'sql' => string SQL-выражение для расчета кэша. Свойства обектов задаются в виде [ссылка].[свойство],
     *         например User.vis
     * ]</code></pre>
     */
    protected static $caches = [];

    /**
     * Массив функций для вычисления динамических ("осознаваемых") свойств
     *
     * Представляет собой массив названий динамических полей, вычисляемых по методам с названиями вида
     * $this->_[название свойства](). Такие методы не принимают аргументов.
     * Значение, возвращаемое функцией, записывается в кэш динамического свойства и возвращается в клиентский код
     *
     * @var string[]
     */
    protected static $cognizableVars = [];

    /**
     * Псевдонимы свойств
     *
     * При получении и установке свойств позволяют пользоваться псевдонимами,
     * а не реальными именами полей из базы данных. Во избежание ошибок категорически не рекомендуется,
     * чтобы псевдонимы совпадали с какими-то из значимых наименований свойств.
     *
     * @var array <pre><code>array<string[] Псевдоним => string Поле></code></pre>
     * @deprecated 2022-10-07 Практически никогда не использовалось
     */
    protected static $aliases = [];

    /**
     * Префикс таблиц, используемых в текущем классе
     *
     * Окончательное имя таблицы вычисляется как "[префикс][заданное имя таблицы]"
     * Внимание! этим свойством следует пользоваться очень осторожно при различных префиксах системы,
     * поскольку, если в двух классах указаны ссылки на одинаковые таблицы, но указан разный префикс,
     * это может привести к ошибкам.
     * Внимание! Если используются несколько префиксов, в одной из групп (по одному префиксу), в каждом
     * классе группы, данная переменная должна быть переопределена
     *
     * @var string
     */
    protected static $dbprefix;

    /**
     * Параметр для сортировки по умолчанию
     *
     * Выражение, которое будет подставлено по умолчанию в директиву ORDER BY для формирования списков
     *
     * @var string
     */
    protected static $defaultOrderBy;

    /**
     * Авто-инкрементарный порядок отображения
     *
     * При сохранении нового объекта, автоматом будет подставлено значение $defaultOrderBy, на 1 больше
     * максимального в данной таблице.
     * Без $defaultOrderBy смысла не имеет
     *
     * @var bool
     */
    protected static $aiPriority;

    /**
     * База данных
     *
     * Содержит активное подключение к базе данных
     *
     * @var DB
     */
    protected static $SQL;

    /**
     * Каскадированное объектное обновление
     *
     * При установке в true, при каскадированном (по внешним кэшам) обновлении данных, для каждой обновляемой
     * строки в таблице будет создан отдельный SOME-объект. Это необходимо в случае, если обновление объекта
     * затрагивает данные, не хранимые в базе данных (например, изображения)
     *
     * @var bool
     */
    protected static $objectCascadeUpdate = false;

    /**
     * Каскадированное объектное удаление
     *
     * При установке в true, при каскадированном (по внешним кэшам) удалении данных, для каждой удаляемой
     * строки в таблице будет создан отдельный SOME-объект. Это необходимо в случае, если удаление объекта
     * затрагивает данные, не хранимые в базе данных (например, изображения)
     *
     * @var bool
     */
    protected static $objectCascadeDelete = false;

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
     *
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
     *
     * @var array <pre><code>array<string[] Название поля => mixed></code></pre>
     */
    protected $properties = [];

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
     *
     * @var array <pre><code>array<string[] Название поля => mixed></code></pre>
     */
    protected $updates = [];

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
     *
     * @var <pre><code>array<string[] Название поля => SOME></code></pre>
     */
    protected $referenced = [];

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
     * @var array <pre><code>array<string[] Название поля => SOME[]></code></pre>
     */
    protected $linked = [];

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
     * @var array <pre><code>array<string[] Название поля => mixed></code></pre>
     */
    protected $cognized = [];

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
     * @var array <pre><code>array<string[] Название поля => mixed></code></pre>
     */
    protected $meta = [];

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
     *
     * @var SOME[]
     */
    protected $_children = [];

    /**
     * Набор родительских элементов
     *
     * Для рекурсивных ссылок: хранят родительские объекты, заданные в массиве static::$parents,
     * а также их варианты с суффиксом _ids
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
     *
     * @var SOME[]
     */
    protected $_parents = [];

    /**
     * Внутренняя схема устройства классов
     *
     * Внутренняя схема формируется и дополняется при инициализации дочерних классов
     *
     * @var array <pre><code>array<
     *      string[] Имя класса => [
     *        'tablename' => string имя таблицы класса,
     *        'PRI' => string имя первичного ключа таблицы класса,
     *        'AI' => bool указатель, является ли первичный ключ авто-инкрементированным,
     *        'fields' => string[] Название поля => string Название поля
     *     ]
     * ></code></pre>
     */
    private static $classes = [];


    /**
     * Конструктор класса
     *
     * Создает экземпляр класса на основе входых данных.
     * Создавать экземпляр можно на основе массива свойств, либо на основе идентификатора (первичного ключа).
     * Также можно создать пустой экземпляр с помощью $importData равного null,
     * или не указанного.
     * @param mixed $importData Входные данные
     */
    public function __construct($importData = null)
    {
        static::init();
        $this->_id = null;
        if ($importData) {
            if (is_array($importData)) {
                foreach ($importData as $key => $val) {
                    if (isset(static::$aliases[$key])) {
                        $key = static::$aliases[$key];
                    }
                    $this->__set($key, $val);
                    // 2023-10-16, AVS: сделал общее присвоение через __set вместо перебора типов полей,
                    // т.к. в ряде случаев (например с RAAS\Attachment) может включаться обработка
                    // Также перенес в __set предыдущую установку cognizable - пока непонятно, чем это может обернуться
                }
            } elseif ($importData instanceof self) {
                if (get_class($importData) == get_class($this)) {
                    $mask = 0xFF;
                } else {
                    $mask = 0x82;
                }
                $arr = $importData->getArrayCopy($mask);
                $this->__construct($arr);
            } elseif ($importData !== null) {
                $sqlQuery = "SELECT * FROM `" . static::_tablename() . "` WHERE " . static::_idN() . " = ? LIMIT 1";
                $sqlResult = static::$SQL->getline([$sqlQuery, array($importData)]);
                $this->__construct($sqlResult);
                $this->trust();
            }
        }
    }


    public function __get($var)
    {
        if (isset(static::$aliases[$var])) {
            $var = static::$aliases[$var];
        }
        $type = self::typeof($var);
        $ids = (substr($var, -4) == '_ids');

        if (($type == self::FIELD_ID) || ($var == '_id')) {
            return $this->_id;
        } elseif ($type == self::FIELD_REGULAR) {
            if (isset($this->updates[$var])) {
                return $this->updates[$var];
            } elseif (isset($this->properties[$var])) {
                return $this->properties[$var];
            }
            return null;
        } elseif ($type == self::FIELD_REFERENCE) {
            if (!isset($this->referenced[$var])) {
                $classname = static::$references[$var]['classname'];
                $id = static::$references[$var]['FK'];
                $this->referenced[$var] = new $classname($this->$id);
            }
            return $this->referenced[$var];
        } elseif ($type == self::FIELD_LINK) {
            if ($ids) {
                $var = substr($var, 0, -4);
            }
            $classname = static::getClassByLink($var);
            if (!$classname && isset(static::$links[$var]['classname']) && static::$links[$var]['classname']) {
                $classname = static::$links[$var]['classname'];
            }
            if (!isset($this->linked[$var])) {
                $linkTable = static::$dbprefix . static::$links[$var]['tablename'];
                $fieldFrom = static::$links[$var]['field_from'];
                $fieldTo = static::$links[$var]['field_to'];
                if (static::$links[$var]['field_to']) {
                    if ($classname) {
                        $orderBy = "";
                        if (isset(static::$links[$var]['orderBy'])) {
                            $orderBy =  "tl." . static::$links[$var]['orderBy'];
                        } elseif ($tmpOrderBy = $classname::_defaultOrderBy()) {
                            $orderBy = "te." . $tmpOrderBy;
                        }
                        // 2013-12-08 добавлено tl.* для получения промежуточных параметров ссылок
                        // 2014-02-12 переставили местами tl, te - иначе при присутствии в tl поля id выдается id
                        // исходной сущности, а не искомых
                        $sqlQuery = "SELECT tl.*, te.*
                                       FROM `" . $classname::_tablename() . "` AS te
                                       JOIN " . $linkTable . " AS tl ON tl." . $fieldTo . " = te." . $classname::_idN()
                                   . " WHERE tl." . $fieldFrom . " = ?"
                                   . ($orderBy ? " ORDER BY " . $orderBy : "");
                        $sqlResult = static::$SQL->get([$sqlQuery, $this->_id]);
                        $this->linked[$var] = array_map(function ($x) use ($classname) {
                            return new $classname($x);
                        }, (array)$sqlResult);
                    } elseif (static::$links[$var]['field_to']) {
                        $sqlQuery = "SELECT " . $fieldTo . " FROM " . $linkTable . " WHERE " . $fieldFrom . " = ?";
                        $this->linked[$var] = static::$SQL->getcol([$sqlQuery, $this->_id]);
                    }
                } else {
                    $sqlQuery = "SELECT * FROM " . $linkTable . " WHERE " . $fieldFrom . " = ?";
                    $sqlResult = static::$SQL->get([$sqlQuery, $this->_id]);
                    $this->linked[$var] = $sqlResult;
                }
            }
            $result = $this->linked[$var];
            if ($ids) {
                $result = array_map(function ($x) {
                    return $x->_id;
                }, $result);
            }
            return $result;
        } elseif ($type == self::FIELD_COGNIZABLE) {
            if (!isset($this->cognized[$var]) &&
                in_array($var, static::$cognizableVars) &&
                is_callable([$this, '_' . $var])
            ) {
                $this->cognized[$var] = $this->{'_' . $var}($this);
            }
            return $this->cognized[$var];
        } elseif ($type == self::FIELD_CHILDREN) {
            $ref = self::clearVar($var);
            $all = (substr($var, 0, 4) == 'all_');
            $var2 = ($all ? 'all_' : '') . $ref;
            if (!isset($this->_children[$var2])) {
                $classname = static::$children[$ref]['classname'];
                $orderBy = $classname::_defaultOrderBy();
                $this->_children[$var2] = $this->children(
                    $ref,
                    '',
                    ($orderBy ? " ORDER BY " . $orderBy : ""),
                    $all ? 0 : 1
                );
                if ($all) {
                    $this->_children[$ref] = array_filter($this->_children[$var2], function ($x) {
                        return $x->__level == 1;
                    });
                }
            }
            $result = $this->_children[$var2];
            if ($ids) {
                $result = array_map(function ($x) {
                    return $x->_id;
                }, $result);
            }
            return $result;
        } elseif ($type == self::FIELD_PARENTS) {
            $ref = self::clearVar($var);
            if (!isset($this->_parents[$ref])) {
                $this->_parents[$ref] = $this->parents($ref);
            }
            $result = $this->_parents[$ref];
            if ($ids) {
                $result = array_map(function ($x) {
                    return $x->_id;
                }, $result);
            }
            return $result;
        }
        if (isset($this->meta[$var])) {
            return $this->meta[$var];
        }
        if (in_array($var, ['meta', 'properties', 'updates'])) {
            return $this->$var;
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
                // 2015-11-29, AVS: поменял на self::__get($var), т.к. __get может быть переопределен
                // и тогда сравнение будет неверным
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
                    $this->cognized = [];
                }
                break;
            case self::FIELD_COGNIZABLE:
                // 2023-10-16, AVS: добавил предустановку cognizable, но непонятно, какие баги могут возникнуть
                $this->cognized[$var] = $val;
                break;
            default:
                $this->meta[$var] = $val;
                break;
        }
    }


    public function __isset($var)
    {
        if (isset(static::$aliases[$var])) {
            $var = static::$aliases[$var];
        }
        $key = self::typeof($var);
        switch ($key) {
            case self::FIELD_REFERENCE:
                return isset($this->referenced[$var]);
                break;
            case self::FIELD_LINK:
                return isset($this->linked[$var]);
                break;
            case self::FIELD_COGNIZABLE:
                // 2023-01-26, AVS: заменил на true, т.к. иначе проблемы с обращением
                // return isset($this->cognized[$var]);
                return true;
                break;
            case self::FIELD_META:
                return isset($this->meta[$var]);
                break;
            case self::FIELD_CHILDREN:
                if (substr($var, -4) == '_ids') {
                    $var = substr($var, 0, -4);
                }
                return isset($this->_children[$var]);
                break;
            case self::FIELD_PARENTS:
                if (substr($var, -4) == '_ids') {
                    $var = substr($var, 0, -4);
                }
                return isset($this->_parents[$var]);
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
        if (isset(static::$aliases[$var])) {
            $var = static::$aliases[$var];
        }
        $key = self::typeof($var);
        switch ($key) {
            case self::FIELD_REFERENCE:
                unset($this->referenced[$var]);
                break;
            case self::FIELD_LINK:
                unset($this->linked[$var]);
                break;
            case self::FIELD_COGNIZABLE:
                unset($this->cognized[$var]);
                break;
            case self::FIELD_META:
                unset($this->meta[$var]);
                break;
            case self::FIELD_CHILDREN:
                $var = self::clearVar($var);
                unset($this->_children[$var], $this->_children['all_' . $var]);
                break;
            case self::FIELD_PARENTS:
                $var = self::clearVar($var);
                unset($this->_parents[$var]);
                break;
            case self::FIELD_REGULAR:
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
                    $this->cognized = [];
                }
                break;
        }
    }


    public function __clone()
    {
        $this->_id = null;
        // 2017-09-01, AVS: было $this->updates = $this->properties: при клонировании несохраненные данные терялись
        $this->updates = array_merge($this->properties, $this->updates);
        $this->properties = [];
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
     *
     * @param int $varType битовая маска объектов, доступных для получения - по умолчанию id, updates/properties и meta
     * @return array <pre><code>array<
     *     string[] Название свойства => mixed
     * ></code></pre>
     */
    public function getArrayCopy($varType = 0x83)
    {
        $arr = [];
        if (self::FIELD_ID & $varType) {
            $arr[$this->_idN()] = $this->_id;
        }
        if (self::FIELD_REGULAR & $varType) {
            $arr = array_merge($arr, $this->properties, $this->updates);
        }
        if (self::FIELD_REFERENCE & $varType) {
            $arr = array_merge($arr, $this->referenced);
        }
        if (self::FIELD_LINK & $varType) {
            $arr = array_merge($arr, $this->linked);
        }
        if (self::FIELD_COGNIZABLE & $varType) {
            $arr = array_merge($arr, $this->cognized);
        }
        if (self::FIELD_CHILDREN & $varType) {
            $arr = array_merge($arr, $this->_children);
        }
        if (self::FIELD_PARENTS & $varType) {
            $arr = array_merge($arr, $this->_parents);
        }
        if (self::FIELD_META & $varType) {
            $arr = array_merge($arr, $this->meta);
        }
        return $arr;
    }


    /**
     * Интерфейс доступа к классу как к массиву (для записи)
     *
     * Позволяет записать какое-либо динамическое свойство с помощью выражения $object[$var] = ...
     *
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
     *
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
     *
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
     *
     * @param string $var наименование динамического свойства
     * @return mixed значение искомого свойства
     */
    final public function offsetGet($var)
    {
        return $this->__get($var);
    }


    /**
     * Сохраняет данные в таблицу базы данных
     *
     * Сохраняет все обновленные поля типа self::FIELD_REGULAR в базу, для новых объектов также назначая
     * первичный ключ.
     */
    public function commit()
    {
        $new = !$this->_id;
        EventProcessor::emit('beforecommit', $this, ['new' => $new]);
        if (static::$defaultOrderBy && static::$aiPriority) {
            $priorityN = static::$defaultOrderBy;
            if (!$this->_id && !$this->$priorityN) {
                $sqlQuery = "SELECT MAX(" . $priorityN . ") FROM " . self::_tablename();
                $this->$priorityN = self::$SQL->getvalue($sqlQuery) + 1;
            }
        }

        // Проверим кэши
        $affectedCaches = [];
        foreach (static::$caches as $cacheURN => $cache) {
            if (!isset($this->updates[$cacheURN])) {
                foreach ($cache['affected'] as $refName) {
                    $reference = static::$references[$refName];
                    $updatesVal = $propertiesVal = null;
                    if (isset($this->updates[$reference['FK']])) {
                        $updatesVal = $this->updates[$reference['FK']];
                    }
                    if (isset($this->properties[$reference['FK']])) {
                        $propertiesVal = $this->properties[$reference['FK']];
                    }
                    if ($updatesVal != $propertiesVal) {
                        $affectedCaches[$cacheURN] = $cache;
                        break;
                    }
                }
            }
        }
        foreach ($affectedCaches as $cacheURN => $cache) {
            $sqlFrom = $sqlWhere = [];
            foreach ($cache['affected'] as $refName) {
                $reference = static::$references[$refName];
                $classname = $reference['classname'];
                $sqlFrom[] = $classname::_tablename() . " AS " . $refName . ($sqlFrom ? " ON 1" : "");
                $sqlWhere[] = "(" . $refName . "." . $classname::_idN()
                    . " = " . static::$SQL->quote($this->{$reference['FK']}) . ")";
            }
            $cacheSQL = $cache['sql'];
            $cacheSQL = preg_replace_callback('/`?__SOME__`?\.`?(\w+)`?/umi', function ($matches) {
                return static::$SQL->quote($this->{$matches[1]});
            }, $cacheSQL);
            $sqlQuery = "SELECT (" . $cacheSQL . ")
                           FROM " . implode(" LEFT JOIN ", $sqlFrom)
                      . " WHERE " . implode(" AND ", $sqlWhere);
            $c = static::$SQL->getvalue($sqlQuery);
            if (($c === null) || ($c === false)) {
                $sqlQuery = "SELECT DEFAULT(" . $cacheURN . ")
                               FROM " . static::_tablename()
                          . " LIMIT 1";
                $c = static::$SQL->getvalue($sqlQuery);
            }
            $this->$cacheURN = $c;
        }

        if ($this->_id) {
            $arr = array_merge($this->properties, $this->updates, [static::_idN() => $this->_id]);
            static::$SQL->add(static::_tablename(), $arr, array_merge($this->properties, $this->updates));
        } elseif (self::$classes[static::class]['AI']) {
            $this->_id = static::$SQL->add(static::_tablename(), $this->updates);
        } else {
            $sqlQuery = "SELECT MAX(" . static::_idN() . ") FROM " . static::_tablename();
            $this->_id = static::$SQL->getvalue($sqlQuery) + 1;
            $arr = array_merge($this->updates, [static::_idN() => $this->_id]);
            static::$SQL->add(static::_tablename(), $arr);
        }
        $this->properties = array_merge($this->properties, $this->updates);
        if ($this->updates) {
            static::onupdate([$this->_id]);
        }
        $this->updates = [];
        $this->_children = [];
        EventProcessor::emit('commit', $this, ['new' => $new]);
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
        $this->updates = $this->referenced
            = $this->linked
            = $this->cognized
            = $this->_children
            = $this->_parents
            = [];
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
        $this->properties = $this->updates
            = $this->referenced
            = $this->linked
            = $this->cognized
            = $this->_children
            = $this->_parents
            = [];
        if ($this->_id) {
            // 2022-12-01, AVS: заменил $this-> на self:: во избежание побочных явлений от других конструкторов
            self::__construct($this->_id);
        }
    }


    /**
     * Дочерние элементы для данного объекта
     *
     * Возвращает дочерние объекты по именованной ссылке
     *
     * @param string $ref Название ссылки из массива $children
     * @param string $where Условие WHERE для SQL-запроса, получающего список дочерних элементов.
     *               При пустом значении не используется.
     * @param string $addSQL Дополнительные SQL-инструкции
     * @param int $maxLevel Количество необходимых уровней вложенности дочерних элементов. Значение больше 1
     *                       доступно только по рекурсивной ссылке - в этом случае у каждого элемента
     *                       появляется свойство __level, где хранится уровень вложенности.
     * @return SOME[] Индексированный массив дочерних объектов.
     */
    final public function children($ref = null, $where = '', $addSQL = '', $maxLevel = 1)
    {
        $classname = static::$children[$ref]['classname'];
        if ($maxLevel != 1 && $classname != static::class) {
            return false;
        }
        $pidN = static::$children[$ref]['FK'];
        $children = [];
        if ($this->_id) {
            $ch = [$this->_id];
        } else {
            $ch = [0, '', null];
        }
        $i = 0;
        do {
            $sqlQuery = "SELECT *, " . ++$i . " AS __level "
                      . "  FROM `" . $classname::_tablename() . "`"
                      . " WHERE " . $pidN . " IN (" . implode(", ", array_fill(0, count($ch), "?")) . ") "
                      . ($where ? " AND (" . $where . ")" : "")
                      . $addSQL;
            $ch = static::$SQL->get([$sqlQuery, $ch]);
            $static = static::class;
            $ch = array_map(function ($x) use ($classname) {
                return new $classname($x);
            }, $ch);
            $children = array_merge($children, $ch);
            $ch = array_map(function ($x) {
                return $x->_id;
            }, $ch);
        } while ($ch && (!$maxLevel || $i < $maxLevel));
        return $children;
    }


     /**
     * Родительские элементы для данного объекта
     *
     * Работает только для древовидных структур, т.е. таких, где сущность является родительской для самой себя.
     * Возвращает все родительские элементы по именованной ссылке
     *
     * @param string $ref Название ссылки из массива static::$parents
     * @return SOME[]|false Индексированный массив родительских объектов от корневого до непосредственного родителя,
     *     либо false, если ссылка не рекурсивная
     */
    final public function parents($ref = null)
    {
        $reference = static::$references[static::$parents[$ref]];
        $classname = $reference['classname'];
        if ($classname != static::class) {
            return false;
        }
        $pidN = $reference['FK'];
        $parents = [];
        $p = $this;
        do {
            $sqlQuery = "SELECT * FROM `" . static::_tablename() . "` WHERE " . static::_idN() . " = ?";
            $p = static::$SQL->getline([$sqlQuery, [$p->$pidN]]);
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
     *
     * @param int|+INF|-INF $step Количество позиций, на которые нужно передвинуть запись.
     *                      При отрицательном либо положительном числовом значении запись передвигается
     *                      на $step позиций вверх или вниз (либо до начала или конца списка, если абсолютное
     *                      значение $step больше количества оставшихся до начала или конца списка записей)
     *                      соответственно
     *                      При значении -INF либо +INF запись перемещается соответственно в начало или
     *                      в конец списка
     *
     * @param string $where Дополнительное условие для поиска, например, общность родительских элементов
     * @param string $priorityN Наименование колонки, отвечающей за приоритет
     * @return bool true, если нет ошибок в сущности (появившихся в процессе выполнения метода либо до него),
     *              false, если ошибки имеются
     */
    public function reorder()
    {
        list($step, $where, $priorityN) = func_get_args();
        $sqlBind = [];
        $bindAssoc = false;
        if ($where === null) {
            $whereSQL = "1";
            $whereBind = [];
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
                throw new Exception('You have to define property name (argument #2)');
            }
        }
        if (!$step) {
            throw new Exception('You have to define step (argument #0)');
        }
        $sqlQuery = "SELECT " . static::_idN() . ", " . $priorityN . "  FROM " . static::_tablename()
                  . " WHERE " . $priorityN . " " . ($step < 0 ? "<" : ">") . ($bindAssoc ? " :SOMEBind_priority " : " ? ")
                  . ($whereSQL ? " AND (" . $whereSQL . ") " : "")
                  . " ORDER BY " . $priorityN . " " . ($step < 0 ? "DESC" : "ASC")
                  . (!is_infinite($step) ? " LIMIT " . abs((int)$step) : "");
        if ($bindAssoc) {
            $sqlBind = [':SOMEBind_priority' => (int)$this->$priorityN];
        } else {
            $sqlBind = [(int)$this->$priorityN];
        }
        if ($whereBind) {
            $sqlBind = array_merge($sqlBind, (array)$whereBind);
        }
        $swapwith = static::$SQL->get([$sqlQuery, $sqlBind]);
        $ok = true;
        if ($swapwith) {
            for ($i = 0; $i < count($swapwith); $i++) {
                $swapId = $swapwith[$i][static::_idN()];
                $swapPri = (int)($i ? $swapwith[$i - 1][$priorityN] : (int)$this->$priorityN);
                $ok &= static::$SQL->update(
                    static::_tablename(),
                    [static::_idN() . " = ?", $swapId],
                    [$priorityN => $swapPri]
                );
            }
            $this->$priorityN = (int)$swapwith[count($swapwith) - 1][$priorityN];
            static::$SQL->update(
                static::_tablename(),
                [static::_idN() . " = ?", $this->_id],
                [$priorityN => $this->$priorityN]
            );
        }
        return $ok;
    }


    /**
     * Инициализирует класс или систему SOME в целом, либо задает новые значения
     *
     * Тип инициализации зависит от того, от имени какого класса был вызван метод.
     * Инициализация предполагает сбор информации об объекте из базы данных. С помощью этого же метода
     * можно переопределить объект подключения к базе данных либо префикс таблиц.
     *
     * @param DB $SQL Объект подключения к базе данных
     * @param string $dbprefix Префикс таблиц баз данных
     * @return true|array При инициализации класса SOME возвращает true
     *     При инициализации наследующего класса — запись класса из массива self::$classes
     * @throws Exception Выбрасывает исключение в случае неверных настроек класса
     */
    public static function init(DB $SQL = null, $dbprefix = null)
    {
        // Установим базу данных
        if ($SQL !== null) {
            static::$SQL = $SQL;
        }
        if ($dbprefix !== null) {
            static::$dbprefix = $dbprefix;
        }

        if (static::class == __CLASS__) {
            return true;
        }

        if (($newReferences = static::_references()) != static::$references) {
            static::$references = $newReferences;
        }
        if (($newChildren = static::_children()) != static::$children) {
            static::$children = $newChildren;
        }
        if (($newParents = static::_parents()) != static::$parents) {
            static::$parents = $newParents;
        }
        if (($newLinks = static::_links()) != static::$links) {
            static::$links = $newLinks;
        }
        if (($newCaches = static::_caches()) != static::$caches) {
            static::$caches = $newCaches;
        }
        if (($newCognizableVars = static::_cognizableVars()) != static::$cognizableVars) {
            static::$cognizableVars = $newCognizableVars;
        }
        if (($newDbprefix = static::_dbprefix()) != static::$dbprefix) {
            static::$dbprefix = $newDbprefix;
        }
        if (($newDefaultOrderBy = static::_defaultOrderBy()) != static::$defaultOrderBy) {
            static::$defaultOrderBy = $newDefaultOrderBy;
        }
        if (($newAiPriority = static::_aiPriority()) != static::$aiPriority) {
            static::$aiPriority = $newAiPriority;
        }
        if (($newObjectCascadeUpdate = static::_objectCascadeUpdate()) != static::$objectCascadeUpdate) {
            static::$objectCascadeUpdate = $newObjectCascadeUpdate;
        }
        if (($newObjectCascadeDelete = static::_objectCascadeDelete()) != static::$objectCascadeDelete) {
            static::$objectCascadeDelete = $newObjectCascadeDelete;
        }

        // Запишем информацию о классе
        if (!isset(self::$classes[static::class])) {
            // Проверим все настройки класса
            if (!static::$SQL || !static::$SQL->connection) {
                $err = 'Cannot initialize class "' . static::class . '": no active database engine is set.';
                throw new Exception($err);
            }
            if (!static::$tablename) {
                $err = 'Cannot initialize class "' . static::class . '": no table name is set.';
                throw new Exception($err);
            }

            $classesToInitialize = [];
            foreach (static::$references as $ref => $reference) {
                if (!is_array($reference)) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'reference "' . $ref . '" must be an [\'FK\' => string, \'classname\' => string].';
                    throw new Exception($err);
                } elseif (!isset($reference['FK'])) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'reference "' . $ref . '" must have foreign key.';
                    throw new Exception($err);
                } elseif (!isset($reference['classname'])) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'reference "' . $ref . '" must have class name.';
                    throw new Exception($err);
                }
                $classesToInitialize[] = $reference['classname'];
            }

            foreach (static::$children as $ref => $reference) {
                if (!is_array($reference)) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'children "' . $ref . '" must be an [\'classname\' => string, \'FK\' => string].';
                    throw new Exception($err);
                } elseif (!isset($reference['FK'])) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'children "' . $ref . '" must have foreign key.';
                    throw new Exception($err);
                } elseif (!isset($reference['classname'])) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'children "' . $ref . '" must have class name.';
                    throw new Exception($err);
                } else {
                    $classname = $reference['classname'];
                    $remoteRef = $classname::getReferenceByFK($reference['FK']);
                    // 2015-05-04, AVS: добавили !is_subclass_of, чтобы обеспечить наследуемость
                    if (($classname::$references[$remoteRef]['classname'] != static::class) &&
                        !is_subclass_of(static::class, $classname::$references[$remoteRef]['classname'])
                    ) {
                        $err = 'Cannot initialize class "' . static::class . '": '
                            . 'class "' . $classname . '" is not its children with the foreign key "'
                            . $reference['FK'] . '".';
                        throw new Exception($err);
                    }
                }
                $classesToInitialize[] = $classname;
            }

            foreach (static::$parents as $key => $ref) {
                if (!isset(static::$references[$ref])) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'reference "' . $ref . '" used as parent "' . $key . '" doesn\'t exist.';
                    throw new Exception($err);
                } elseif (static::$references[$ref]['classname'] != static::class) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'reference "' . $ref . '" used as parent "' . $key . '" must be recursive.';
                    throw new Exception($err);
                }
            }

            foreach (static::$links as $i => $link) {
                if (!is_array($link)) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'link "' . $i . '" must be an '
                        . '[\'tablename\' => string, \'field_from\' => string [, \'field_to\' => string]].';
                    throw new Exception($err);
                } elseif (!isset($link['tablename'])) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'link "' . $i . '" must have table name.';
                    throw new Exception($err);
                } elseif (!isset($link['field_from'])) {
                    $err = 'Cannot initialize class "' . static::class . '": '
                        . 'link "' . $i . '" must have field_from parameter.';
                    throw new Exception($err);
                }
            }

            // Инициализируем класс
            self::$classes[static::class] = [
                'tablename' => static::$dbprefix . static::$tablename,
                'fields' => [],
                'AI' => false
            ];
            $isSQLite = in_array(static::$SQL->dbtype, ['sqlite', 'sqlite2']);
            if ($isSQLite) {
                $sqlQuery = "SELECT sql
                               FROM sqlite_master
                              WHERE type = 'table'
                                AND tbl_name = '" . static::$SQL->real_escape_string(self::$classes[static::class]['tablename']) . "'";
            } else {
                $sqlQuery = "SHOW FIELDS FROM `" . self::$classes[static::class]['tablename'] . "`";
            }

            $sqlResult = static::$SQL->uget($sqlQuery);
            if (!$sqlResult) {
                $err = 'Cannot initialize class "' . static::class . '": '
                    . 'cannot connect to the "' . self::$classes[static::class]['tablename'] . '" table.';
                throw new Exception($err);
            }

            if ($isSQLite) {
                preg_match('/^[^\\(]+\\((.*)\\)[^\\)]*$/ims', $sqlResult, $regs);
                $regs = explode(',', $regs[1]);
                $regs = array_map('trim', $regs);
                foreach ($regs as $row) {
                    if (preg_match('/^PRIMARY KEY\\((.*?)\\)/i', $row, $regs2)) {
                        $field = trim($regs2[1]);
                        self::$classes[static::class]['PRI'] = $field;
                    } elseif ((stripos($row, 'PRIMARY KEY') === false) &&
                        (stripos($row, 'UNIQUE') === false) &&
                        (stripos($row, 'CHECK') === false) &&
                        (stripos($row, 'FOREIGN') === false)
                    ) {
                        $regs2 = explode(' ', $row);
                        $field = trim($regs2[0]);
                        self::$classes[static::class]['fields'][$field] = $field;
                        if (stripos($row, 'PRIMARY KEY') !== false) {
                            self::$classes[static::class]['PRI'] = $field;
                            if (stripos($row, 'AUTOINCREMENT') !== false) {
                                self::$classes[static::class]['AI'] = true;
                            }
                        }
                    }
                }
            } else {
                foreach ($sqlResult as $row) {
                    $field = trim($row['Field']);
                    self::$classes[static::class]['fields'][$field] = $field;
                    if ((!static::$idN && $row['Key'] == 'PRI') || (static::$idN == $field)) {
                        self::$classes[static::class]['PRI'] = $field;
                        if ($row['Extra'] == 'auto_increment') {
                            self::$classes[static::class]['AI'] = true;
                        }
                    }
                }
            }

            if (!self::$classes[static::class]['PRI']) {
                throw new Exception('Cannot initialize class "' . static::class . '": no primary key found.');
            }

            // Инициализируем упоминаемые классы
            foreach ($classesToInitialize as $classname) {
                $classname::init();
            }
        }
        return self::$classes[static::class];
    }


    /**
     * Удаляет объект и его окружение согласно установленным связям
     * @param SOME Объект для удаления
     */
    public static function delete(self $object)
    {
        EventProcessor::emit('beforedelete', $object);
        $classname = get_class($object);
        $classname::batchDelete([$object]);
        EventProcessor::emit('delete', $object);
    }


    /**
     * Удаляет объекты и их окружения согласно установленным связям
     *
     * ВНИМАНИЕ!!! Объекты должны быть одного типа соответствующего вызову
     * @param  SOME[] $objects Объекты для удаления
     */
    public static function batchDelete(array $objects)
    {
        EventProcessor::emit('beforebatchdelete', $objects);
        $objectsIds = array_values(array_filter(array_map(function ($x) {
            return $x->_id;
        }, $objects)));
        if ($objectsIds) {
            static::ondelete($objectsIds);
            static::onupdate($objectsIds);
            // 2017-02-10, AVS: переместили удаление текущей сущности в конец, т.к. логичнее удалять ее последней,
            // к тому же возникали проблемы с "висящими" ссылками в RAAS\CMS\Pages при каскадном удалении
            $sqlQuery = "DELETE FROM " . static::_tablename()
                      . " WHERE " . static::_idN() . " IN (" . implode(", ", array_fill(0, count($objectsIds), "?")) . ")";
            $sqlBind = $objectsIds;
            static::$SQL->query([$sqlQuery, $sqlBind]);
        }
        EventProcessor::emit('batchdelete', $objects);
    }


    /**
     * Получает объект по соответствию поля значению
     *
     * Считается что заданное поле должно быть уникальным,
     * поэтому никаких директив сортировки и группировки не предусмотрено.
     * В противном случае рекомендуется пользоваться методом getSQLObject
     *
     * @param string $field - поле таблицы
     * @param mixed $value - значение поля
     */
    final public static function importBy($field, $value)
    {
        if (static::typeof($field) == static::FIELD_REGULAR) {
            $sqlQuery = "SELECT * FROM " . static::_tablename() . " WHERE " . $field . " = ?";
            return static::getSQLObject([$sqlQuery, $value]);
        }
        return null;
    }

    /**
     * Получение набора сущностей согласно схеме классов и дополнительным параметрам
     *
     * Метод возвращает массив объектов текущего класса.
     * Аргументы могут идти в произвольном порядке
     *
     * @param array $params - <pre><code>array<
     *     'select' =>? string[]|array[], Условия для подстановки в выражение SELECT. Условия объединяются запятой
     *         Допускаются как строчные значения, так и массивы запросов с подстановками
     *         По умолчанию равно [имя класса].*
     *     'from' =>? string[], массив строк вида "[имя таблицы] AS [псевдоним] ON [условие подключения]".
     *         Таблицы подключаются через LEFT JOIN.
     *         Первой всегда присутствует таблица текущего класса с псевдонимом, равным имени класса.
     *         Псевдоним не обязателен.
     *         В случае использования метода по связке, будет добавлена также таблица-связка без псевдонима
     *     'where' =>? string[]|array[],  Условия для подстановки в выражение WHERE.
     *         Условия объединяются оператором AND.
     *         Допускаются как строчные значения, так и массивы запросов с подстановками
     *         При использовании метода по ссылке или связке условия связок добавляются автоматически
     *     'groupBy' =>? string|array, Условие для группировки результатов SQL-запроса.
     *         Допускаются как строчные значения, так и массивы запросов с подстановками
     *     'orderBy' =>? string|array Условие для сортировки результатов SQL-запроса
     *         Допускаются как строчные значения, так и массивы запросов с подстановками
     * ></code></pre> дополнительные параметры:
     * @param Pages $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *     После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     */
    public static function getSet()
    {
        // Распознаем аргументы
        static::getSetParseParams(func_get_args(), $Pages, $params);

        // Проверка недостающих таблиц
        static::getSetCheckTables($params, $bindAssoc, $usedAliases, $requiredAliases);

        // Добавление недостающих таблиц и параметров
        if ((static::class != __CLASS__)) {
            $classname = Namespaces::getClass(static::class);
            if (!in_array("`" . $classname . "`.*", $params['select'])) {
                array_unshift($params['select'], "`" . $classname . "`.*");
            }
            if (!in_array($classname, $usedAliases)) {
                array_unshift($params['from'], "`" . static::_tablename() . "` AS `" . $classname . "`");
            }
            foreach ($requiredAliases as $val) {
                if (!in_array($val, $usedAliases)) {
                    $refTree = explode('__', $val);
                    $c = static::class;
                    for ($i = 0; $i < count($refTree); $i++) {
                        $typeOfKey = self::typeof($refTree[$i]);
                        if (in_array($typeOfKey, [
                            static::FIELD_REFERENCE,
                            static::FIELD_LINK,
                            static::FIELD_CHILDREN
                        ])) {
                            $oldAlias = $i ? implode('__', array_slice($refTree, 0, $i)) : Namespaces::getClass($c);
                            $alias = implode('__', array_slice($refTree, 0, $i + 1));
                            if ($typeOfKey == static::FIELD_REFERENCE) {
                                $reference = $c::$references[$refTree[$i]];
                                $refclass = $reference['classname'];
                                if (!in_array($alias, $usedAliases)) {
                                    $params['from'][] = "`" . $refclass::_tablename() . "`
                                        AS `" . $alias . "`
                                        ON `" . $alias . "`.`" . $refclass::_idN() . "` = `" . $oldAlias . "`.`" . $reference['FK'] . "`";
                                    $usedAliases[] = $alias;
                                }
                            } elseif ($typeOfKey == static::FIELD_CHILDREN) {
                                $reference = $c::$children[$refTree[$i]];
                                $refclass = $reference['classname'];
                                if (!in_array($alias, $usedAliases)) {
                                    $params['from'][] = "`" . $refclass::_tablename() . "`
                                        AS `" . $alias . "`
                                        ON `" . $alias . "`.`" . $reference['FK'] . "` = `" . $oldAlias . "`.`" . $c::_idN() . "`";
                                    $usedAliases[] = $alias;
                                }
                            } elseif (($typeOfKey == static::FIELD_LINK)) {
                                $link = $c::$links[$refTree[$i]];
                                if (isset($link['classname'])) {
                                    $refclass = $link['classname'];
                                    $dbprefix = $refclass::_dbprefix();
                                } else {
                                    $dbprefix = static::_dbprefix();
                                }
                                if (!in_array($alias, $usedAliases)) {
                                    // 2015-11-22, AVS: заменил `" . $alias . "___LINK` на `" . $alias . "`,
                                    // т.к. не схватывает имя
                                    // 2015-12-20, AVS: заменил обратно, т.к. возникает одинаковое название
                                    // с целевой страницей ссылки
                                    // (например, cms_materials_pages_assoc AS pages JOIN cms_pages AS pages)
                                    $params['from'][] = "`" . $dbprefix . $link['tablename'] . "`
                                        AS `" . $alias . "___LINK`
                                        ON `" . $alias . "___LINK`.`" . $link['field_from'] . "` = `" . $oldAlias . "`.`" . $c::_idN() . "`";
                                    $usedAliases[] = $alias . '';
                                    if (isset($c::$links[$refTree[$i]]['classname'])) {
                                        $refclass = $link['classname'];
                                        $usedAliases[] = $alias;
                                        $params['from'][] = "`" . $refclass::_tablename() . "`
                                            AS `" . $alias . "`
                                            ON `" . $alias . "`.`" . $refclass::_idN() . "` = `" . $alias . "___LINK`.`" . $link['field_to'] . "`";
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
                $params['where'] = ["1"];
            }
            if ((count($params['from']) > 1) && !$params['groupBy']) {
                $params['groupBy'] = "`" . $classname . "`.`" . static::_idN() . "`";
            }
            if (!$params['orderBy'] && static::$defaultOrderBy) {
                $params['orderBy'] = "`" . $classname . "`.`" . static::$defaultOrderBy . "`";
            }
        }

        // Составление SQL-запроса
        $sql = $sqlBind = [];
        foreach (['select', 'from', 'where'] as $key) {
            foreach ($params[$key] as $val) {
                static::$SQL->parseSQLBindings($val, $x, $y, $bindAssoc);
                $sql[$key][] = $x;
                $sqlBind = array_merge((array)$sqlBind, (array)$y);
            }
        }
        foreach (['groupBy', 'orderBy'] as $key) {
            static::$SQL->parseSQLBindings($params[$key], $x, $y, $bindAssoc);
            $sql[$key] = $x;
            $sqlBind = array_merge((array)$sqlBind, (array)$y);
        }
        $sql['where'] = array_filter($sql['where'], function ($x) {
            return trim($x) !== ''; // 2022-11-11, AVS: сделал строгую проверку, чтобы можно было шунтировать нулём
        });
        $sql['where'] = array_map(function ($x) {
            return "(" . $x . ")";
        }, $sql['where']);
        $sqlQuery = " SELECT SQL_CALC_FOUND_ROWS " . implode(", ", $sql['select'])
                    . " FROM " . implode(" LEFT JOIN ", $sql['from'])
                    . ($sql['where'] ? " WHERE " . implode(" AND ", $sql['where']) : "")
                    . ($sql['groupBy'] ? " GROUP BY " . $sql['groupBy'] : "")
                    . ($sql['orderBy'] ? " ORDER BY " . $sql['orderBy'] : "");
        // echo $sqlQuery; print_r ($sqlBind); exit;
        return static::getSQLSet($sqlBind ? [$sqlQuery, $sqlBind] : $sqlQuery, $Pages);
    }


    /**
     * Получение набора дочерних/ссылочных сущностей согласно схеме классов и дополнительным параметрам
     *
     * Метод возвращает массив дочерних/ссылочных объектов текущего класса.
     * Аргументы могут идти в произвольном порядке
     *
     * @param string $child Наименование дочерней ссылки или связки из схемы класса.
     * @param array $params <pre><code>array<
     *     'select' =>? string[]|array[],   Условия для подстановки в выражение SELECT. Условия объединяются запятой
     *         Допускаются как строчные значения, так и массивы запросов с подстановками
     *         По умолчанию равно [имя класса].*
     *     'from' =>? string[], массив строк вида "[имя таблицы] AS [псевдоним] ON [условие подключения]".
     *         Таблицы подключаются через LEFT JOIN.
     *         Первой всегда присутствует таблица текущего класса с псевдонимом, равным имени класса.
     *         Псевдоним не обязателен.
     *         В случае использования метода по связке, будет добавлена также таблица-связка без псевдонима
     *     'where' =>? string[]|array[], Условия для подстановки в выражение WHERE. Условия объединяются оператором AND.
     *         Допускаются как строчные значения, так и массивы запросов с подстановками
     *         При использовании метода по ссылке или связке условия связок добавляются автоматически
     *     'groupBy' =>? string|array, Условие для группировки результатов SQL-запроса.
     *         Допускаются как строчные значения, так и массивы запросов с подстановками
     *     'orderBy' =>? string|array Условие для сортировки результатов SQL-запроса
     *         Допускаются как строчные значения, так и массивы запросов с подстановками
     * ></code></pre> - дополнительные параметры (все элементы опциональные):
     * @param Pages $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *     После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     */
    final public function getChildSet()
    {
        // Распознаем аргументы
        $this->getSetParseParams(func_get_args(), $Pages, $params, $child, $link);

        // Проверка недостающих таблиц
        static::getSetCheckTables($params, $bindAssoc, $usedAliases, $requiredAliases);

        if ($child) {
            if ($classname = $child['classname']) {
                $class = Namespaces::getClass($classname);
                if ($bindAssoc) {
                    $row = [
                        "`" . $class . "`.`" . $child['FK'] . "` = :SOMEBind_" . $class . "_" . $child['FK'],
                        [':SOMEBind_' . $class . '_' . $child['FK'] => (int)$this->_id]
                    ];
                } else {
                    $row = [
                        "`" . $class . "`.`" . $child['FK'] . "` = ?",
                        (int)$this->_id
                    ];
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
                    $row = [
                        "`" . $tablename . "`.`" . $link['field_from'] . "` = :SOMEBind_" . $tablename . "_" . $link['field_from'],
                        [':SOMEBind_' . $tablename . '_' . $link['field_from'] => (int)$this->_id]
                    ];
                } else {
                    $row = [
                        "`" . $tablename . "`.`" . $link['field_from'] . "` = ?",
                        (int)$this->_id
                    ];
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
     *
     * @param string $sqlQuery текст SQL-запроса
     * @param Pages|null $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *     После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     *     В случае установки в null, постраничной разбивки не происходит.
     * @param string|callback|null $type Принудительное назначение типа.
     *     При указании функции, элементом массива становится результат этой функции от ассоциативного
     *     массива-строки из таблицы базы данных.
     *     При указании строки, элементом массива становится экземпляр класса с названием равным этой строке,
     *     созданный от ассоциативного массива-строки из таблицы базы данных.
     *     При указании null из класса, дочернего к SOME, элементом массива становится экземпляр этого класса,
     *     созданный от ассоциативного массива-строки из таблицы базы данных.
     *     При указании null из класса SOME, элементом массива является ассоциативный массив-строка из таблицы
     *     базы данных.
     * @return array
     */
    final public static function getSQLSet($sqlQuery, $Pages = null, $type = null)
    {
        static::init();
        // Проверка правильности постраничной разбивки
        do {
            // Получение набора строк из базы данных
            $Set = [];
            $sql = $sqlQuery;
            if ($Pages) {
                if (is_array($sqlQuery)) {
                    $sql[0] = $sqlQuery[0]
                        . " LIMIT " . (int)$Pages->from . ", " . (int)$Pages->rows_per_page;
                } else {
                    $sql = $sqlQuery
                        . " LIMIT " . (int)$Pages->from . ", " . (int)$Pages->rows_per_page;
                }
            }
            $temp = static::$SQL->get($sql);
            if ($Pages) {
                $sqlQuery = "SELECT FOUND_ROWS()";
                $total = static::$SQL->getvalue($sqlQuery);
            }

            // Формирование массива сущностей
            for ($i = 0; $i < count($temp); $i++) {
                if (static::class == __CLASS__) {
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
     *
     * @param string|array $sqlQuery текст SQL-запроса или массив подстановочного запроса
     * @param Pages|null $Pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *     После обработки запроса свойства $Pages устанавливаются в соответствии с полученным результатом.
     *     В случае установки в null, постраничной разбивки не происходит.
     * @param string|callback|null $type Принудительное назначение типа.
     *     При указании функции, элементом массива становится результат этой функции от ассоциативного
     *     массива-строки из таблицы базы данных.
     *     При указании строки, элементом массива становится экземпляр класса с названием равным этой строке,
     *     созданный от ассоциативного массива-строки из таблицы базы данных.
     *     При указании null из класса, дочернего к SOME, элементом массива становится экземпляр этого класса,
     *     созданный от ассоциативного массива-строки из таблицы базы данных.
     *     При указании null из класса SOME, элементом массива является ассоциативный массив-строка из таблицы
     *     базы данных.
     * @return array
     */
    final public static function getSQLObject($sqlQuery, $type = null)
    {
        static::init();
        if (is_array($sqlQuery)) {
            if (!stristr($sqlQuery[0], "LIMIT")) {
                $sqlQuery[0] .= " LIMIT 1";
            }
        } else {
            if (!stristr($sqlQuery, "LIMIT")) {
                $sqlQuery .= " LIMIT 1";
            }
        }
        // Получение набора строк из базы данных
        $temp = static::$SQL->getline($sqlQuery);

        // Формирование сущности
        if (static::class == __CLASS__) {
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
     *
     * @param array $array Входной массив. Передается по ссылке для уменьшения расхода памяти.
     * @param Pages|null $pages указатель на экземпляр класса страниц SOME для постраничной разбивки.
     *     После обработки запроса свойства $pages устанавливаются в соответствии с полученным результатом.
     *     В случае установки в null, постраничной разбивки не происходит.
     * @param string|callback|null $type Принудительное назначение типа.
     *     При указании функции, элементом массива становится результат этой функции от элемента $array.
     *     При указании строки, элементом массива становится экземпляр класса с названием равным этой строке,
     *     созданный от элемента $array.
     *     При указании null из класса, дочернего к SOME, элементом массива становится экземпляр этого класса,
     *     созданный от элемента $array.
     *     При указании null из класса SOME, элементом массива является элемент $array.
     * @return array
     */
    final public static function getArraySet(&$array, $pages = null, $type = null)
    {
        static::init();
        do {
            $set = [];
            if ($pages) {
                $temp = array_slice($array, (int)$pages->from, (int)$pages->rows_per_page);
            } else {
                $temp = $array;
            }
            for ($i = 0; $i < count($temp); $i++) {
                if (is_object($temp[$i])) {
                    $set[] = $temp[$i];
                } elseif (is_callable($type)) {
                    $set[] = $type($temp[$i]);
                } elseif ($type !== null) {
                    $set[] = new $type($temp[$i]);
                } elseif (static::class != __CLASS__) {
                    $set[] = new static($temp[$i]);
                } else {
                    $set[] = $temp[$i];
                }
            }
        } while ($pages && !$pages->check(count($set), count($array)));
        return $set;
    }


    /**
     * Возвращает наименование таблицы класса (с учетом префикса таблиц)
     * @return string
     */
    final public static function _tablename()
    {
        static::init();
        return self::$classes[static::class]['tablename'];
    }


    /**
     * Возвращает наименование колонки первичного ключа
     * @return string
     */
    final public static function _idN()
    {
        static::init();
        return self::$classes[static::class]['PRI'];
    }


    /**
     * Возвращает значение статического свойства static::$references
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    public static function _references($key = null)
    {
        return $key ? static::$references[$key] : static::$references;
    }


    /**
     * Возвращает значение статического свойства static::$children
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    public static function _children($key = null)
    {
        return $key ? static::$children[$key] : static::$children;
    }


    /**
     * Возвращает значение статического свойства static::$parents
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    public static function _parents($key = null)
    {
        return $key ? static::$parents[$key] : static::$parents;
    }


    /**
     * Возвращает значение статического свойства static::$links
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    public static function _links($key = null)
    {
        return $key ? static::$links[$key] : static::$links;
    }


    /**
     * Возвращает значение статического свойства static::$caches
     * @param string $key ключ для выборки конкретного элемента массива
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    public static function _caches($key = null)
    {
        return $key ? static::$caches[$key] : static::$caches;
    }


    /**
     * Возвращает значение статического свойства static::$cognizableVars
     * @return array весь массив или один его элемент (тоже являющийся массивом)
     */
    public static function _cognizableVars()
    {
        return static::$cognizableVars;
    }


    /**
     * Возвращает значение статического свойства static::$dbprefix
     * @return string
     */
    public static function _dbprefix()
    {
        return static::$dbprefix;
    }


    /**
     * Возвращает значение статического свойства static::$defaultOrderBy
     * @return string
     */
    public static function _defaultOrderBy()
    {
        return static::$defaultOrderBy;
    }


    /**
     * Возвращает значение статического свойства static::$aiPriority
     * @return string
     */
    public static function _aiPriority()
    {
        return static::$aiPriority;
    }


    /**
     * Возвращает значение статического свойства static::$SQL
     * @return DB
     */
    final public static function _SQL()
    {
        return static::$SQL;
    }


    /**
     * Возвращает значение статического свойства static::$objectCascadeUpdate
     * @return bool
     */
    public static function _objectCascadeUpdate()
    {
        return static::$objectCascadeUpdate;
    }


    /**
     * Возвращает значение статического свойства static::$objectCascadeDelete
     * @return bool
     */
    public static function _objectCascadeDelete()
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
            $classDBPrefix = $classname::$dbprefix;
            $staticDBPrefix = static::$dbprefix;
            $callback = function ($x) use ($classname, $tablename, $field, $classDBPrefix, $staticDBPrefix) {
                return isset($x['tablename'], $x['field_from'])
                        && (($classDBPrefix . $x['tablename']) == ($staticDBPrefix . $tablename))
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
            $result = array_keys($temp);
            $result = array_shift($result);
            return $result;
        }
        return false;
    }


    /**
     * Определяет, какие классы будут затронуты при изменении текущего
     *
     * При изменении текущего класса будут затронуты классы, содержащие внешние кэши с использованием
     * ссылок на текущий класс.
     *
     * @return array <pre><code>array<
     *     string[] Имя класса => array<
     *         string[] Имя кэша класса => mixed Тело кэша класса
     *     >
     * ></code></pre>
     */
    final protected static function affects()
    {
        $result = [];
        foreach (self::$classes as $classname => $class) {
            $aff = $classname::getCachesByClassname(static::class);
            if ($aff) {
                $result[$classname] = $aff;
            }
        }
        return $result;
    }


    /**
     * Определяет, есть ли в данном классе кэши, зависимые от класса $classname
     *
     * @param string $classname имя класса для проверки зависимости
     * @return array массив вида [[имя кэша] => [тело кэша], ...]
     */
    final protected static function getCachesByClassname($classname)
    {
        $aff = [];
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
     *
     * @param bool|null $cascade Фильтр по каскадируемости ссылок.
     *                  Если установлен в null, возвращаются классы с любым типом ссылок.
     *                  Если true или false — соответственно только с каскадируемыми либо некаскадируемыми
     *                  ссылками
     * @return array <pre><code>array<
     *     string[] Имя класса => array<
     *         string[] Имя ссылки класса => array Ссылка класса
     *     >
     * ></code></pre>
     */
    final protected static function isReferencedBy($cascade = null)
    {
        $temp = [];
        foreach (self::$classes as $classname => $class) {
            $aff = $classname::getReferencesByClassname(static::class, $cascade);
            if ($aff) {
                $temp[$classname] = $aff;
            }
        }
        return $temp;
    }


    /**
     * Определяет, есть ли в данном классе ссылки на класс $classname
     * @param string $classname имя класса для проверки ссылок
     * @param bool|null $cascade Фильтр по каскадируемости ссылок.
     *                  Если установлен в null, возвращаются классы с любым типом ссылок.
     *                  Если true или false — соответственно только с каскадируемыми либо некаскадируемыми
     *                  ссылками
     * @return array <pre><code>array<string[] Имя ссылки => array Ссылка>
     */
    final protected static function getReferencesByClassname($classname, $cascade = null)
    {
        $temp = [];
        foreach (static::$references as $ref => $reference) {
            if (($reference['classname'] == $classname) &&
                (($cascade === null) || ($reference['cascade'] == $cascade))
            ) {
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
     *
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
            throw new Exception('You have to define property name (argument #0)');
        }
        $sqlQuery = "SET @priority = 0;
                  UPDATE " . static::_tablename()
              . "    SET " . $priorityN . " = (@priority := @priority + 1)
                   WHERE 1
                ORDER BY " . $priorityN;
        static::$SQL->query($sqlQuery);
        return true;
    }


    /**
     * Принимает все изменения как синхронизированные параметры без записи в базу
     */
    public function trust()
    {
        // 2017-09-01, AVS: поменял с private на public, вдруг понадобится
        $this->properties = array_merge($this->properties, $this->updates);
        $this->updates = [];
        $this->_children = [];
    }

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
    private static function onupdate(array $ids, $ondelete = false)
    {
        if (!$ids) {
            return false;
        }
        $ids = array_map(function ($x) {
            return static::$SQL->quote($x);
        }, $ids);
        // 2023-03-13, AVS: потеряно объявление $eventClass, но судя по названию, наверное это текущий класс
        // Возможно, придется поправить, назначил интуитивно
        $eventClass = static::class;
        $classes = array_keys(array_merge(static::affects(), $ondelete ? static::isReferencedBy(false) : []));
        foreach ($classes as $classname) {
            $sqlSelect = ["__SOME__." . ($classname::$objectCascadeUpdate ? "*" : $classname::_idN())];
            $sqlFrom = [$classname::_tablename() . " AS __SOME__"];
            $sqlWhere = $sqlUpdate = [];
            foreach ($classname::getCachesByClassname($eventClass) as $cacheURN => $cache) {
                if ($classname::$objectCascadeUpdate) {
                    $sqlSelect[$cacheURN] = "(" . $classname::$caches[$cacheURN]['sql'] . ") AS __SOME__" . $cacheURN;
                }
                $sqlUpdate[$cacheURN] = "__SOME__." . $cacheURN . " = (" . $classname::$caches[$cacheURN]['sql'] . ")";
                foreach ($classname::$caches[$cacheURN]['affected'] as $ref) {
                    $reference = $classname::$references[$ref];
                    $referenceClass = $reference['classname'];
                    $sqlFrom[$ref] = "LEFT JOIN " . $referenceClass::_tablename()
                        . " AS " . $ref
                        . " ON " . $ref . "." . $referenceClass::_idN() . " = __SOME__." . $reference['FK'];
                }
                $sqlWhereRow = "(( 0 ";
                foreach ($classname::$caches[$cacheURN]['affected'] as $ref) {
                    $cls = $classname::$references[$ref]['classname'];
                    if ($cls == $classname) {
                        $sqlWhereRow .= " OR " . $ref . "." . $cls::_idN() . " IN (" . implode(", ", $ids) . ")";
                    }
                }
                $sqlWhereRow .= " ) AND (
                                    __SOME__." . $cacheURN . " != (" . $classname::$caches[$cacheURN]['sql'] . "))
                                  )";
                $sqlWhere[] = $sqlWhereRow;
            }

            if ($ondelete) {
                foreach ($classname::getReferencesByClassname($eventClass, false) as $ref => $reference) {
                    if ($classname::$objectCascadeUpdate) {
                        $sqlSelect[$reference['FK']] = "IFNULL(
                                                            " . $ref . "." . $eventClass::_idN() . ",
                                                            DEFAULT(__SOME__." . $reference['FK'] . ")
                                                        ) AS __SOME__" . $reference['FK'];
                    }
                    $sqlUpdate[$reference['FK']] = "__SOME__." . $classname::$references[$ref]['FK'] . " = IFNULL(
                                                        " . $ref . "." . $eventClass::_idN() . ",
                                                        DEFAULT(__SOME__." . $classname::$references[$ref]['FK'] . ")
                                                    )";
                    $sqlFrom[$ref] = "LEFT JOIN " . $eventClass::_tablename()
                                   . "  AS " . $ref
                                   . "  ON " . $ref . "." . $eventClass::_idN() . " = __SOME__." . $reference['FK'];
                    $sqlWhere[] = "(__SOME__." . $reference['FK'] . " != " . $ref . "." . $eventClass::_idN() . "
                                        AND (" . $ref . "." . $eventClass::_idN() . " IN (" . implode(", ", $ids) . ")
                                            OR " . $ref . "." . $eventClass::_idN() . " IS NULL
                                        )
                                    )";
                }
            }

            if ($sqlSelect && $sqlFrom && $sqlWhere && $sqlUpdate) {
                $sqlQuery = "SELECT " . implode(", ", $sqlSelect)
                           . " FROM " . implode(" ", $sqlFrom)
                          . " WHERE " . implode(" OR ", $sqlWhere);
                $sqlUpdate = "UPDATE " . implode(" ", $sqlFrom)
                             . " SET " . implode(", ", $sqlUpdate)
                           . " WHERE " . implode(" OR ", $sqlWhere);
                // print_r ([$sqlQuery, $sqlUpdate]); exit;
            } else {
                return false;
            }

            if ($classname::$objectCascadeUpdate) {
                $sqlResult = $classname::getSQLSet($sqlQuery);
                foreach ($sqlResult as $row) {
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
                $newIds = $classname::$SQL->getcol($sqlQuery);
                $classname::$SQL->query($sqlUpdate);
                $classname::onupdate($newIds);
            }
        }
        return true;
    }


    /**
     * Событие, наступающее при удалении объекта/группы объектов данного класса
     *
     * Реализует каскадные удаления.
     * @param array $ids Массив первичных ключей удаляемых объектов данного класса
     * @return bool Возвращает true, если пройден цикл каскадного изменения, либо false в случае, если
     *              отсутствовали первичные ключи изменяемых/удаляемых элементов
     */
    private static function ondelete(array $ids)
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
        $childrenClasses = static::isReferencedBy(true);
        foreach ($childrenClasses as $classname => $refs) {
            $sqlQuery = "SELECT " . (static::$objectCascadeDelete ? "*" : $classname::_idN())
                       . " FROM " . $classname::_tablename()
                       . " WHERE 0 ";
            foreach ($refs as $ref => $reference) {
                $sqlQuery .= " OR " . $reference['FK'] . " IN (" . implode(", ", $ids) . ") ";
            }

            $sqlResult = static::$SQL->get($sqlQuery);
            if ($sqlResult) {
                if ($classname::$objectCascadeDelete) {
                    $objectsToDelete = array_map(function ($row) use ($classname) {
                        return new $classname($row);
                    }, $sqlResult);
                    $classname::batchDelete($objectsToDelete);
                } else {
                    $idN = $classname::_idN();
                    $newIds = array_map(function ($x) use ($idN) {
                        return $x[$idN];
                    }, $sqlResult);
                    $sqlQuery = "DELETE FROM " . $classname::_tablename()
                              . " WHERE " . $classname::_idN() . " IN (" . implode(", ", array_fill(0, count($newIds), "?")) . ")";
                    $sqlBind = $newIds;
                    $classname::$SQL->query([$sqlQuery, $sqlBind]);
                    $classname::ondelete($newIds);
                    $classname::onupdate($newIds, true);
                }
            }
        }
        // Удаляем связки, где текущий класс найден как сопряженный по поиску
        foreach (static::$links as $key => $link) {
            $sqlQuery = "DELETE FROM " . static::$dbprefix . $link['tablename']
                       . " WHERE " . $link['field_from'] . " IN (" . implode(", ", $ids) . ") ";
            static::$SQL->query($sqlQuery);
        }
        // Удаляем связки, где текущий класс объявлен как сопряженный в явном виде
        foreach (self::$classes as $classname => $class) {
            foreach ($classname::$links as $key => $link) {
                if (($link['classname'] ?? '') == static::class) {
                    $sqlQuery = "DELETE FROM " . $classname::$dbprefix . $link['tablename']
                               . " WHERE " . $link['field_to'] . " IN (" . implode(", ", $ids) . ") ";
                    static::$SQL->query($sqlQuery);
                }
            }
        }
        return true;
    }


    /**
     * Распознает аргументы для метода getSet и getChildSet
     * @param array $args массив переданных аргументов в getSet и getChildSet
     * @param Pages|null обработчик страниц при постраничной разбивке
     * @param array $params <ljcnre><code>array<[
     *    'select' => array(string[]|array[]), Условия для подстановки в выражение SELECT. Условия объединяются запятой
     *        Допускаются как строчные значения, так и массивы запросов с подстановками
     *        По умолчанию равно [имя класса].*
     *    'from' => array(string[]), массив строк вида "[имя таблицы] AS [псевдоним] ON [условие подключения]".
     *        Таблицы подключаются через LEFT JOIN.
     *        Первой всегда присутствует таблица текущего класса с псевдонимом, равным имени класса.
     *        Псевдоним не обязателен.
     *        В случае использования метода по связке, будет добавлена также таблица-связка без псевдонима
     *    'where' => array(string[]|array[]),  Условия для подстановки в выражение WHERE.
     *        Условия объединяются оператором AND.
     *        Допускаются как строчные значения, так и массивы запросов с подстановками
     *        При использовании метода по ссылке или связке условия связок добавляются автоматически
     *    'groupBy' => string|array, Условие для группировки результатов SQL-запроса.
     *        Допускаются как строчные значения, так и массивы запросов с подстановками
     *    'orderBy' => string|array Условие для сортировки результатов SQL-запроса
     *        Допускаются как строчные значения, так и массивы запросов с подстановками
     * ]></code></pre> дополнительные параметры
     * @param string $child|null Наименование дочерней ссылки из схемы класса.
     *     Может использоваться только при не статическом вызове.
     * @param string $link|null Наименование связки из схемы класса.
     *     Может использоваться только при не статическом вызове.
     */
    private static function getSetParseParams(array $args, &$Pages, &$params, &$child = null, &$link = null)
    {
        $Pages = null;
        $params = ['select' => [], 'from' => [], 'where' => [], 'orderBy' => '', 'groupBy' => ''];
        for ($i = 0; $i < count($args); $i++) {
            if ($args[$i] instanceof Pages) {
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
            } elseif (/*isset($this) && ($this instanceof self) && */is_string($args[$i])) {
                // 2021-11-19, AVS: закомментировали, т.к. статический вызов в PHP 7 ругается на $this
                $typeOfKey = static::typeof($args[$i]);
                if ($typeOfKey == static::FIELD_CHILDREN) {
                    $child = static::$children[$args[$i]];
                } elseif ($typeOfKey == static::FIELD_LINK) {
                    $link = static::$links[$args[$i]];
                }
            }
        }
    }


    /**
     * Проверка недостающих таблиц для методов getSet() и getChildSet()
     * @param array $params массив дополнительных параметров, возвращенный из метода getSetParseParams
     * @param bool $bindAssoc указывает, используется ли ассоциативная (TRUE)
     *     SQL-связка или индексированная (FALSE)
     * @param string[] $usedAliases массив объявленных псевдонимов
     *     (или при отсутствии псевдонимов имен таблиц) в разных частях запроса
     * @param string[] $requiredAliases массив ссылаемых псевдонимов
     *     (или при отсутствии псевдонимов имен таблиц) в разных частях запроса
     */
    private static function getSetCheckTables($params, &$bindAssoc, &$usedAliases, &$requiredAliases)
    {
        $bindAssoc = false;
        $usedAliases = [];
        $requiredAliases = [];
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
     * Возвращает тип свойства.
     * @param string $prop Имя свойства
     * @return int Константы типов свойств вида self::FIELD_*
     */
    private static function typeof($prop)
    {
        static::init();
        $clearedProp = static::clearVar($prop);
        if ($prop == self::$classes[static::class]['PRI']) {
            return self::FIELD_ID;
        } elseif (isset(self::$classes[static::class]['fields'][$prop])) {
            return self::FIELD_REGULAR;
        } elseif (isset(static::$references[$prop])) {
            return self::FIELD_REFERENCE;
        } elseif (isset(static::$links[$prop]) || isset(static::$links[$clearedProp])) {
            return self::FIELD_LINK;
        } elseif (in_array($prop, static::$cognizableVars)) {
            return self::FIELD_COGNIZABLE;
        } elseif (isset(static::$children[$clearedProp])) {
            return self::FIELD_CHILDREN;
        } elseif (isset(static::$parents[$clearedProp])) {
            return self::FIELD_PARENTS;
        }
        return self::FIELD_META;
    }


    /**
     * Возвращает наименование свойства, очищенное от префикса all_ и суффикса _ids
     * @param string $prop Наименование свойства
     * @return string
     */
    private static function clearVar($prop)
    {
        $result = $prop;
        if (substr($result, -4) == '_ids') {
            $result = substr($result, 0, -4);
        }
        if (substr($result, 0, 4) == 'all_') {
            $result = substr($result, 4);
        }
        return $result;
    }
}
