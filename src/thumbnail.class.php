<?php
/**
 * Файл работы с эскизами изображений
 *
 * Этот файл - часть библиотеки, предоставляющий основной функционал работы с графикой, входящей в комплект SOME Framework
 * @package SOME
 * @subpackage Graphics
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2011, ООО «Объемные Сети»
 * @version 4.0
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

/**
 * Подключим необходимую библиотеку \SOME\Graphics
 */
require_once (__DIR__ . '/graphics.class.php');

/**
 * Класс работы с эскизами
 *
 * Данный класс предоставляет обработчик уменьшенных копий изображений (эскизов, thumbnails)
 * @package SOME
 * @subpackage Graphics
 * @property-read string $src путь к исходному файлу
 * @property int $wFrame ширина ограничивающей рамки для создания эскиза.
 *               Должно быть положительным значением, либо INF для отсутствия ограничения.
 * @property int $hFrame высота ограничивающей рамки для создания эскиза.
 *               Должно быть положительным значением, либо INF для отсутствия ограничения.
 * @property int $mode режим создания эскиза - берется из собственных констант вида THUMBNAIL_... (см. описание там)
 * @property bool $allowEnlarge если установлен в true, изображения меньшие рамки будут растягиваться до рамки,
 *                если false - останутся как есть
 * @property bool $createFile если установлен в true, в $src будет создан файл эскиза,
 *                в противном случае эскиз будет выведен в stdout
 * @property int $quality качество изображения / параметр сжатия - число от 0 до 100.
 *               Чем выше число, тем изображение качественней, но выходной файл больше
 * @property array $background Фон для прозрачных изображений.
 *                 Задается четырьмя (красный, зеленый, иний, прозрачность) каналами.
 * @param int $transparencyThreshold Порог прозрачности. Цвета в GIF-картинке, с прозрачностью большей или равной
 *            данному порогу, считаются прозрачным цветом. Число от 0 до 127
 */
class Thumbnail
{
    /**
     * Создание эскиза, вписанного в рамку, с удаленными полями
     */
    const THUMBNAIL_INLINE = 1;

    /**
     * Создание эскиза, вписанного в рамку, с оставленными полями
     */
    const THUMBNAIL_FRAME = 2;

    /**
     * Создание эскиза, описанного около рамки, с удаленными выступающими частями
     */
    const THUMBNAIL_CROP = 3;

    /**
     * Размер эскиза по умолчанию.
     */
    const tn_size = 128;

    /**
     * Путь к исходному файлу.
     * @var string
     */
    private $_src;

    /**
     * Путь к будущему файлу эскиза
     *
     * Класс сам определяет расширение файла и применяет соответствующую функцию.
     * Если не указано расширение, используется JPEG
     * @var string
     */
    private $_dest;

    /**
     * Ширина ограничивающей рамки для создания эскиза.
     * @var int Положительное значение, либо INF для отсутствия ограничения.
     */
    private $_wFrame = self::tn_size;

    /**
     * Высота ограничивающей рамки для создания эскиза.
     * @var int Положительное значение, либо INF для отсутствия ограничения.
     */
    private $_hFrame = INF;

    /**
     * Режим создания эскиза.
     * @var int берется из собственных констант вида THUMBNAIL_... (см. описание там)
     */
    private $_mode = self::THUMBNAIL_INLINE;

    /**
     * Если установлен в true, изображения меньшие рамки будут растягиваться до рамки, если false - останутся как есть.
     * @var bool
     */
    private $_allowEnlarge = false;

    /**
     * Если установлен в true, в $src будет создан файл эскиза, в противном случае эскиз будет выведен в stdout.
     * @var bool
     */
    private $_createFile = true;

    /**
     * Качество изображения / параметр сжатия.
     *
     * Чем выше число, тем изображение качественней, но выходной файл больше
     * @var int число от 0 до 100
     */
    private $_quality = 75;

    /**
     * Фон для прозрачных изображений.
     * @var array Массив вида array(красный, зеленый, синий, прозрачность),
     *            где каждый цветовой канал - число от 0 до 255, прозрачность - от 0 до 127
     */
    private $_background = array(255, 255, 255, 127);

    /**
     * Порог прозрачности.
     *
     * Цвета в GIF-картинке, с прозрачностью большей или равной данному порогу, считаются прозрачным цветом.
     * @var int число от 0 до 127
     */
    private $_transparencyThreshold = 100;

    /**
     * Ширина исходного изображения.
     * @var int
     */
    private $wSrc;

    /**
     * Высота исходного изображения.
     * @var int
     */
    private $hSrc;

    /**
     * Тип исходного изображения.
     * @var int Константы вида \IMAGETYPE_XXX
     */
    private $typeSrc;

    /**
     * Ресурс открытого изображения.
     * @var resource
     */
    private $imgSrc;

    /**
     * Сторона исходного изображения, подгоняемая под размер рамки.
     * @var int
     */
    private $lSrc;

    /**
     * Сторона исходного изображения, не подгоняемая под размер рамки и рассчитываемая пропорционально второй стороне.
     * @var int
     */
    private $dSrc;

    /**
     * Сторона рамки, по которой подгоняется изображение.
     * @var int
     */
    private $lFrame;

    /**
     * Сторона рамки, по которой изображение не подгоняется.
     * @var int
     */
    private $dFrame;

    /**
     * Точка по подгоняемой стороне изображения, начиная с которой
     * будет браться кусок для уменьшения и формирования эскиза.
     * @var int
     */
    private $uIn;

    /**
     * Точка по не подгоняемой исходного изображения, начиная с которой
     * будет браться кусок для уменьшения и формирования эскиза.
     * @var int
     */
    private $vIn;

    /**
     * Длина по подгоняемой стороне куска исходного изображения, который
     * будет браться для уменьшения и формирования эскиза.
     * @var int
     */
    private $lIn;

    /**
     * Длина по не подгоняемой стороне куска исходного изображения, который
     * будет браться для уменьшения и формирования эскиза.
     * @var int
     */
    private $dIn;

    /**
     * Точка по подгоняемой стороне, в которую будет помещен взятый кусок исходного изображения.
     * @var int
     */
    private $uOut;

    /**
     * Точка по не подгоняемой стороне, в которую будет помещен взятый кусок исходного изображения.
     * @var int
     */
    private $vOut;

    /**
     * Измененная длина по подгоняемой стороне, вставляемого в результирующее изображение.
     * @var int
     */
    private $lOut;

    /**
     * Измененная длина по не подгоняемой стороне, вставляемого в результирующее изображение.
     * @var int
     */
    private $dOut;

    /**
     * Ширина куска исходного изображения, который будет браться для уменьшения и формирования эскиза.
     * @var int
     */
    private $wOut;

    /**
     * Высота куска исходного изображения, который будет браться для уменьшения и формирования эскиза.
     * @var int
     */
    private $hOut;

    /**
     * Имя файла (без пути и расширения) результирующего файла.
     * @var string
     */
    private $filenameDest;

    /**
     * Расширение результирующего файла.
     * @var string
     */
    private $extDest;

    /**
     * MIME-тип результирующего файла.
     * @var string
     */
    private $mimeDest;

    /**
     * Наименование функции для создания результируюшего файла.
     * @var string Строка вида image...
     */
    private $functionDest;

    /**
     * Тип результирующего файла.
     * @var int Константы вида \IMAGETYPE_XXX
     */
    private $typeDest;

    /**
     * Ресурс результирующего изображения.
     * @var resource
     */
    private $imgDest;

    /**
     * Идентификатор прозрачного цвета в PNG и GIF-изображениях.
     * @var int
     */
    private $transindex;

    /**
     * Конструктор класса
     *
     * @param string $src путь к исходному файлу
     * return bool false в случае ошибки
     */
    public function __construct($src)
    {
        $this->_src = $src;
        if (!is_file($this->_src) || !($size = \getimagesize($this->_src))) {
            // Если файл не определен или не является графическим, вернем false
            return;
        }
        // Определим функцию для загрузки изображения
        list($this->wSrc, $this->hSrc, $this->typeSrc) = $size;
        !($functionSrc = \SOME\Graphics::image_type_to_input_function($this->typeSrc)) ? ($functionSrc = 'imagecreatefromjpeg') : null;
        $this->imgSrc = $functionSrc($this->_src);
    }


    /**
     * Возвращает изображение в файл или в поток.
     * @param string $dest путь к будущему файлу эскиза. Метод сам определяет расширение файла и применяет соответствующую функцию.
     *                     Если параметр не указан или не указано расширение, используется JPEG.
     */
    public function output($dest = '')
    {
        if ($this->imgSrc) {
            $this->_dest = $dest;
            $this->calculateRelativeParams();
            $this->calculateGeometry();
            $this->checkOutputFormat();
            $this->createResultImage();
            $this->setBackground();
            $this->copyImage();
            $this->restoreTransparency();
            if (!$this->_createFile) {
                header('Content-Type: ' . $this->mimeDest . '; name="' . $this->filenameDest . '.' . $this->extDest . '"');
                header('Content-Disposition: inline; filename="' . $this->filenameDest . '.' . $this->extDest . '"');
            }
            $this->outputImage();
        }
        return false;
    }


    public function __get($var)
    {
        switch ($var) {
            case 'src': case 'wFrame': case 'hFrame': case 'mode': case 'allowEnlarge':
            case 'createFile': case 'quality': case 'background': case 'transparencyThreshold':
                return $this->{'_' . $var};
                break;
        }
    }


    public function __set($var, $val)
    {
        switch ($var) {
            case 'wFrame':  case 'hFrame':
                $this->__set_frame($var, $val);
                break;
            case 'mode': case 'quality': case 'transparencyThreshold': case 'allowEnlarge': case 'background':
                $f = '__set_' . $var;
                $this->$f($val);
                break;
            case 'createFile':
                $this->{'_' . $var} = (bool)$val;
                break;
        }
    }


    /**
     * Создание эскиза
     *
     * Метод создает эскиз и выводит его в stdout, либо в файл
     * @param string $src путь к исходному файлу
     * @param string $dest путь к будущему файлу эскиза. Метод сам определяет расширение файла и применяет соответствующую функцию.
     *                     Если не указано расширение, используется JPEG
     * @param int $wFrame ширина ограничивающей рамки для создания эскиза.
     *                    Должно быть положительным значением, либо 0 или INF для отсутствия ограничения.
     * @param int $hFrame высота ограничивающей рамки для создания эскиза.
     *                    При значении -1 используется то же значение, что и $wFrame (рамка квадратная).
     *                    INF или 0 обозначает отстутствие ограничения.
     * @param int $mode режим создания эскиза - берется из собственных констант вида THUMBNAIL_... (см. описание там)
     * @param bool $allow_enlarge если установлен в true, изображения меньшие рамки будут растягиваться до рамки, если false - останутся как есть
     * @param bool $create_file если установлен в true, в $src будет создан файл эскиза, в противном случае эскиз будет выведен в stdout
     * @param int $quality качество изображения / параметр сжатия. Чем выше число, тем изображение качественней, но выходной файл больше
     * @param array|int|string $background задает фон для прозрачных изображений. Может задаваться тремя (красный, зеленый, синий), либо четырьмя
     *                                     (красный, зеленый, синий, прозрачность) каналами. Может быть представлен в следующих видах:
     *                                     array([красный(0-255)], [зеленый(0-255)], [синий(0-255)]);
     *                                     array([красный(0-255)], [зеленый(0-255)], [синий(0-255)], [прозрачность(0-127)]);
     *                                     int 0x[красный(00-FF)][зеленый(00-FF)][синий(00-FF)]
     *                                     int 0x[красный(00-FF)][зеленый(00-FF)][синий(00-FF)][прозрачность(00-7F)]
     *                                     string #[красный(0-F)][зеленый(0-F)][синий(0-F)]
     *                                     string #[красный(0-F)][зеленый(0-F)][синий(0-F)][прозрачность(0-7)]
     *                                     string #[красный(00-FF)][зеленый(00-FF)][синий(00-FF)]
     *                                     string #[красный(00-FF)][зеленый(00-FF)][синий(00-FF)][прозрачность(00-7F)]
     *                                     При указании в прозрачности значения 127 (7F) в результирующих форматах PNG и GIF фон
     *                                     будет объявлен прозрачным цветом.
     *                                     При наличии в исходном изображении прозрачного цвета, если результирующий формат GIF,
     *                                     прозрачный цвет сохранится
     * @param int $transparency_threshold Порог прозрачности. Цвета в GIF-картинке, с прозрачностью большей или равной данному порогу,
     *                                    считаются прозрачным цветом.
     * return bool false в случае ошибки
     */
    public static function make(
        $src, $dest, $wFrame, $hFrame = -1, $mode = \SOME\Thumbnail::THUMBNAIL_INLINE, $allow_enlarge = false, $create_file = true,
        $quality = 75, $background = array(255, 255, 255, 127), $transparency_threshold = 100
    ) {
        $tn = new static($src);
        $tn->wFrame = $wFrame;
        $tn->hFrame = ($hFrame != -1 ? $hFrame : $wFrame);
        $tn->mode = $mode;
        $tn->allowEnlarge = $allow_enlarge;
        $tn->createFile = $create_file;
        $tn->quality = $quality;
        $tn->background = $background;
        $tn->transparencyThreshold = $transparency_threshold;
        $tn->output($dest);
    }


    /**
     * Устанавливает ширину или высоту рамки для использования в методе $this->__set().
     *
     * @param string $var Наименование параметра (wFrame или hFrame)
     * @param int $val Должно быть положительным значением, либо INF для отсутствия ограничения.
     */
    private function __set_frame($var, $val)
    {
        if (is_numeric($val) && ($val > 0)) {
            if (is_infinite($val)) {
                $this->{'_' . $var} = $val;
            } else {
                $this->{'_' . $var} = (int)$val;
            }
        }
        if ($this->_wFrame == INF || $this->_hFrame == INF) {
            // Если нет ограничивающей рамки, запрещаем растягивание изображения
            $this->_allowEnlarge = false;
        }
    }


    /**
     * Устанавливает параметры создания эскиза для использования в методе $this->__set().
     * @param int $val Значение берется из собственных констант вида THUMBNAIL_... (см. описание там)
     */
    private function __set_mode($val)
    {
        if (is_numeric($val)) {
            $this->_mode = (int)$val;
        }
    }


    /**
     * Устанавливает качество результирующего изображения для использования в методе $this->__set().
     * @param int $val Число от 0 до 100
     */
    private function __set_quality($val)
    {
        if (is_numeric($val)) {
            if ($val < 0) {
                $this->_quality = 0;
            } elseif ($val > 100) {
                $this->_quality = 100;
            } else {
                $this->_quality = (int)$val;
            }
        }
    }


    /**
     * Устанавливает порог прозрачности для использования в методе $this->__set().
     * @param int $val Число от 0 до 127
     */
    private function __set_transparencyThreshold($val)
    {
        if (is_numeric($val)) {
            if ($val < 0) {
                $this->_transparencyThreshold = 0;
            } elseif ($val > 127) {
                $this->_transparencyThreshold = 127;
            } else {
                $this->_transparencyThreshold = (int)$val;
            }
        }
    }


    /**
     * Устанавливает возможность растягивать изображение до рамки, для использования в методе $this->__set()
     *
     * Растягивание возможно только тогда, когда ширина и высота рамки конечны
     * @param bool $val Если установлен в true, разрешается увеличивать маленькие изображения до вписания в рамку
     */
    private function __set_allowEnlarge($val)
    {
        if (!($this->_wFrame == INF || $this->_hFrame == INF)) {
            $this->_allowEnlarge = (bool)$val;
        }
    }


    /**
     * Устанавливает фон для прозрачных изображений.
     * @param array|int|string $background задает фон для прозрачных изображений. Может задаваться тремя (красный, зеленый, синий), либо четырьмя
     *                         (красный, зеленый, синий, прозрачность) каналами. Может быть представлен в следующих видах:
     *                         array([красный(0-255)], [зеленый(0-255)], [синий(0-255)]);
     *                         array([красный(0-255)], [зеленый(0-255)], [синий(0-255)], [прозрачность(0-127)]);
     *                         int 0x[красный(00-FF)][зеленый(00-FF)][синий(00-FF)]
     *                         int 0x[красный(00-FF)][зеленый(00-FF)][синий(00-FF)][прозрачность(00-7F)]
     *                         string #[красный(0-F)][зеленый(0-F)][синий(0-F)]
     *                         string #[красный(0-F)][зеленый(0-F)][синий(0-F)][прозрачность(0-7)]
     *                         string #[красный(00-FF)][зеленый(00-FF)][синий(00-FF)]
     *                         string #[красный(00-FF)][зеленый(00-FF)][синий(00-FF)][прозрачность(00-7F)]
     *                         При указании в прозрачности значения 127 (7F) в результирующих форматах PNG и GIF фон
     *                         будет объявлен прозрачным цветом.
     *                         При наличии в исходном изображении прозрачного цвета, если результирующий формат GIF,
     *                         прозрачный цвет сохранится
     */
    private function __set_background($val)
    {
        $temp = \SOME\Graphics::getRGBAFromColor($val);
        for ($i = 0; $i < count($temp); $i++) {
            if ($temp[$i] < 0) {
                $temp[$i] = 0;
            } elseif ($temp[$i] > ($i == 3 ? 127 : 255)) {
                $temp[$i] = ($i == 3 ? 127 : 255);
            }
        }
        $this->_background = array((int)$temp[0], (int)$temp[1], (int)$temp[2], (int)$temp[3]);
    }


    /**
     * Вычисляет относительные параметры исходного изображения и рамки
     */
    private function calculateRelativeParams()
    {
        if (($this->wSrc * $this->_hFrame) >= ($this->hSrc * $this->_wFrame)) {
            // В случае если изображение более вытянуто в ширину чем рамка
            $this->lSrc = $this->wSrc;
            $this->dSrc = $this->hSrc;
            $this->lFrame = $this->_wFrame;
            $this->dFrame = $this->_hFrame;
        } else {
            // В случае, если изображение более вытянуто в высоту, чем рамка
            $this->lSrc = $this->hSrc;
            $this->dSrc = $this->wSrc;
            $this->lFrame = $this->_hFrame;
            $this->dFrame = $this->_wFrame;
        }
    }


    /**
     * Вычисляет геометрические параметры будущего эскиза
     *
     * Расчет начальных и конечных точек изображения, взятых из исходного изображения и помещаемых в результирующее
     * используемых для преобразования координат ((u|v)In, (v|u)In, (l|d)In, (d|l)In) -> ((u|v)Out, (v|u)Out, (l|d)Out, (d|l)Out)
     * (см. описание соответствующих свойств)
     */
    private function calculateGeometry()
    {
        switch ($this->_mode) {
            case self::THUMBNAIL_INLINE:
                $this->calculateGeometry_inline();
                break;
            case self::THUMBNAIL_FRAME:
                $this->calculateGeometry_frame();
                break;
            case self::THUMBNAIL_CROP:
                $this->calculateGeometry_crop();
                break;
        }
        foreach (array('uIn', 'vIn', 'lIn', 'dIn', 'uOut', 'vOut', 'lOut', 'dOut') as $var) {
            $this->$var = (int)$this->$var;
        }
    }


    /**
     * Расчет геометрических параметров для режима self::THUMBNAIL_INLINE
     *
     * Расчет начальных и конечных точек изображения, взятых из исходного изображения и помещаемых в результирующее
     * используемых для преобразования координат ((u|v)In, (v|u)In, (l|d)In, (d|l)In) -> ((u|v)Out, (v|u)Out, (l|d)Out, (d|l)Out)
     * (см. описание соответствующих свойств) для использования в методе $this->calculateGeometry
     */
    private function calculateGeometry_inline()
    {
        $this->lIn = $this->lSrc;
        $this->dIn = $this->dSrc;
        $this->uIn = ($this->lSrc - $this->lIn) / 2;
        $this->vIn = ($this->dSrc - $this->dIn) / 2;

        $this->uOut = 0;
        $this->vOut = 0;
        if ($this->_allowEnlarge) {
            $this->lOut =  $this->lFrame;
        } else {
            $this->lOut = min($this->lFrame, $this->lSrc);
        }
        $this->dOut = $this->lOut * $this->dSrc / $this->lSrc;
    }


    /**
     * Расчет геометрических параметров для режима self::THUMBNAIL_FRAME
     *
     * Расчет начальных и конечных точек изображения, взятых из исходного изображения и помещаемых в результирующее
     * используемых для преобразования координат ((u|v)In, (v|u)In, (l|d)In, (d|l)In) -> ((u|v)Out, (v|u)Out, (l|d)Out, (d|l)Out)
     * (см. описание соответствующих свойств) для использования в методе $this->calculateGeometry
     */
    private function calculateGeometry_frame()
    {
        $this->lIn = $this->lSrc;
        $this->dIn = $this->dSrc;
        $this->uIn = ($this->lSrc - $this->lIn) / 2;
        $this->vIn = ($this->dSrc - $this->dIn) / 2;

        if ($this->_allowEnlarge) {
            $this->lOut =  $this->lFrame;
        } else {
            $this->lOut = min($this->lFrame, $this->lSrc);
        }
        $this->dOut = $this->lOut * $this->dSrc / $this->lSrc;
        $this->uOut = ($this->lFrame - $this->lOut) / 2;
        $this->vOut = ($this->dFrame - $this->dOut) / 2;
    }


    /**
     * Расчет геометрических параметров для режима self::THUMBNAIL_CROP
     *
     * Расчет начальных и конечных точек изображения, взятых из исходного изображения и помещаемых в результирующее
     * используемых для преобразования координат ((u|v)In, (v|u)In, (l|d)In, (d|l)In) -> ((u|v)Out, (v|u)Out, (l|d)Out, (d|l)Out)
     * (см. описание соответствующих свойств) для использования в методе $this->calculateGeometry
     */
    private function calculateGeometry_crop()
    {
        if ($this->_allowEnlarge) {
            $this->lOut = $this->lFrame;
            $this->dOut = $this->dFrame;
        } else {
            $this->lOut = min($this->lFrame, $this->lSrc);
            $this->dOut = min($this->dFrame, $this->dSrc);
        }
        $this->uOut = 0;
        $this->vOut = 0;

        $this->lIn = $this->dSrc * $this->lOut / $this->dOut;
        $this->dIn = $this->dSrc;
        $this->uIn = ($this->lSrc - $this->lIn) / 2;
        $this->vIn = ($this->dSrc - $this->dIn) / 2;
    }


    /**
     * Вычисление формата и корректирование имени файла результирующего изображения
     *
     * Тип результирующего файла вычисляется по расширению. Если не получается, пробуем по вхождению расширения
     * в стандартный список расширений. Если и так не получится, берем исходный тип.
     */
    private function checkOutputFormat()
    {
        $pathinfoDest = pathinfo($this->_dest ? $this->_dest : $this->_src);
        $this->extDest = $pathinfoDest['extension'];
        $this->filenameDest = $pathinfoDest['filename'];
        $this->mimeDest = \SOME\Graphics::extension_to_mime_type($this->extDest);
        $this->functionDest = \SOME\Graphics::extension_to_output_function($this->extDest);
        $this->typeDest = \SOME\Graphics::extension_to_image_type($this->extDest);
        if (!$this->mimeDest || !$this->functionDest) {
            $this->_dest = $pathinfoDest['dirname'] . ($pathinfoDest['dirname'] && $this->filenameDest ? '/' : '') . $this->filenameDest;
            foreach (\SOME\Graphics::gettypes() as $key => $val) {
                if (strpos($this->extDest, $key) !== false) {
                    $this->typeDest = $val;
                    $this->extDest = $key;
                    break;
                }
            }
            if (!$this->typeDest) {
                $this->typeDest = $this->typeSrc;
                $this->extDest = image_type_to_extension($this->typeSrc);
            }
            $this->mimeDest = image_type_to_mime_type($this->typeDest);
            $this->functionDest = \SOME\Graphics::image_type_to_output_function($this->typeDest);
            $this->_dest .= $this->extDest;
        }
    }


    /**
     * Создает результирующее изображение
     */
    private function createResultImage()
    {
        if ($this->_mode == self::THUMBNAIL_FRAME) {
            // По рамке
            $this->wOut = $this->_wFrame;
            $this->hOut = $this->_hFrame;
        } elseif (($this->wSrc * $this->_hFrame) >= ($this->hSrc * $this->_wFrame)) {
            // В случае если изображение более вытянуто в ширину чем рамка
            $this->wOut = $this->lOut;
            $this->hOut = $this->dOut;
        } else {
            // В случае, если изображение более вытянуто в высоту, чем рамка
            $this->wOut = $this->dOut;
            $this->hOut = $this->lOut;
        }
        $this->imgDest = imagecreatetruecolor($this->wOut, $this->hOut);
    }


    /**
     * Делает фоновую заливку
     */
    private function setBackground()
    {
        imagealphablending($this->imgDest, true);
        if (in_array($this->typeDest, array(\IMAGETYPE_GIF, \IMAGETYPE_PNG))) {
            imagesavealpha($this->imgDest, true);
            $bg = imagecolorallocatealpha(
                $this->imgDest, $this->_background[0], $this->_background[1], $this->_background[2], $this->_background[3]
            );
            // В случае объявления фона более прозрачным, чем порог прозрачности, он становится прозрачным цветом
            if ($this->typeDest == \IMAGETYPE_GIF && $this->_background[3] >= $this->_transparencyThreshold) {
                imagecolortransparent($this->imgDest, $bg);
            }
        } else {
            // Если прозрачности нет, зальем полностью непрозрачным цветом, чтобы не было шума при наложении прозрачных цветов
            $bg = imagecolorallocatealpha($this->imgDest, $this->_background[0], $this->_background[1], $this->_background[2], 0);
        }
        imagefill($this->imgDest, 0, 0, $bg);
    }

    /**
     * Копирует кусок исходного изображения в результирующее с изменением размера
     */
    private function copyImage()
    {
        if (($this->wSrc * $this->_hFrame) >= ($this->hSrc * $this->_wFrame)) {
            imagecopyresampled(
                $this->imgDest, $this->imgSrc, $this->uOut, $this->vOut, $this->uIn, $this->vIn, $this->lOut, $this->dOut, $this->lIn, $this->dIn
            );
        } else {
            imagecopyresampled(
                $this->imgDest, $this->imgSrc, $this->vOut, $this->uOut, $this->vIn, $this->uIn, $this->dOut, $this->lOut, $this->dIn, $this->lIn
            );
        }
    }


    /**
     * Восстанавливает прозрачность для GIF по порогу прозрачности
     */
    private function restoreTransparency()
    {
        if ($this->typeDest == IMAGETYPE_GIF) {
            imagealphablending($this->imgDest, false);
            // Если объявлен прозрачный фон, то назначим прозрачный цвет
            if (!isset($this->transindex) && $this->_background[3] >= $this->_transparencyThreshold) {
                $this->transindex = imagecolorallocatealpha($this->imgDest, $this->_background[0], $this->_background[1], $this->_background[2], 127);
            }
            // Если существует прозрачный цвет, применим его как прозрачный цвет
            if ($this->transindex) {
                imagecolortransparent($this->imgDest, $this->transindex);
                // Пройдемся по изображению: у точек, у которых прозрачность больше порогового значения, установим прозрачный цвет
                for ($y = 0; $y < $this->hOut; ++$y) {
                    for ($x = 0; $x < $this->wOut; ++$x) {
                        if (((imagecolorat($this->imgDest, $x, $y) >> 24) & 0x7F) >= $this->_transparencyThreshold) {
                            imagesetpixel($this->imgDest, $x, $y, $this->transindex);
                        }
                    }
                }
            }
        }
    }

    /**
     * Выводит результирующее изображение в stdout согласно заявленному типу
     */
    private function outputImage()
    {
        switch ($this->typeDest) {
            case \IMAGETYPE_GIF:
            case \IMAGETYPE_WBMP:
            case \IMAGETYPE_XBM:
                $func = $this->functionDest;
                $func($this->imgDest, $this->_createFile ? $this->_dest : null);
                break;
            case \IMAGETYPE_JPEG:
                \imagejpeg($this->imgDest, $this->_createFile ? $this->_dest : null, $this->_quality);
                break;
            case \IMAGETYPE_PNG:
                \imagepng($this->imgDest, $this->_createFile ? $this->_dest : null, (9 - (int)min($this->_quality / 10, 9)));
                break;
            case \IMAGETYPE_WEBP:
                \imagewebp($this->imgDest, $this->_createFile ? $this->_dest : null, $this->_quality);
                break;
        }
    }
}
