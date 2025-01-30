<?php
/**
 * Файл "обертки" базы данных
 *
 * Основан на использовании интерфейса PDO, соответственно поддерживает те базы данных,
 * PDO-драйвера которых присутствуют в системе
 * <pre><code>
 * Предустановленные типы:
 *
 * [ЗАПРОС] => string|
 *     [string Текст запроса, ...mixed Аргументы для подстановки]|
 *     [string Текст запроса, mixed[] Аргументы для подстановки]|
 *     [string Текст запроса, array<string[] Ключ подстановки => mixed Значение подстановки>]  SQL-запрос.
 *     В последних трех случаях аргументы для подстановки подставляются в запрос
 *     - вместо знаков ? (для перечисленных аргументов или индексированного массива)
 *     - вместо меток вида :"ключ" (для ассоциативного массива)
 *
 * [ОБРАБОТЧИК ОШИБОК] => function (Exception) Обработчик ошибок. Вызывается при выбросе нового исключения.
 *
 * [ФИКСАТОР ЗАПРОСОВ] => function (
 *     string $query Текст SQL-запроса,
 *     array $bind Массив подстановок,
 *     float $time Время выполнения запроса в секундах
 * ) Фиксатор запросов. Вызывается при обработке любого запроса
 *
 * [СТРОКА ТАБЛИЦЫ] => array<string|int[] Наименование столбца либо индекс => mixed>
 *     В случае получения ассоциативный или индексированный массив в зависимости от настроек выдачи ($resultType)
 *     В случае вставки всегда индексированный массив,
 *     значения типа object воспринимаются как непосредственные SQL-инструкции через переменную scalar
 *
 * [ТАБЛИЦА] => array<[СТРОКА ТАБЛИЦЫ]>
 *
 * [МУЛЬТИТАБЛИЦА] => array<[ТАБЛИЦА]>
 *
 * [КОЛОНКА] => mixed[]
 *
 * [МУЛЬТИКОЛОНКА] => array<[КОЛОНКА]>
 * </code></pre>
 * @package SOME
 */
namespace SOME;

use Exception;
use PDO;
use PDOException;
use SQLite3;

/**
 * "Обертка" интерфейса базы данных
 *
 * @property-read PDO $connection Указатель на соединение с базой данных.
 * @property-read string|null $user Логин пользователя
 * @property-read string|null $encoding Кодировка базы данных
 * @property-read int $insert_id Значение AUTO_INCREMENT-поля при очередной вставке.
 * @property-read bool $safeMode Индикатор безопасного режима
 * @property-read string|null $dbtype Тип базы данных
 * @property-write callback $error_handler <pre><code>[ОБРАБОТЧИК ОШИБОК]</code></pre>
 * @property-write callback $query_handler <pre><code>[ФИКСАТОР ЗАПРОСОВ]</code></pre>
 */
class DB
{
    /**
     * Выбирать данные в ассоциативный массив вида "название колонки" => "значение ячейки"
     */
    const FETCH_ASSOC = PDO::FETCH_ASSOC;

    /**
     * Выбирать данные в индексированный массив вида "номер колонки по порядку" => "значение ячейки"
     */
    const FETCH_NUM = PDO::FETCH_NUM;

    /**
     * Выбирать данные в смешанный массив из массивов вида "название колонки" => "значение ячейки"
     * и "номер колонки по порядку" => "значение ячейки"
     */
    const FETCH_BOTH = PDO::FETCH_BOTH;

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
     *
     * @var int
     */
    protected $insert_id;

    /**
     * Обработчик ошибок
     * @var callback <pre><code>[ОБРАБОТЧИК ОШИБОК]</code></pre>
     */
    protected $error_handler;

    /**
     * Фиксатор запросов
     * @var callback <pre><code>[ФИКСАТОР ЗАПРОСОВ]</code></pre>
     */
    protected $query_handler;

    /**
     * Индикатор безопасного режима
     *
     * В безопасном режиме выполняются только запросы на выборку данных.
     * Запросы на изменение реально не выполняются, при этом нормально функционируют обработчики запросов и ошибок.
     *
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
     * @param callback $errorHandler <pre><code>[ОБРАБОТЧИК ОШИБОК]</code></pre>
     * @param callback $queryHandler <pre><code>[ФИКСАТОР ЗАПРОСОВ]</code></pre>
     * @param bool $safeMode Индикатор безопасного режима
     */
    public function __construct(
        $DSN,
        $user = null,
        $password = null,
        $encoding = null,
        $errorHandler = null,
        $queryHandler = null,
        $safeMode = false
    ) {
        $this->dsn      = $DSN;
        $this->user     = $user;
        $this->password = $password;
        $this->encoding = $encoding;
        $this->insert_id = 0;
        $this->error_handler = $errorHandler;
        $this->query_handler = $queryHandler;
        $this->safeMode = $safeMode;

        try {
            $this->connection = new PDO($this->dsn, $this->user, $this->password);
            if ($this->encoding && !in_array($this->dbtype, ['sqlite', 'sqlite2'])) {
                $this->query("SET NAMES '" . $this->encoding . "'");
            }
        } catch (PDOException $e) {
            if ($this->error_handler) {
                call_user_func($this->error_handler, $e);
            }
        }
    }


    public function __get($var)
    {
        if (in_array($var, ['connection', 'user', 'encoding', 'insert_id', 'safeMode'])) {
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
        if (in_array($var, ['error_handler', 'query_handler']) && is_callable($val)) {
            $this->$var = $val;
        }
    }


    /**
     * Выполняет запрос к базе данных
     * @param string|array $sql <pre><code>[ЗАПРОС]</pre></code>
     * @return PDOStatement|false возвращает содержимое переменной $result при успешном выполнении запроса,
     *     либо false в случае ошибки. В последнем случае также добавляет ошибку в массив ошибок $error
     */
    public function query($sql)
    {
        $this->ping();
        $this->parseSQLBindings($sql, $sqlQuery, $sqlBind);
        // Выполняем запрос
        $time_start = microtime(true);
        try { // Пробуем выполнить запрос
            if ($this->safeMode) {
                if (strstr($sqlQuery, "INSERT ") ||
                    strstr($sqlQuery, "UPDATE ") ||
                    strstr($sqlQuery, "DELETE ") ||
                    strstr($sqlQuery, "FILE ") ||
                    strstr($sqlQuery, "CREATE ") ||
                    strstr($sqlQuery, "ALTER ") ||
                    strstr($sqlQuery, "INDEX ") ||
                    strstr($sqlQuery, "DROP ") ||
                    strstr($sqlQuery, "REPLACE ")
                ) {
                    return null;
                }
            }
            if ($sqlBind) {
                $result = $this->connection->prepare($sqlQuery);
                foreach ($sqlBind as $key => $val) {
                    if ((is_int($val) || is_float($val)) && ((float)$val - (float)(int)$val) == 0) {
                        $bindMode = PDO::PARAM_INT;
                    } elseif (is_bool($val)) {
                        $bindMode = PDO::PARAM_BOOL;
                    } elseif (is_null($val)) {
                        $bindMode = PDO::PARAM_NULL;
                    } else {
                        $bindMode = PDO::PARAM_STR;
                    }
                    $result->bindValue(is_numeric($key) ? $key + 1 : $key, $val, $bindMode);
                }
                $result->execute();
            } else {
                $result = $this->connection->query($sqlQuery);
            }
            $errorInfo = ($result ? $result->errorInfo() : $this->connection->errorInfo());
            if ($errorInfo[2]) {
                throw new Exception($errorInfo[2] . ' (SQLSTATE: ' . $errorInfo[0] . ')', $errorInfo[1]);
                $result = false;
            }
        } catch (Exception $e) { // Ошибка
            if ($this->error_handler) {
                call_user_func($this->error_handler, $e);
            } else {
                throw $e;
            }
        }
        $time_end = microtime(true);
        if ($this->query_handler) {
            call_user_func(
                $this->query_handler,
                $sqlQuery ?: false,
                (array)$sqlBind,
                $time_end - $time_start
            );
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
            $this->__construct(
                $this->dsn,
                $this->user,
                $this->password,
                $this->encoding,
                $this->error_handler,
                $this->query_handler,
                $this->safeMode
            );
        }
    }


    /**
     * Возвращает массив-таблицу согласно SQL-запросу
     * @param string|array $sql <pre><code>[ЗАПРОС]</pre></code>
     * @param int $resultType Тип возвращаемого массива:
     *     self::FETCH_ASSOC для ассоциативного, self::FETCH_NUM для индексированного и self::FETCH_BOTH для смешанного.
     *     По умолчанию возвращается ассоциативный массив (self::FETCH_ASSOC)
     * @param bool $multiple Если true, возвращает результат в виде массива таблиц для множественных результатов
     *     (для одиночного результата - массив из одного элемента)
     *     Если false, будет выведена одна таблица из строк разных таблиц множественного результата)
     * @return array|false <pre><code>[ТАБЛИЦА]|[МУЛЬТИТАБЛИЦА]</code></pre> Выборка данных из SQL-запроса;
     *     пустой массив в случае отсутствия выходных данных либо false в случае ошибки
     */
    public function get($sql, $resultType = self::FETCH_ASSOC, $multiple = false)
    {
        $result = $this->query($sql);
        if (!$result) {
            return false;
        }
        $temp = [];
        if (in_array($this->dbtype, ['sqlite', 'sqlite2'])) {
            $temp = [$result->fetchAll($resultType)];
        } else {
            do {
                $temp[] = $result->fetchAll($resultType);
            } while (@$result->nextRowset());
        }
        $result->closeCursor();
        return $multiple ? $temp : array_reduce($temp, 'array_merge', []);
    }


    /**
     * Возвращает массив-строку согласно SQL-запросу
     *
     * Результат формируется в виде ассоциативного (ключами являются названия полей), индексированного либо смешанного
     * (объединение ассоциативного и индексированного) массива данных из ячеек первой строки таблицы базы данных
     *
     * @param string|array $sql <pre><code>[ЗАПРОС]</pre></code>
     * @param int $resultType Тип возвращаемого массива:
     *     self::FETCH_ASSOC для ассоциативного, self::FETCH_NUM для индексированного и self::FETCH_BOTH для смешанного.
     *     По умолчанию возвращается ассоциативный массив (self::FETCH_ASSOC)
     * @return array|false <pre><code>[СТРОКА ТАБЛИЦЫ]</code></pre> Строка данных из SQL-запроса;
     *     пустой массив в случае отсутствия выходных данных либо false в случае ошибки
     */
    public function getline($sql, $resultType = self::FETCH_ASSOC)
    {
        if (!($result = $this->query($sql))) {
            return false;
        }
        $temp = $result->fetch($resultType);
        $result->closeCursor();
        return $temp;
    }


    /**
     * Возвращает массив-столбец согласно SQL-запросу
     *
     * Результат формируется в виде индексированного массива, каждый элемент которого представляет собой значение
     * первого столбца таблицы-выборки в соответствующей строке
     *
     * @param string|array $sql <pre><code>[ЗАПРОС]</pre></code>
     * @param bool $multiple Если true, возвращает результат в виде массива столбцов для множественных результатов
     *     (для одиночного результата - массив из одного элемента)
     *     Если false, будет выведена одна таблица из значений столбца разных таблиц множественного результата)
     * @return array|false <pre><code>[КОЛОНКА]|[МУЛЬТИКОЛОНКА]</code></pre> Выборка данных из SQL-запроса;
     *     пустой массив в случае отсутствия выходных данных либо false в случае ошибки
     */
    public function getcol($sql, $multiple = false)
    {
        if (!($result = $this->query($sql))) {
            return false;
        }
        $temp = [];
        do {
            $temp[] = $result->fetchAll(PDO::FETCH_COLUMN);
        } while (@$result->nextRowset());
        $result->closeCursor();
        return $multiple ? $temp : array_reduce($temp, 'array_merge', []);
    }


    /**
     * Возвращает скалярное значение согласно SQL-запросу
     *
     * Результат представляет собой значение ячейки в первом столбце, первой строке таблицы-выборки
     *
     * @param string|array $sql <pre><code>[ЗАПРОС]</pre></code>
     * @return mixed Значение из SQL-запроса либо false в случае ошибки
     */
    public function getvalue($sql)
    {
        if (!($result = $this->query($sql))) {
            return false;
        }
        $cells = $result->fetch(self::FETCH_NUM);
        $result->closeCursor();
        if (isset($cells) && isset($cells[0])) {
            return $cells[0];
        }
        return false;
    }


    /**
     * Возвращает данные таблицы-выборки согласно SQL-запросу
     *
     * Результат формируется:
     * - для многострочной многостолбцовой (невырожденной) таблицы: в виде индексированного массива,
     *   каждый элемент которого представляет собой ассоциативный (ключами являются названия полей),
     *   индексированный либо смешанный (объединение ассоциативного и индексированного) массив данных из ячеек
     *   таблицы базы данных
     * - для однострочной многостолбцовой таблицы: в виде ассоциативного (ключами являются названия полей),
     *   индексированного либо смешанного (объединение ассоциативного и индексированного) массива данных из ячеек строки
     * - для многострочной одностолбцовой таблицы: в виде индексированного массива, каждый элемент которого
     *   представляет собой значение колонки в соответствующей строке
     * - для однострочной одностолбцовой таблицы: в виде значения единственной ячейки таблицы
     *
     * @param string|array $sql <pre><code>[ЗАПРОС]</pre></code>
     * @param int $resultType Тип возвращаемого массива:
     *     self::FETCH_ASSOC для ассоциативного, self::FETCH_NUM для индексированного и self::FETCH_BOTH для смешанного.
     *     По умолчанию возвращается ассоциативный массив (self::FETCH_ASSOC)
     * @return mixed Выборка данных из SQL-запроса либо false в случае ошибки или пустого запроса
     */
    public function uget($sql, $resultType = self::FETCH_ASSOC)
    {
        if (!($result = $this->query($sql))) {
            return false;
        }
        // Собираем данные
        $temp = [];
        do {
            $temp2 = $result->fetchAll(($result->columnCount() > 1) ? $resultType : PDO::FETCH_COLUMN);
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
     * Добавляет одну или несколько строк в таблицу базы данных,
     * объединяя добавление строк с одинаковыми наборами имен столбцов, в расширенные запросы
     *
     * @param string $table Имя таблицы базы данных для добавления данных
     * @param array|string $lines <pre><code>[СТРОКА ТАБЛИЦЫ]|[ТАБЛИЦА]</code></pre>
     * @param bool|array $replace Если установлен в true, используется конструкция REPLACE.
     *     Если установлен в false - то конструкция INSERT.
     *     Если является массивом, используется конструкция INSERT, а при вставке строк с уже имеющимися ключами,
     *     строка обновляется в соответствии с заданным массивом. Массив должен быть ассоциативным, где ключами полей
     *     являются имена столбцов базы данных, значениями - данные ячеек. При этом значения, представленные как тип
     *     object воспринимаются как непосредственные SQL-инструкции и не обрамляются кавычками
     * @return bool Возвращает true в случае успешного добавления всех(!) строк,
     *     либо false в случае возникновения ошибок
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
     *
     * @param string $table Имя таблицы базы данных для изменения данных
     * @param string $condition Условие для использования в WHERE-конструкции языка SQL
     * @param array $line <pre><code>[СТРОКА ТАБЛИЦЫ]</code></pre>
     * @return bool Возвращает true в случае успешного обновления данных, либо false в случае возникновения ошибок
     */
    public function update($table, $condition, array $line = [])
    {
        $sqlQuery = "UPDATE " . $table . " SET ";
        $sqlArray = [];
        $sqlBind = [];

        $this->parseSQLBindings($condition, $conditionSQL, $conditionBind, $bindAssoc);

        foreach ($line as $key => $value) {
            $row = $this->real_escape_string($key) . " = ";
            if (is_object($value)) {
                $row .= $value->scalar;
            } elseif ($bindAssoc) {
                $row .= ":SOMEBind_" . $this->real_escape_string($key);
                $sqlBind[":SOMEBind_" . $key] = $value;
            } else {
                $row .= "?";
                $sqlBind[] = $value;
            }
            $sqlArray[] = $row;
        }

        if ($conditionBind) {
            $sqlBind = array_merge($sqlBind, $conditionBind);
        }

        $sqlQuery .= implode(", ", $sqlArray) . " WHERE " . $conditionSQL;
        if ($result = $this->query([$sqlQuery, $sqlBind])) {
            return $result;
        }
        return false;
    }


    /**
     * Защищает строку для безопасного использования в SQL-запросе
     * @param string $string строка для преобразования
     * @return string экранированная строка
     */
    public function real_escape_string($string)
    {
        if (in_array($this->dbtype, ['sqlite', 'sqlite2'])) {
            return SQLite3::escapeString($string);
        } else {
            return addslashes($string);
        }
    }


    /**
     * Синоним для real_escape_string()
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
     *
     * @param string $string строка для преобразования
     * @return string строка, готовая к использованию с оператором LIKE
     */
    public function escape_like($string)
    {
        return strtr(addslashes($string), ['_' => '\_', '%' => '\%']);
    }


    /**
     * Защищает строку для безопасного использования в SQL-запросе с последующим помещением в кавычки, если необходимо
     *
     * Экранирует кавычки и прочие небезопасные символы для предотвращения ошибок и SQL-инъекций.
     * Затем строковые данные помещает в одинарные кавычки, а числовые типы оставляет без изменений.
     *
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
     * Создает корректный SQL-запрос на добавление одной или нескольких строк в таблицу базы данных,
     * объединяя добавление строк с одинаковыми наборами имен столбцов, в расширенные запросы
     *
     * @param string $table Имя таблицы базы данных для добавления данных
     * @param array $lines <pre><code>[СТРОКА ТАБЛИЦЫ]|[ТАБЛИЦА]</code></pre>
     * @param bool|array $replace Если установлен в true, используется конструкция REPLACE.
     *     Если установлен в false - то конструкция INSERT.
     *     Если является массивом, используется конструкция INSERT, а при вставке строк с уже имеющимися ключами,
     *     строка обновляется в соответствии с заданным массивом. Массив должен быть ассоциативным, где ключами полей
     *     являются имена столбцов базы данных, значениями - данные ячеек. При этом значения, представленные как тип
     *     object воспринимаются как непосредственные SQL-инструкции и не обрамляются кавычками
     * @return string Возвращает SQL-запрос на добавление данных. Если инструкций несколько, они разделяются точками с запятыми.
     */
    public function export($table, $lines, $replace = true)
    {
        $sql = [];

        if (!is_array($lines) || !$lines) {
            return false;
        } elseif (!isset($lines[0]) || !is_array($lines[0])) {
            $lines = [$lines];
        }
        $queries = [];
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
                $queries[] = [$line];
            }
        }

        if (in_array($this->dbtype, ['sqlite', 'sqlite2'])) {
            $replace = (bool)$replace;
        }
        foreach ($queries as $query) {
            $fields = array_map(function ($x) {
                return $this->real_escape_string($x);
            }, array_keys($query[0]));
            $values = [];
            for ($i = 0; $i < count($query); $i++) {
                $cells = [];
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

            if (is_array($replace) && $replace) {
                $temp = [];
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
            $sqlQuery = ($replace && !is_array($replace) ? "REPLACE" : "INSERT") . " INTO `" . $table . "` (";
            $sqlQuery .= implode(", ", array_map(function ($x) {
                return "`" . $x . "`";
            }, $fields));
            $sqlQuery .= ") VALUES \n" . implode(",\n", $values);
            if (isset($temp) && $temp) {
                $sqlQuery .= " ON DUPLICATE KEY UPDATE " . implode(", ", $temp);
            }

            $sql[] = $sqlQuery;
        }
        return implode(";\n", $sql);
    }


    /**
     * Распознает различные формы SQL-запроса в собственно запрос и подстановки, для использования в методе query()
     * @param string|array $sql <pre><code>[ЗАПРОС]</pre></code>
     * @param string $sqlQuery Текст запроса с шаблонами подстановок
     * @param array $sqlBind Массив подстановок (ассоциативный или индексированный)
     * @param bool|null $bindAssoc TRUE, если массив подстановок ассоциативный и FALSE, если индексированный
     */
    public function parseSQLBindings($sql, &$sqlQuery, &$sqlBind, &$bindAssoc = false)
    {
        $sqlBind = [];
        if (is_array($sql)) {
            $sqlQuery = $sql[0];
            if (isset($sql[1]) && is_array($sql[1])) {
                $sqlBind = $sql[1];
            } else {
                $sqlBind = array_slice($sql, 1);
            }
        } else {
            $sqlQuery = $sql;
        }
        if (array_values($sqlBind) !== $sqlBind) {
            $bindAssoc = true;
        }
    }
}
