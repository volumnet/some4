<?php
/**
 * Файл работы с графикой
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
 * Класс работы с графикой
 * 
 * Данный класс предоставляет в виде статических функций основной функционал для работы с графикой
 * @package SOME
 * @subpackage Graphics
 */   
class Graphics
{
    /**
     * Ассоциации расширений файлов с типами файлов.
     * @var array ассоциативный массив, ключами которого являются расширения, а значениями — типы изображений, представленные
     *            константами вида IMAGETYPE_XXX
     */         
    private static $types = array(
        'gif' => \IMAGETYPE_GIF, 'jpg' => \IMAGETYPE_JPEG, 'jpeg' => \IMAGETYPE_JPEG, 'png' => \IMAGETYPE_PNG, 
        'wbmp' => \IMAGETYPE_WBMP, 'xbm' => \IMAGETYPE_XBM
    );
    
    
    /**
     * Возвращает подтип MIME из типа изображения.
     *      
     * @param int $imagetype тип изображения, представленный константой вида IMAGETYPE_XXX
     * @return string подтип MIME (например, jpeg из image/jpeg)
     */         
    public static function image_type_to_mime_subtype($imagetype)
    {
        if ($temp = image_type_to_mime_type($imagetype)) {
            $temp = explode('/', $temp);
            return $temp[1];
        }
        return false;
    }
    
    
    /**
     * Возвращает имя функции, с помощью которой можно загрузить изображение.
     *      
     * @param int $imagetype Тип изображения, представленный константой вида IMAGETYPE_XXX
     * @return string имя функции вида imagecreatefrom... (например, imagecreatefrompng)
     */         
    public static function image_type_to_input_function($imagetype)
    {
        if ($subtype = self::image_type_to_mime_subtype($imagetype)) {
            if (function_exists('imagecreatefrom' . $subtype)) {
                return 'imagecreatefrom' . $subtype;
            }
        }
        return false;
    }
    
    
    /**
     * Возвращает имя функции, с помощью которой можно сохранить изображение с данным типом.
     *      
     * @param int $imagetype Тип изображения, представленный константой вида IMAGETYPE_XXX
     * @return string имя функции вида image... (например, imagegif)
     */         
    public static function image_type_to_output_function($imagetype)
    {
        if ($subtype = self::image_type_to_mime_subtype($imagetype)) {
            if (function_exists('image' . $subtype)) {
                return 'image' . $subtype;
            }
        }
        return false;
    }
    
    
    /**
     * Возвращает тип изображения из расширения файла.
     *      
     * @param string $ext расширение файла без начальной точки
     * @return int тип изображения, представленный константой вида IMAGETYPE_XXX
     */         
    public static function extension_to_image_type($ext)
    {
        $ext = mb_strtolower($ext);
        if (isset(self::$types[$ext])) {
            return self::$types[$ext];
        } 
        return false;
    }
    
    
    /**
     * Возвращает MIME-тип изображения из расширения файла.
     *      
     * @param string $ext расширение файла без начальной точки
     * @return string тип MIME (например, image/jpeg)
     */         
    public static function extension_to_mime_type($ext)
    {
        $ext = mb_strtolower($ext);
        if (isset(self::$types[$ext])) {
            return image_type_to_mime_type(self::$types[$ext]);
        } 
        return false;
    }
    
    
    /**
     * Возвращает подтип MIME из расширения файла.
     *      
     * @param string $ext расширение файла без начальной точки
     * @return string подтип MIME (например, jpeg из image/jpeg)
     */         
    public static function extension_to_mime_subtype($ext)
    {
        $ext = mb_strtolower($ext);
        if (isset(self::$types[$ext])) {
            return self::image_type_to_mime_subtype(self::$types[$ext]);
        } 
        return false;
    }
    
    
    /**
     * Возвращает имя функции, с помощью которой можно загрузить изображение.
     *      
     * @param string $ext расширение файла без начальной точки
     * @return string имя функции вида imagecreatefrom... (например, imagecreatefrompng)
     */         
    public static function extension_to_input_function($ext)
    {
        $ext = mb_strtolower($ext);
        if (isset(self::$types[$ext])) {
            return self::image_type_to_input_function(self::$types[$ext]);
        } 
        return false;
    }
    
    
    /**
     * Возвращает имя функции, с помощью которой можно сохранить изображение с данным типом.
     *      
     * @param string $ext расширение файла без начальной точки
     * @return string имя функции вида image... (например, imagegif)
     */         
    public static function extension_to_output_function($ext)
    {
        $ext = mb_strtolower($ext);
        if (isset(self::$types[$ext])) {
            return self::image_type_to_output_function(self::$types[$ext]);
        } 
        return false;
    }
    
    
    /**
     * Возвращает массив каналов из различных форматов задания цвета.
     *      
     * @param array|int|string $color исходный цвет. Может задаваться тремя (красный, зеленый, синий), либо четырьмя
     *                                (красный, зеленый, синий, прозрачность) каналами. Может быть представлен в следующих видах:
     *                                array([красный(0-255)], [зеленый(0-255)], [синий(0-255)]);
     *                                array([красный(0-255)], [зеленый(0-255)], [синий(0-255)], [прозрачность(0-127)]);
     *                                int 0x[красный(00-FF)][зеленый(00-FF)][синий(00-FF)]
     *                                int 0x[красный(00-FF)][зеленый(00-FF)][синий(00-FF)][прозрачность(00-7F)]          
     *                                string #[красный(0-F)][зеленый(0-F)][синий(0-F)]
     *                                string #[красный(0-F)][зеленый(0-F)][синий(0-F)][прозрачность(0-7)]          
     *                                string #[красный(00-FF)][зеленый(00-FF)][синий(00-FF)]
     *                                string #[красный(00-FF)][зеленый(00-FF)][синий(00-FF)][прозрачность(00-7F)]
     *                                При указании в прозрачности значения 127 (7F) в результирующих форматах PNG и GIF фон 
     *                                будет объявлен прозрачным цветом.
     *                                При наличии в исходном изображении прозрачного цвета, если результирующий формат GIF,
     *                                прозрачный цвет сохранится
     * @return array индексированный массив каналов в виде array([красный], [зеленый], [синий], [альфа]) при наличии альфа-канала, либо
     *               array([красный], [зеленый], [синий]) при его отсутствии. Красный, зеленый и синий представлены числами от 0 до 255,
     *               альфа-канал (при наличии) — от 0 до 127
     */           
    public static function getRGBAFromColor($color)
    {
        if (is_array($color)) {
            while (count($color) < 4) {
                $color[] = 0;
            }
            return array_slice($color, 0, 4);
        } elseif (is_numeric($color)) {
            return array($color >> 16, ($color >> 8) & 0x00FF, $color & 0x0000FF, 0);
        } elseif (preg_match('/^#?([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})$/i', $color, $regs)) {
            return array(hexdec($regs[1]), hexdec($regs[2]), hexdec($regs[3]), 0);
        } elseif (preg_match('/^#?([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})$/i', $color, $regs)) {
            return array(hexdec($regs[1]), hexdec($regs[2]), hexdec($regs[3]), hexdec($regs[4]));
        } elseif (preg_match('/^#?([0-9a-f])([0-9a-f])([0-9a-f])$/i', $color, $regs)) {
            return array(hexdec($regs[1] . $regs[1]), hexdec($regs[2] . $regs[2]), hexdec($regs[3] . $regs[3]), 0);
        } elseif (preg_match('/^#?([0-9a-f])([0-9a-f])([0-9a-f])([0-9a-f])$/i', $color, $regs)) {
            return array(hexdec($regs[1] . $regs[1]), hexdec($regs[2] . $regs[2]), hexdec($regs[3] . $regs[3]), hexdec($regs[4] . $regs[4]));
        }
        return array(0, 0, 0, 0);
    }
    
    
    /**
     * Возвращает содержимое статического свойства $types
     */         
    public static function gettypes()
    {
        return self::$types;
    }
}