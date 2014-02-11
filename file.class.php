<?php
/**
 * Файл работы с файловой системой
 *
 * Этот файл - часть библиотеки, предоставляющий расширенный функционал работы с файловой системой, входящей в комплект SOME Framework
 *
 * @package SOME
 * @subpackage Filesystem
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2011, ООО «Объемные Сети»
 * @version 4.0
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

/**
 * Класс работы с файловой системой
 * 
 * Данный класс предоставляет в виде статических функций расширенный функционал для работы с файловой системой
 * @package SOME
 * @subpackage Filesystem
 */   
final class File
{
    /**
     * Удаление файлов и директорий
     *
     * Функция распознает тип объекта - файл или директория, и удаляет его. Файлы удаляются
     * полностью аналогично функции unlink() {@link http://ru2.php.net/manual/ru/function.unlink.php}.
     * Однако в отличие от стандартной функции удаления директорий rmdir() {@link http://ru2.php.net/manual/ru/function.rmdir.php}
     * эта функция способна рекурсивно удалять даже непустые директории
     * @param array|string $filename Путь или набор путей к файлам или директориям для удаления
     * @return bool Возвращает true при успешном завершении удаления, либо false при возникновении ошибки
     */
    public static function unlink($filename)
    {
        $ok = true;
        if (is_array($filename)) {
            foreach ($filename as $file) {
                $ok &= self::unlink($file);
            }
        } else {
            $filename = realpath(rtrim($filename, '\\/'));
            if (is_dir($filename)) {
                $list = self::scandir($filename);
                foreach ($list as $file) {
                    self::unlink($filename . '/' . $file);
                }
            }
            @chmod($filename, 0777);
            $ok &= (is_dir($filename) ? @\rmdir($filename) : @\unlink($filename));
        }
        return $ok;
    }
    
    /**
     * Функция копирует файл или (рекурсивно) директорию
     *
     * @param string $source Путь к файлу или директории для удаления
     * @param string $dest Путь к файлу или директории назначения
     * @param bool $overwrite Флаг перезаписи. Если установлен в true, файлы с совпадающими именами будут перезаписаны
     * @param bool $copy_rights Флаг копирования прав доступа. Если установлен в true, скопированные объекты будут обладать теми же правами 
     *                          доступа, что и их прототипы. Если же установлен в false, создаваемые директории будут общедоступными 
     *                          (права доступа 0777)
     * @param callback $scandir_callback функция для фильтрации подкаталогов, либо ее текст. Текущая позиция задается переменной $x. 
     *                                   Директория задается переменной $dir.
     * @return bool Возвращает true при успешном завершении копирования, либо false при возникновении ошибки
     */
    public static function copy($src, $dest, $overwrite = true, $copy_rights = false, $scandir_callback = 'return ($x != "." && $x != "..");') 
    {
        $src = rtrim($src, '\\/');
        $dest = rtrim($dest, '\\/');
        if (is_string($scandir_callback) && !function_exists($scandir_callback)) {
            $scandir_callback = create_function('$x', $scandir_callback);
        }
        if (!file_exists($src)) {
            return false;
        } 
        $status = self::copy_single($src, $dest, $overwrite, $copy_rights);
        if ($status) {
            return ($status == 1 ? true : false);
        }
        $ok = true;
        if (is_dir($src)) {
            $list = self::scandir($src, $scandir_callback);
            foreach ($list as $file) {
                $ok &= self::copy($src . '/' . $file, $dest . '/' . $file, $overwrite, $copy_rights, $scandir_callback);
            }
        }
        return $ok;
    }
    
    
    /**
     * Выбирает все файлы и поддиректории из заданной директории
     * 
     * Отличие от стандартной функции scandir() {@link http://ru2.php.net/manual/ru/function.scandir.php}. состоит в фильтрации результатов
     * @param string $dir директория для исследования
     * @param callback $callback функция для фильтрации, либо ее текст. Текущая позиция задается переменной $x. 
     *                           Директория задается переменной $dir.
     * @return array|false массив в случае удачного сканирования директории, либо false в случае ошибки.
     */     
    public static function scandir($dir, $callback = 'return ($x != "." && $x != "..");')
    {
        if (is_string($callback) && !function_exists($callback)) {
            $callback = str_replace('$dir', '"' . addslashes($dir) . '"', $callback);
            $callback = create_function('$x', $callback);
        }
        $list = \scandir($dir);
        if (!is_array($list)) {
            return false;
        }
        $list = \array_values(\array_filter($list, $callback));
        return $list;
    }
    
    
    /**
     * Копирует единичный файл или директорию
     *      
     * @param string $source Путь к файлу или директории для удаления
     * @param string $dest Путь к файлу или директории назначения
     * @param bool $overwrite Флаг перезаписи. Если установлен в true, файлы с совпадающими именами будут перезаписаны
     * @param bool $copy_rights Флаг копирования прав доступа. Если установлен в true, скопированные объекты будут обладать теми же правами 
     *                          доступа, что и их прототипы. Если же установлен в false, создаваемые директории будут общедоступными 
     *                          (права доступа 0777)
     * @return int Возвращает 1 при успешном завершении проверки без необходимости дальнейших действий
     *             возвращает -1 при ошибке проверки без необходимости дальнейших действий
     *             возвращает 0 при успешной проверке для продолжения копирования     
     */         
    private static function copy_single($src, $dest, $overwrite = true, $copy_rights = false)
    {
        $ex = is_dir($src) ? is_file($dest) : file_exists($dest);
        if ($ex && !$overwrite) {
            // Существует мешающий файл, но работаем без перезаписи
            return 1;
        } elseif ($ex && $overwrite && !self::unlink($dest)) {
            // Существует мешающий файл, работаем с перезаписью, но не можем его удалить
            return -1;
        } elseif (is_file($src) && !\copy($src, $dest)) {
            // Не можем скопировать файл
            return -1;
        } elseif (is_dir($src) && !is_dir($dest) && !mkdir($dest, 0777, true)) {
            // Не можем создать директорию
            return -1;
        }
        @touch($dest, filemtime($src));
        @chmod($dest, $copy_rights ? (fileperms($src) & 0777) : 0777);
        return 0;
    }
}