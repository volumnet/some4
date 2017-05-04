<?php
/**
 * Файл "обертки" базы данных
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал работы с базами данных, входящей в комплект SOME Framework
 * Основан на использовании интерфейса PDO, соответственно поддерживает те базы данных, PDO-драйвера которых присутствуют в системе
 *
 * @package SOME
 * @subpackage Database
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2013, ООО «Объемные Сети»
 * @version 4.2
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

use SQLite3;

/**
 * Подключаем класс исключения
 */
require_once __DIR__ . '/exception.class.php';

/**
 * "Обертка" интерфейса базы данных
 *
 * @package SOME
 * @subpackage Database
 * @property-read PDO $connection Указатель на соединение с базой данных.
 * @property-read string|null $user Логин пользователя
 * @property-read string|null $encoding Кодировка базы данных
 * @property-read int $insert_id Значение AUTO_INCREMENT-поля при очередной вставке.
 * @property-read bool $safeMode Индикатор безопасного режима
 * @property-read string|null $dbtype Тип базы данных
 * @property-write callback $error_handler Обработчик ошибок. При выбросе нового исключения, вызывается обработчик ошибок.
 *                                Обработчик должен быть в виде: handler (Exception $e)
 * @property-write callback $query_handler Фиксатор запросов. При обработке любого запроса, вызывается фиксатор запросов
 *                                Фиксатор должен быть в виде: handler(string $query, array $bind, float $time), где
 *                                - $query - текст SQL-запроса
 *                                - $bind - массив подстановок
 *                                - $time - время выполнения запроса в секундах
 */

class DB
{
    /**
     * Выбирать данные в ассоциативный массив вида "название колонки" => "значение ячейки"
     */
    const FETCH_ASSOC = \PDO::FETCH_ASSOC;

    /**
     * Выбирать данные в индексированный массив вида "номер колонки по порядку" => "значение ячейки"
     */
    const FETCH_NUM = \PDO::FETCH_NUM;

    /**
     * Выбирать данные в смешанный массив из массивов вида "название колонки" => "значение ячейки"
     * и "номер колонки по порядку" => "значение ячейки"
     */
    const FETCH_BOTH = \PDO::FETCH_BOTH;

    /**
     * Указатель на соединение с базой данных.
     * @var PDO
     */
    protected $connection;

    /**
     * Data Source Name - строка подключения к базе данных, совместимая с PDO.
     * @var string|null
     */
    protected $dsn;

    /**
     * Логин пользователя
     *
     * Если не указан, используется пользователь по умолчанию
     * @var string|null
     */
    protected $user;

    /**
     * Пароль пользователя
     *
     * Если не указан, используется подключение без пароля
     * @var string|null
     */
    protected $password;

    /**
     * Кодировка базы данных
     *
     * Если не указан, используется кодировка по умолчанию
     * @var string|null
     */
    protected $encoding;

    /**
     * Значение AUTO_INCREMENT-поля при очередной вставке.
     *
     * Равно значению последней вставленной записи в таблицу с AUTO_INCREMENT-полем.
     * ВНИМАНИЕ!!! РАБОТАЕТ ТОЛЬКО ПРИ ВСТАВКЕ С ПОМОЩЬЮ МЕТОДА add() И ТОЛЬКО ДЛЯ ДРАЙВЕРОВ БАЗ ДАННЫХ, ПОДДЕРЖИВАЮЩИХ
     * ДИРЕКТИВУ AUTO_INCREMENT
     * @var int
     */
    protected $insert_id;

    /**
     * Обработчик ошибок
     *
     * При выбросе нового исключения, вызывается обработчик ошибок
     * Обработчик должен быть в виде: handler(Exception $e), где $e - полученное исключение
     * @var callback
     */
    protected $error_handler;

    /**
     * Фиксатор запросов
     *
     * При обработке любого запроса, вызывается фиксатор запросов
     * Фиксатор должен быть в виде: handler(string $query, array $bind, float $time), где
     * - $query - текст SQL-запроса
     * - $bind - массив подстановок
     * - $time - время выполнения запроса в секундах
     * @var callback
     */
    protected $query_handler;

    /**
     * Индикатор безопасного режима
     *
     * В безопасном режиме выполняются только запросы на выборку данных.
     * Запросы на изменение реально не выполняются, при этом нормально функционируют обработчики запросов и ошибок.
     * @var bool
     */
    protected $safeMode;

    /**
     * Конструктор класса
     *
     * Создает объект подключения к базе данных.
     * @param string $DSN Data Source Name - строка подключения к базе данных, совместимая с PDO
     * @param string $user Логин пользователя. Если не указан, используется пользователь по умолчанию
     * @param string $password Пароль пользователя. Если не указан, используется подключение без пароля
     * @param string $encoding Кодировка базы данных. Если не указан, используется кодировка по умолчанию
     * @param callback $error_handler Обработчик ошибок. При выбросе нового исключения, вызывается обработчик ошибок.
     *                                Обработчик должен быть в виде: handler (Exception $e)
     * @param callback $query_handler Фиксатор запросов. При обработке любого запроса, вызывается фиксатор запросов
     *                                Фиксатор должен быть в виде: handler(string $query, array $bind, float $time), где
     *                                - $query - текст SQL-запроса
     *                                - $bind - массив подстановок
     *                                - $time - время выполнения запроса в секундах
     * @param bool $safeMode Индикатор безопасного режима
     */
    public function __construct(
        $DSN,
        $user = null,
        $password = null,
        $encoding = null,
        $error_handler = null,
        $query_handler = null,
        $safeMode = false
    ) {
        $this->dsn      = $DSN;
        $this->user     = $user;
        $this->password = $password;
        $this->encoding = $encoding;
        $this->insert_id = 0;
        $this->error_handler = $error_handler;
        $this->query_handler = $query_handler;
        $this->safeMode = $safeMode;

        try {
            $this->connection = new \PDO($this->dsn, $this->user, $this->password);
            if ($this->encoding && !in_array($this->dbtype, array('sqlite', 'sqlite2'))) {
                $this->query("SET NAMES '" . $this->encoding . "'");
            }
        } catch (\PDOException $e) {
            if ($this->error_handler) {
                call_user_func($this->error_handler, $e);
            }
        }
    }


    public function __get($var)
    {
        if (in_array($var, array('connection', 'user', 'encoding', 'insert_id', 'safeMode'))) {
            return $this->$var;
        } elseif ($var == 'dbtype') {
            if (preg_match('/^(.*?)\\:/i', $this->dsn, $regs)) {
                return strtolower($regs[1]);
            }
            return null;
        }
    }


    public function __set($var, $val)
    {
        if (in_array($var, array('error_handler', 'query_handler')) && is_callable($val)) {
            $this->$var = $val;
        }
    }


    /**
     * Выполняет запрос к базе данных
     *
     * Выполняет SQL-запрос и помещает результат в свойство $result
     * @param string|array $sql SQL-запрос - может быть четырех видов (в тексте запроса допускается несколько запросов, разделенных точкой с запятой):
     *                          - простой текстовый запрос
     *                          - массив вида array("текст запроса", "аргумент для подстановки", "аргумент для подстановки", ...)
     *                          - массив вида array("текст запроса", array("аргумент для подстановки", "аргумент для подстановки", ...))
     *                          - массив вида array("текст запроса", array("ключ" => "аргумент для подстановки", "ключ" => "аргумент для подстановки", ...))
     *                          В последних трех случаях аргументы для подстановки подставляются в запрос
     *                          - вместо знаков ? (для перечисленных аргументов или индексированного массива)
     *                          - вместо меток вида :"ключ" (для ассоциативного массива)
     * @return PDOStatement|false возвращает содержимое переменной $result при успешном выполнении запроса либо false в случае ошибки.
     *                            В последнем случае также добавляет ошибку в массив ошибок $error
     */
    public function query($sql)
    {
        $this->ping();
        $this->parseSQLBindings($sql, $SQL_query, $SQL_bind);
        // Выполняем запрос
        $time_start = microtime(true);
        try { // Пробуем выполнить запрос
            $result = $this->query_doQuery($SQL_query, $SQL_bind);
        } catch (Exception $e) { // Ошибка
            if ($this->error_handler) {
                call_user_func($this->error_handler, $e);
            }
            $save_ok = false;
        }
        $time_end = microtime(true);
        if ($this->query_handler) {
            call_user_func($this->query_handler, $SQL_query ?: false, (array)$SQL_bind, $time_end - $time_start);
        }
        return $result;
    }


    /**
     * Проверяет соединение с базой данных, если простейший запрос не выполняется, переподключается
     * @todo Нужно сделать, чтобы не глючило при вызове SELECT FOUND_ROWS()
     */
    public function ping()
    {
        try {
            //$this->connection->query("SELECT 1");
        } catch (PDOException $e) {
            $this->__construct($this->dsn, $this->user, $this->password, $this->encoding, $this->error_handler, $this->query_handler, $this->safeMode);
        }
    }


    /**
     * Возвращает массив-таблицу согласно SQL-запросу
     *
     * Результат формируется в виде индексированного массива, каждый элемент которого представляет собой ассоциативный
     * (ключами являются названия полей), индексированный либо смешанный (объединение ассоциативного и индексированного) массив данных
     * из ячеек таблицы базы данных
     * @param string|array $sql SQL-запрос - может быть четырех видов (в тексте запроса допускается несколько запросов, разделенных точкой с запятой):
     *                          - простой текстовый запрос
     *                          - массив вида array("текст запроса", "аргумент для подстановки", "аргумент для подстановки", ...)
     *                          - массив вида array("текст запроса", array("аргумент для подстановки", "аргумент для подстановки", ...))
     *                          - массив вида array("текст запроса", array("ключ" => "аргумент для подстановки", "ключ" => "аргумент для подстановки", ...))
     *                          В последних трех случаях аргументы для подстановки подставляются в запрос
     *                          - вместо знаков ? (для перечисленных аргументов или индексированного массива)
     *                          - вместо меток вида :"ключ" (для ассоциативного массива)
     * @param int $result_type Тип возвращаемого массива:
     *                         self::FETCH_ASSOC для ассоциативного, self::FETCH_NUM для индексированного и self::FETCH_BOTH для смешанного.
     *                         По умолчанию возвращается ассоциативный массив (self::FETCH_ASSOC)
     * @param bool $multiple Если true, возвращает результат в виде массива таблиц для множественных результатов
     *                       (для одиночного результата - массив из одного элемента)
     *                       Если false, будет выведена одна таблица из строк разных таблиц множественного результата)
     * @return array|false Выборка данных из SQL-запроса; пустой массив в случае отсутствия выходных данных либо false в случае ошибки
     */
    public function get($sql, $result_type = self::FETCH_ASSOC, $multiple = false)
    {
        $result = $this->query($sql);
        if (!$result) {
            return false;
        }
        $temp = array();
        do {
            $temp[] = $result->fetchAll($result_type);
        } while (@$result->nextRowset());
        $result->closeCursor();
        return $multiple ? $temp : array_reduce($temp, 'array_merge', array());
    }


    /**
     * Возвращает массив-строку согласно SQL-запросу
     *
     * Результат формируется в виде ассоциативного (ключами являются названия полей), индексированного либо смешанного
     * (объединение ассоциативного и индексированного) массива данных из ячеек первой строки таблицы базы данных
     * @param string|array $sql SQL-запрос - может быть четырех видов (в тексте запроса допускается несколько запросов, разделенных точкой с запятой):
     *                          - простой текстовый запрос
     *                          - массив вида array("текст запроса", "аргумент для подстановки", "аргумент для подстановки", ...)
     *                          - массив вида array("текст запроса", array("аргумент для подстановки", "аргумент для подстановки", ...))
     *                          - массив вида array("текст запроса", array("ключ" => "аргумент для подстановки", "ключ" => "аргумент для подстановки", ...))
     *                          В последних трех случаях аргументы для подстановки подставляются в запрос
     *                          - вместо знаков ? (для перечисленных аргументов или индексированного массива)
     *                          - вместо меток вида :"ключ" (для ассоциативного массива)
     * @param int $result_type Тип возвращаемого массива:
     *                         self::FETCH_ASSOC для ассоциативного, self::FETCH_NUM для индексированного и self::FETCH_BOTH для смешанного.
     *                         По умолчанию возвращается ассоциативный массив (self::FETCH_ASSOC)
     * @return array|false Строка данных из SQL-запроса; пустой массив в случае отсутствия выходных данных либо false в случае ошибки
     */
    public function getline($sql, $result_type = self::FETCH_ASSOC)
    {
        if (!($result = $this->query($sql))) {
            return false;
        }
        $temp = $result->fetch($result_type);
        $result->closeCursor();
        return $temp;
    }


    /**
     * Возвращает массив-столбец согласно SQL-запросу
     *
     * Результат формируется в виде индексированного массива, каждый элемент которого представляет собой значение первого столбца
     * таблицы-выборки в соответствующей строке
     * @param string|array $sql SQL-запрос - может быть четырех видов (в тексте запроса допускается несколько запросов, разделенных точкой с запятой):
     *                          - простой текстовый запрос
     *                          - массив вида array("текст запроса", "аргумент для подстановки", "аргумент для подстановки", ...)
     *                          - массив вида array("текст запроса", array("аргумент для подстановки", "аргумент для подстановки", ...))
     *                          - массив вида array("текст запроса", array("ключ" => "аргумент для подстановки", "ключ" => "аргумент для подстановки", ...))
     *                          В последних трех случаях аргументы для подстановки подставляются в запрос
     *                          - вместо знаков ? (для перечисленных аргументов или индексированного массива)
     *                          - вместо меток вида :"ключ" (для ассоциативного массива)
     * @param bool $multiple Если true, возвращает результат в виде массива столбцов для множественных результатов
     *                       (для одиночного результата - массив из одного элемента)
     *                       Если false, будет выведена одна таблица из значений столбца разных таблиц множественного результата)
     * @return array|false Выборка данных из SQL-запроса; пустой массив в случае отсутствия выходных данных либо false в случае ошибки
     */
    public function getcol($sql, $multiple = false)
    {
        if (!($result = $this->query($sql))) {
            return false;
        }
        $temp = array();
        do {
            $temp[] = $result->fetchAll(\PDO::FETCH_COLUMN);
        } while (@$result->nextRowset());
        $result->closeCursor();
        return $multiple ? $temp : array_reduce($temp, 'array_merge', array());
    }


    /**
     * Возвращает скалярное значение согласно SQL-запросу
     *
     * Результат представляет собой значение ячейки в первом столбце, первой строке таблицы-выборки
     * @param string|array $sql SQL-запрос - может быть четырех видов (в тексте запроса допускается несколько запросов, разделенных точкой с запятой):
     *                          - простой текстовый запрос
     *                          - массив вида array("текст запроса", "аргумент для подстановки", "аргумент для подстановки", ...)
     *                          - массив вида array("текст запроса", array("аргумент для подстановки", "аргумент для подстановки", ...))
     *                          - массив вида array("текст запроса", array("ключ" => "аргумент для подстановки", "ключ" => "аргумент для подстановки", ...))
     *                          В последних трех случаях аргументы для подстановки подставляются в запрос
     *                          - вместо знаков ? (для перечисленных аргументов или индексированного массива)
     *                          - вместо меток вида :"ключ" (для ассоциативного массива)
     * @return mixed Значение из SQL-запроса либо false в случае ошибки
     */
    public function getvalue($sql)
    {
        if (!($result = $this->query($sql))) {
            return false;
        }
        $cells = $result->fetch(self::FETCH_NUM);
        $result->closeCursor();
        if (isset($cells)) {
            return $cells[0];
        }
        return false;
    }


    /**
     * Возвращает данные таблицы-выборки согласно SQL-запросу
     *
     * Результат формируется:
     * - для многострочной многостолбцовой (невырожденной) таблицы: в виде индексированного массива, каждый элемент которого представляет собой
     *   ассоциативный (ключами являются названия полей), индексированный либо смешанный (объединение ассоциативного и индексированного) массив
     *   данных из ячеек таблицы базы данных
     * - для однострочной многостолбцовой таблицы: в виде ассоциативного (ключами являются названия полей), индексированного либо смешанного
     *   (объединение ассоциативного и индексированного) массива данных из ячеек строки
     * - для многострочной одностолбцовой таблицы: в виде индексированного массива, каждый элемент которого представляет собой значение колонки
     *   в соответствующей строке
     * - для однострочной одностолбцовой таблицы: в виде значения единственной ячейки таблицы
     * @param string|array $sql SQL-запрос - может быть четырех видов (в тексте запроса допускается несколько запросов, разделенных точкой с запятой):
     *                          - простой текстовый запрос
     *                          - массив вида array("текст запроса", "аргумент для подстановки", "аргумент для подстановки", ...)
     *                          - массив вида array("текст запроса", array("аргумент для подстановки", "аргумент для подстановки", ...))
     *                          - массив вида array("текст запроса", array("ключ" => "аргумент для подстановки", "ключ" => "аргумент для подстановки", ...))
     *                          В последних трех случаях аргументы для подстановки подставляются в запрос
     *                          - вместо знаков ? (для перечисленных аргументов или индексированного массива)
     *                          - вместо меток вида :"ключ" (для ассоциативного массива)
     * @param int $result_type Тип возвращаемого массива:
     *                         self::FETCH_ASSOC для ассоциативного, self::FETCH_NUM для индексированного и self::FETCH_BOTH для смешанного.
     *                         По умолчанию возвращается ассоциативный массив (self::FETCH_ASSOC)
     * @return mixed Выборка данных из SQL-запроса либо false в случае ошибки или пустого запроса
     */
    public function uget($sql, $result_type = self::FETCH_ASSOC)
    {
        if (!($result = $this->query($sql))) {
            return false;
        }
        // Собираем данные
        $temp = array();
        do {
            $temp2 = $result->fetchAll(($result->columnCount() > 1) ? $result_type : \PDO::FETCH_COLUMN);
            if (count($temp2) > 1) {
                $temp[] = $temp2;
            } elseif (count($temp2)) {
                $temp[] = $temp2[0];
            }
            unset($temp2);
        } while (@$result->nextRowset());
        $result->closeCursor();
        return count($temp) > 1 ? $temp : $temp[0];
    }


    /**
     * Добавляет данные в таблицу
     *
     * Добавляет одну или несколько строк в таблицу базы данных, объединяя добавление строк с одинаковыми наборами имен столбцов,
     * в расширенные запросы
     * @param string $table Имя таблицы базы данных для добавления данных
     * @param array|string $lines Индексированный массив строк или отдельная строка для добавления в таблицу.
     *                            Такая строка представляет собой ассоциативный массив, где ключами полей являются имена столбцов базы данных,
     *                            значениями - данные ячеек. При этом значения, представленные как тип object воспринимаются как непосредственные
     *                            SQL-инструкции и не обрамляются кавычками
     * @param bool|array $replace Если установлен в true, используется конструкция REPLACE. Если установлен в false - то конструкция INSERT.
     *                            Если является массивом, используется конструкция INSERT, а при вставке строк с уже имеющимися ключами,
     *                            строка обновляется в соответствии с заданным массивом. Массив должен быть ассоциативным, где ключами полей
     *                            являются имена столбцов базы данных, значениями - данные ячеек. При этом значения, представленные как тип
     *                            object воспринимаются как непосредственные SQL-инструкции и не обрамляются кавычками
     * @return bool Возвращает true в случае успешного добавления всех(!) строк, либо false в случае возникновения ошибок
     */
    public function add($table, $lines, $replace = true)
    {
        $sql = $this->export($table, $lines, $replace);
        if ($sql) {
            $result = $this->query($sql);
            $this->insert_id = $this->connection->lastInsertId();
            return $this->insert_id;
        } else {
            return true;
        }
    }


    /**
     * Изменяет данные в таблице
     *
     * Изменяет строки в таблице базы данных согласно условию
     * @param string $table Имя таблицы базы данных для изменения данных
     * @param string $condition Условие для использования в WHERE-конструкции языка SQL
     * @param array $line Строка для добавления в таблицу. Представляет собой ассоциативный массив, где ключами полей являются имена
     *                     столбцов базы данных, значениями - данные ячеек. При этом значения, представленные как тип object воспринимаются
     *                     как непосредственные SQL-инструкции и не обрамляются кавычками
     * @return bool Возвращает true в случае успешного обновления данных, либо false в случае возникновения ошибок
     */
    public function update($table, $condition, array $line = array())
    {
        $SQL_query = "UPDATE " . $table . " SET ";
        $SQL_array = array();
        $SQL_bind = array();

        $this->parseSQLBindings($condition, $conditionSQL, $conditionBind, $bindAssoc);

        foreach ($line as $key => $value) {
            $row = $this->real_escape_string($key) . " = ";
            if (is_object($value)) {
                $row .= $value->scalar;
            } elseif ($bindAssoc) {
                $row .= ":SOMEBind_" . $this->real_escape_string($key);
                $SQL_bind[":SOMEBind_" . $key] = $value;
            } else {
                $row .= "?";
                $SQL_bind[] = $value;
            }
            $SQL_array[] = $row;
        }

        if ($conditionBind) {
            $SQL_bind = array_merge($SQL_bind, $conditionBind);
        }

        $SQL_query .= implode(", ", $SQL_array) . " WHERE " . $conditionSQL;
        if ($result = $this->query(array($SQL_query, $SQL_bind))) {
            return $result;
        }
        return false;
    }


    /**
     * Защищает строку для безопасного использования в SQL-запросе
     *
     * Экранирует кавычки и прочие небезопасные символы для предотвращения ошибок и SQL-инъекций
     * @param string $string строка для преобразования
     * @return string экранированная строка
     */
    public function real_escape_string($string)
    {
        if (in_array($this->dbtype, array('sqlite', 'sqlite2'))) {
            return SQLite3::escapeString($string);
        } else {
            return addslashes($string);
        }
    }


    /**
     * Синоним для real_escape_string()
     *
     * Экранирует кавычки и прочие небезопасные символы для предотвращения ошибок и SQL-инъекций
     * @param string $string строка для преобразования
     * @return string экранированная строка
     */
    public function escape_string($string)
    {
        return $this->real_escape_string($string);
    }


    /**
     * Готовит строку для использования с оператором LIKE
     *
     * Экранирует кавычки и прочие небезопасные символы для предотвращения ошибок и SQL-инъекций, а также знаки _ и %
     * @param string $string строка для преобразования
     * @return string строка, готовая к использованию с оператором LIKE
     */
    public function escape_like($string)
    {
        return strtr(addslashes($string), array('_' => '\_', '%' => '\%'));
    }


    /**
     * Защищает строку для безопасного использования в SQL-запросе с последующим помещением в кавычки, если необходимо
     *
     * Экранирует кавычки и прочие небезопасные символы для предотвращения ошибок и SQL-инъекций. Затем строковые данные помещает в одинарные
     * кавычки, а числовые типы оставляет без изменений.
     * @param string $string строка для преобразования
     * @return string преобразованная строка. Если строка не числовая, она обрамлена одинарными кавычками
     */
    public function quote($string)
    {
        return is_string($string) ? $this->connection->quote($string) : $string;
    }


    /**
     * Создает корректный SQL-запрос на добавление данных
     *
     * Создает корректный SQL-запрос на добавление одной или нескольких строк в таблицу базы данных, объединяя добавление строк с одинаковыми
     * наборами имен столбцов, в расширенные запросы
     * @param string $table Имя таблицы базы данных для добавления данных
     * @param array $lines Индексированный массив строк или отдельная строка для добавления в таблицу. Такая строка представляет собой
     *              ассоциативный массив, где ключами полей являются имена столбцов базы данных, значениями - данные ячеек.
     *              При этом значения, представленные как тип object воспринимаются как непосредственные SQL-инструкции и не обрамляются
     *              кавычками
     * @param bool|array $replace Если установлен в true, используется конструкция REPLACE. Если установлен в false - то конструкция INSERT.
     *                            Если является массивом, используется конструкция INSERT, а при вставке строк с уже имеющимися ключами,
     *                            строка обновляется в соответствии с заданным массивом. Массив должен быть ассоциативным, где ключами полей
     *                            являются имена столбцов базы данных, значениями - данные ячеек. При этом значения, представленные как тип
     *                            object воспринимаются как непосредственные SQL-инструкции и не обрамляются кавычками
     * @return string Возвращает SQL-запрос на добавление данных. Если инструкций несколько, они разделяются точками с запятыми.
     */
    public function export($table, $lines, $replace = true)
    {
        $sql = array();
        $queries = $this->export_getQueries($lines);
        if ($queries === false) {
            return false;
        }
        foreach ($queries as $query) {
            list($fields, $values) = $this->export_getFieldsValues($query);
            $sql[] = $this->export_getSQL($table, $fields, $values, $replace);
        }
        return implode(";\n", $sql);
    }


    /**
     * Распознает различные формы SQL-запроса в собственно запрос и подстановки, для использования в методе $this->query()
     *
     * @param string|array $sql SQL-запрос - может быть четырех видов (в тексте запроса допускается несколько запросов, разделенных точкой с запятой):
     *                     - простой текстовый запрос
     *                     - массив вида array("текст запроса", "аргумент для подстановки", "аргумент для подстановки", ...)
     *                     - массив вида array("текст запроса", array("аргумент для подстановки", "аргумент для подстановки", ...))
     *                     - массив вида array("текст запроса", array("ключ" => "аргумент для подстановки", "ключ" => "аргумент для подстановки", ...))
     *                     В последних трех случаях аргументы для подстановки подставляются в запрос
     *                     - вместо знаков ? (для перечисленных аргументов или индексированного массива)
     *                     - вместо меток вида :"ключ" (для ассоциативного массива)
     * @param string $SQL_query Текст запроса с шаблонами подстановок
     * @param array $SQL_bind Массив подстановок (ассоциативный или индексированный)
     * @param bool|null $bindAssoc TRUE, если массив подстановок ассоциативный и FALSE, если индексированный
     */
    public function parseSQLBindings($sql, &$SQL_query, &$SQL_bind, &$bindAssoc = false)
    {
        $SQL_bind = array();
        if (is_array($sql)) {
            $SQL_query = $sql[0];
            if (isset($sql[1]) && is_array($sql[1])) {
                $SQL_bind = $sql[1];
            } else {
                $SQL_bind = array_slice($sql, 1);
            }
        } else {
            $SQL_query = $sql;
        }
        if (array_values($SQL_bind) !== $SQL_bind) {
            $bindAssoc = true;
        }
    }


    /**
     * Вычисляет режим подстановки для значения, для использования в методе $this->query()
     *
     * @param mixed $val Значение для проверки
     * @return int Тип подстановки в формате PDO::PARAM_...
     */
    private function query_getBindMode($val)
    {
        if ((is_int($val) || is_float($val)) && ((float)$val - (float)(int)$val) == 0) {
            $mode = \PDO::PARAM_INT;
        } elseif (is_bool($val)) {
            $mode = \PDO::PARAM_BOOL;
        } elseif (is_null($val)) {
            $mode = \PDO::PARAM_NULL;
        } else {
            $mode = \PDO::PARAM_STR;
        }
        return $mode;
    }


    /**
     * Непосредственно осуществляет запрос к базе данных, для использования в методе $this->query()
     *
     * @param string $SQL_query Текст запроса с шаблонами подстановок
     * @param array $SQL_bind Массив подстановок (ассоциативный или индексированный)
     */
    private function query_doQuery($SQL_query, array $SQL_bind = null)
    {
        if ($this->safeMode) {
            if (strstr($SQL_query, "INSERT ") || strstr($SQL_query, "UPDATE ") || strstr($SQL_query, "DELETE ") || strstr($SQL_query, "FILE ") ||
                strstr($SQL_query, "CREATE ") || strstr($SQL_query, "ALTER ") || strstr($SQL_query, "INDEX ") || strstr($SQL_query, "DROP ") ||
                    strstr($SQL_query, "REPLACE ")
            ) {
                return null;
            }
        }
        if ($SQL_bind) {
            $result = $this->connection->prepare($SQL_query);
            foreach ($SQL_bind as $key => $val) {
                $result->bindValue(is_numeric($key) ? $key + 1 : $key, $val, $this->query_getBindMode($val));
            }
            $result->execute();
        } else {
            $result = $this->connection->query($SQL_query);
        }
        $errorInfo = ($result ? $result->errorInfo() : $this->connection->errorInfo());
        if ($errorInfo[2]) {
            throw new Exception($errorInfo[2] . ' (SQLSTATE: ' . $errorInfo[0] . ')', $errorInfo[1]);
            return false;
        }
        return $result;
    }


    /**
     * Возвращает группы данных для добавления, для использования в методе $this->export()
     *
     * Одна группа представляет собой массив однородных (содержащих одинаковые поля) строк для добавления
     * @param array $lines Индексированный массив строк или отдельная строка для добавления в таблицу. Такая строка представляет собой
     *              ассоциативный массив, где ключами полей являются имена столбцов базы данных, значениями - данные ячеек.
     *              При этом значения, представленные как тип object воспринимаются как непосредственные SQL-инструкции и не обрамляются
     *              кавычками
     * @return array|false Массив групп, либо false в случае ошибки распознавания строк
     */
    private function export_getQueries(array $lines)
    {
        if (!is_array($lines) || !$lines) {
            return false;
        } elseif (!isset($lines[0]) || !is_array($lines[0])) {
            $lines = array($lines);
        }
        $queries = array();
        foreach ($lines as $line) {
            $found = false;
            for ($i = 0; $i < count($queries); $i++) {
                if (array_keys($line) == array_keys($queries[$i][0])) {
                    $queries[$i][] = $line;
                    $found = true;
                    break;
                }
            }
            if (!$found) {
                $queries[] = array($line);
            }
        }
        return $queries;
    }


    /**
     * Возвращает названия полей и соответствующие значения из запроса, для использования в методе $this->export()
     *
     * @param array $query группа строк (массивов вида array([наименования поля] => [значение поля], ...)) с одинаковыми полями для добавления
     * @return array Массив вида array(array([название поля], ...), array([sql-строка для добавления], ...))
     */
    private function export_getFieldsValues(array $query)
    {
        $THIS = $this;
        $fields = array_map(function ($x) use ($THIS) {
            return $THIS->real_escape_string($x);
        }, array_keys($query[0]));
        $values = array();
        for ($i = 0; $i < count($query); $i++) {
            $cells = array();
            for ($j = 0; $j < count($fields); $j++) {
                $val = $query[$i][$fields[$j]];
                if (is_object($val)) {
                    $cells[] = $val->scalar;
                } elseif (is_int($val) || is_float($val)) {
                    $cells[] = $val;
                } elseif (is_bool($val)) {
                    $cells[] = (int)$val;
                } elseif (is_null($val)) {
                    $cells[] = "NULL";
                } else {
                    $cells[] = "'" . $this->real_escape_string($val) . "'";
                }
            }
            $values[] = '(' . implode(', ', $cells) . ')';
        }
        return array($fields, $values);
    }


    /**
     * Возвращает SQL-запрос на добавление данных
     *
     * @param string $table Наименование таблицы
     * @param array $fields Массив колонок, возвращенный методом $this->export_getFieldsValues
     * @param array $values Массив SQL-строк для добавления, возвращенный методом $this->export_getFieldsValues
     * @param bool|array $replace Если установлен в true, используется конструкция REPLACE. Если установлен в false - то конструкция INSERT.
     *                            Если является массивом, используется конструкция INSERT, а при вставке строк с уже имеющимися ключами,
     *                            строка обновляется в соответствии с заданным массивом. Массив должен быть ассоциативным, где ключами полей
     *                            являются имена столбцов базы данных, значениями - данные ячеек. При этом значения, представленные как тип
     *                            object воспринимаются как непосредственные SQL-инструкции и не обрамляются кавычками
     * @return string SQL-запрос на добавление данных
     */
    private function export_getSQL($table, $fields, $values, $replace = true)
    {
        if (in_array($this->dbtype, array('sqlite', 'sqlite2'))) {
            $replace = (bool)$replace;
        }
        if (is_array($replace) && $replace) {
            $temp = array();
            foreach ($replace as $key => $value) {
                $row = "`" . $this->real_escape_string($key) . "` = ";
                if (is_object($value)) {
                    $row .= $value->scalar;
                } elseif (is_int($value) || is_float($value)) {
                    $row .= $value;
                } elseif (is_bool($value)) {
                    $row .= (int)$value;
                } elseif (is_null($value)) {
                    $row .= "NULL";
                } else {
                    $row .= "'" . $this->real_escape_string((string)$value) . "'";
                }
                $temp[] = $row;
            }
        }
        $SQL_query = ($replace && !is_array($replace) ? "REPLACE" : "INSERT") . " INTO `" . $table . "`"
                   . " (";
        $SQL_query .= implode(
            ", ",
            array_map(
                function ($x) {
                    return "`" . $x . "`";
                },
                $fields
            )
        );
        $SQL_query .= ") VALUES \n" . implode(",\n", $values);
        if (isset($temp) && $temp) {
            $SQL_query .= " ON DUPLICATE KEY UPDATE " . implode(", ", $temp);
        }
        return $SQL_query;
    }
}
