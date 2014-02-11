<?php
/**
 * Файл-надстройка над классом \ZipArchive
 *
 * Этот файл - часть библиотеки, предоставляющий расширенный функционал работы с Zip-архивами, входящей в комплект SOME Framework
 *
 * @package SOME
 * @subpackage ZipArchive
 * @author Александр В. Сурнин <avs@volumnet.ru>
 * @copyright © 2012, ООО «Объемные Сети»
 * @version 4.0
 * @license GPL для собственных и некоммерческих проектов, коммерческая для веб-разработчиков и студий
 */
namespace SOME;

/**
 * Класс работы с Zip-архивами
 * 
 * Данный класс предоставляет надстройку над системным классом \ZipArchive
 * @package SOME
 * @subpackage Filesystem
 */
class ZipArchive extends \ZipArchive
{
    /**
     * Добавляет в ZIP-архив файл или папку по указанному пути
     * 
     * В отличие от стандартного \ZipArchive, позволяет рекурсивно добавлять папки
     * @param string $filename Путь к файлу для добавления
     * @param string|null $localname Имя файла внутри ZIP-архива. Если указано, то переопределит filename
     * @param int $start Этот параметр не используется, но необходим для будущего развития ZipArchive
     * @param int $length Этот параметр не используется, но необходим для будущего развития ZipArchive                         
     */         
    public function addFile($filename, $localname = null, $start = 0, $length = 0)
    {
        if (is_file($filename)) {
            parent::addFile($filename, $localname, $start, $length);
        } elseif (is_dir($filename)) {
            $filename = trim($filename, '\\/');
            if (!$localname) {
                $localname = \basename($filename);
            }
            $dir = File::scandir($filename);
            $this->addEmptyDir($localname);
            foreach ($dir as $f) {
                $this->addFile($filename . '/' . $f, $localname . '/' . $f);
            }
        }
    }
}