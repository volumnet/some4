<?php
/**
 * @package SOME
 */
namespace SOME;

/**
 * Класс работы с Zip-архивами
 *
 * Данный класс предоставляет надстройку над системным классом \ZipArchive
 */
class ZipArchive extends \ZipArchive
{
    /**
     * Добавляет в ZIP-архив файл или папку по указанному пути
     *
     * В отличие от стандартного \ZipArchive, позволяет рекурсивно добавлять папки
     *
     * @param string $filename Путь к файлу для добавления
     * @param string $localname Имя файла внутри ZIP-архива. Если указано, то переопределит filename
     * @param int $start Этот параметр не используется, но необходим для будущего развития ZipArchive
     * @param int $length Этот параметр не используется, но необходим для будущего развития ZipArchive
     */
    public function addFile(
        string $filename,
        string $localname = '',
        int $start = 0,
        int $length = 0,
        int $flags = self::FL_OVERWRITE
    ): bool {
        if (is_file($filename)) {
            $result = parent::addFile($filename, $localname, $start, $length);
        } elseif (is_dir($filename)) {
            $result = true;
            $filename = rtrim($filename, '\\/');
            if (!$localname) {
                $localname = basename($filename);
            }
            $dir = File::scandir($filename);
            $result &= $this->addEmptyDir($localname);
            foreach ($dir as $f) {
                $result &= $this->addFile($filename . '/' . $f, $localname . '/' . $f);
            }
        }
        return (bool)$result;
    }
}
