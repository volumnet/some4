<?php
/**
 * @package SOME
 */
namespace SOME;

use InvalidArgumentException;

/**
 * Загрузчик классов
 */
class ClassImporter
{
    /**
     * Загружает класс(ы) из файла под заданным(и) именем(именами)
     *
     * Пространство имен остается неизменным
     * @param string $filename Файл, содержащий класс(ы)
     * @param array|string $as string имя класса, если файл содержит один класс;
     *                     array соответствие старого/нового имен,
     *                     если файл содержит несколько классов;
     */
    public static function import($filename, $as = null)
    {
        if (!is_file($filename)) {
            throw new InvalidArgumentException('File ' . $filename . ' is not found');
        }

        $crc32File = hash_file('crc32b', $filename);
        $crc32As = is_array($as) ? dechex(crc32(json_encode($as))) : $as;
        $tmpFilename = pathinfo($filename, PATHINFO_FILENAME) . '.' . $crc32File . ($crc32As ? ('.' . $crc32As) : '')
            . '.' . pathinfo($filename, PATHINFO_EXTENSION);
        $tmpFilepath = sys_get_temp_dir() . '/' . $tmpFilename;

        if (!is_file($tmpFilepath)) {
            $text = file_get_contents($filename);
            if (!stristr($text, 'class ')) {
                throw new InvalidArgumentException('File ' . $filename . ' has no classes');
            }
            if (is_array($as)) {
                $mapping = [];
                foreach ($as as $oldName => $newName) {
                    $mapping['class ' . $oldName] = 'class ' . $newName;
                    $mapping['trait ' . $oldName] = 'trait ' . $newName;
                    $mapping['interface ' . $oldName] = 'interface ' . $newName;
                }
                $text = strtr($text, $mapping);
            } elseif ($as) {
                $text = preg_replace('/(class|interface|trait) (\\w+)/ums', '$1 ' . $as, $text);
            } else {
                $text = preg_replace('/(class|interface|trait) (\\w+)/ums', '$1 $2Original', $text);
            }
            file_put_contents($tmpFilepath, $text);
        }

        include $tmpFilepath;
    }
}
