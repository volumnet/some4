<?php
/**
 * Файл работы с постраничной разбивкой списка
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал работы
 * с постраничной разбивкой списка, входящей в комплект SOME Framework
 *
 * @package SOME
 * @subpackage Pages
 */
namespace SOME;

/**
 * Класс работы с постраничной разбивкой списков
 *
 * Данный класс предоставляет функционал для работы со страницами списка
 * @package SOME
 * @subpackage Pages
 * @property-read int $page Текущая страница
 * @property-read int $rows_per_page Количество элементов списка,
 *                                   отображаемых на одной странице
 * @property-read int $pages Общее количество страниц
 * @property-read int $from Порядковый номер первого элемента
 * @property-read int $to Порядковый номер последнего элемента
 * @property-read int $count Общее количество элементов
 */
final class Pages
{
    /**
     * Текущая страница.
     * @var int число от 1
     */
    private $_page;

    /**
     * Количество элементов списка, отображаемых на одной странице.
     * @var int число от 1
     */
    private $_rows_per_page;

    /**
     * Общее количество элементов (во всех страницах).
     * @var int
     */
    private $_count;

    /**
     * Количество элементов, полученных с текущей страницы.
     * @var int
     */
    private $_set_count;

    /**
     * Конструктор класса
     *
     * Создает класс обработчика страниц, создавая безопасные значения
     * внутренних переменных
     * @param int $page Текущая страница (начиная с 1)
     * @param int $rows_per_page Количество элементов списка,
     *                           отображаемых на одной странице
     */
    public function __construct($page = 1, $rows_per_page = 20)
    {
        $this->_page = max(1, (int)$page);
        $this->_rows_per_page = ((int)$rows_per_page > 0)
                              ? (int)$rows_per_page
                              : 20;
    }


    public function __get($var)
    {
        switch ($var) {
            case 'page':
            case 'rows_per_page':
            case 'count':
                return $this->{'_' . $var};
                break;
            case 'pages':
                return ceil($this->_count / $this->_rows_per_page);
                break;
            case 'from':
                if ($this->_count || $this->_count === null) {
                    return (
                        ($this->_page - 1) * $this->_rows_per_page +
                        (int)($this->_count && $this->_set_count)
                    );
                }
                return 0;
                break;
            case 'to':
                if ($this->_count && $this->_set_count) {
                    return (
                        $this->from +
                        min($this->_set_count, $this->_rows_per_page) -
                        1
                    );
                }
                return 0;
                break;
        }
    }

    /**
     * Проверка страницы
     *
     * Метод проверяет, действительно ли в списке можно выделить
     * текущую страницу, и сколько и каких элементов на ней будет располагаться.
     * При проверке корректирует внутренние переменные. Может сообщить об
     * успешном завершении проверки либо о необходимости дополнительной проверки
     * с уточненными данными.
     * По идее, для формирования постраничной разбивки используется циклическое
     * применение метода до достижения полной проверки. После достижения
     * полной проверки значения $this->from и $this->to корректируются,
     * чтобы считаться с 1, а не с 0 - для облегчения человеко-ориентированного
     * вывода сообщений о страницах
     * @param int $set_count количество элементов на данной странице.
     *                       Чаще всего является подсчетом количества
     *                       возвращенных элементов из SQL-запроса
     * @param int $count количество элементов в списке.
     *                   Чаще всего считается SQL-функцией FOUND_ROWS()
     *                   из запроса с директивой SQL_CALC_FOUND_ROWS
     * @return bool true, если проверка успешно завершена
     *              (и свойства $this->from и $this->to скорректированы),
     *              либо false, если требуется дополнительная проверка
     *              из запроса с поправленными значениями.
     */
    public function check($set_count, $count)
    {
        $this->_count = max((int)$count, 0);
        $this->_set_count = max((int)$set_count, 0);

        if (!$this->_count) {
            $this->_page = 0;
        } elseif (!$this->_set_count) {
            $this->_page = max(1, min($this->_page - 1, $this->pages));
        }
        return (!$this->_count || $this->_set_count);
    }
}
