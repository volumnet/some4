<?php
/**
 * Файл загрузчика классов
 * @package SOME
 * @author Александр В. Сурнин <info@volumnet.ru>
 * @copyright © 2020, Volume Networks
 */
namespace SOME;

use \InvalidArgumentException;

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
    public static function import($filename, $as)
    {
        if (!is_file($filename)) {
            throw new InvalidArgumentException(
                'File ' . $filename . ' is not found'
            );
        }
        $text = file_get_contents($filename);
        if (!stristr($text, 'class ')) {
            throw new InvalidArgumentException(
                'File ' . $filename . ' has no classes'
            );
        }
        if (is_array($as)) {
            $mapping = [];
            foreach ($as as $oldName => $newName) {
                // if (class_exists($newName, false)) {
                //     return;
                // }
                $mapping['class ' . $oldName] = 'class ' . $newName;
                $mapping['trait ' . $oldName] = 'trait ' . $newName;
                $mapping['interface ' . $oldName] = 'interface ' . $newName;
            }
            $text = strtr($text, $mapping);
        } else {
            // if (class_exists($as, false)) {
            //     return;
            // }
            $text = preg_replace(
                '/(class|interface|trait) (\\w+)/umis',
                '$1 ' . $as,
                $text
            );
        }
        $_SESSION['SOME_CLASSIMPORTER_LAST_FILENAME'] = $filename;
        eval('?' . '>' . $text);
    }
}
