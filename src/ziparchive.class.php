<?php
/**
 * ����-���������� ��� ������� \ZipArchive
 *
 * ���� ���� - ����� ����������, ��������������� ����������� ���������� ������ � Zip-��������, �������� � �������� SOME Framework
 *
 * @package SOME
 * @subpackage ZipArchive
 * @author ��������� �. ������ <avs@volumnet.ru>
 * @copyright � 2012, ��� ��������� ����
 * @version 4.0
 * @license GPL ��� ����������� � �������������� ��������, ������������ ��� ���-������������� � ������
 */
namespace SOME;

/**
 * ����� ������ � Zip-��������
 * 
 * ������ ����� ������������� ���������� ��� ��������� ������� \ZipArchive
 * @package SOME
 * @subpackage Filesystem
 */
class ZipArchive extends \ZipArchive
{
    /**
     * ��������� � ZIP-����� ���� ��� ����� �� ���������� ����
     * 
     * � ������� �� ������������ \ZipArchive, ��������� ���������� ��������� �����
     * @param string $filename ���� � ����� ��� ����������
     * @param string|null $localname ��� ����� ������ ZIP-������. ���� �������, �� ������������� filename
     * @param int $start ���� �������� �� ������������, �� ��������� ��� �������� �������� ZipArchive
     * @param int $length ���� �������� �� ������������, �� ��������� ��� �������� �������� ZipArchive                         
     */         
    public function addFile($filename, $localname = null, $start = 0, $length = 0)
    {
        if (is_file($filename)) {
            parent::addFile($filename, $localname, $start, $length);
        } elseif (is_dir($filename)) {
            $filename = rtrim($filename, '\\/');
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