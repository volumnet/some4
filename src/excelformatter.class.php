<?php

/**
 * Файл форматирования данных в Excel
 */

namespace SOME;

use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use PhpOffice\PhpSpreadsheet\Cell\Datatype;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Cell\Cell;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Worksheet\MemoryDrawing;

/**
 * Класс форматирования данных в Excel
 */
class ExcelFormatter extends Spreadsheet
{
    /**
     * Миллиметров на единицу ширины
     */
    public const MM_PER_WIDTH_UNIT = 1.966667;

    /**
     * Миллиметров на единицу высоты
     */
    public const MM_PER_HEIGHT_UNIT = 0.353;

    /**
     * Конструктор класса
     */
    public function __construct()
    {
        parent::__construct();
        $this->removeSheetByIndex(0);
    }


    /**
     * Добавляет лист согласно данным
     * @param string $name Имя листа
     * @param array<array<[
     *     'value' => mixed Значение,
     *     'type' => 'string'|'number'|null Тип данных,
     *     'style' => [
     *         'font-weight' => 'bold'|'normal'|null Толщина шрифта,
     *         'color' => string HEX-представление цвета шрифта,
     *         'font-style' => 'italic' Представление стиля,
     *         'font-size' => int Размер шрифта в px,
     *         'border' => '[ширина]px solid [цвет]',
     *         'text-align' => 'left'|'right'|'center'|'justify',
     *         'vertical-align' => 'top'|'middle'|'bottom',
     *         'white-space' => 'nowrap'|'normal',
     *         'height' => int высота, мм,
     *         'width' => int ширина, мм,
     *      ],
     *      'colspan' => int Расширение по колонкам,
     *      'rowspan' => int Расширение по строкам,
     * ]>> $paramname description
     * @return Worksheet
     */
    public function addWorkSheet($name, array $data = [])
    {
        $sheet = new Worksheet($this, $name);
        $this->addSheet($sheet);
        $data = $this->canonizeData($data);
        for ($i = 0; $i < count($data); $i++) {
            for ($j = 0; $j < count($data[$i]); $j++) {
                $cell = $sheet->getCell([1 + $j, 1 + $i]);
                $richVal = $data[$i][$j];
                if ((string)($richVal['value'] ?? '') !== '') {
                    $this->applyCellValue($cell, $richVal['value'], isset($richVal['type']) ? $richVal['type'] : null);
                }
                if ($image = $richVal['image'] ?? null) {
                    if ($imageUrl = $image['url'] ?? null) {
                        if (is_file($imageUrl)) {
                            $gtype = getimagesize($imageUrl);
                            if ($gtype[2]) {
                                $objDrawing = new MemoryDrawing();
                                switch ($gtype[2]) {
                                    case IMAGETYPE_JPEG:
                                    case IMAGETYPE_JP2:
                                    case IMAGETYPE_JPEG2000:
                                        $gdImage = imagecreatefromjpeg($imageUrl);
                                        $objDrawing->setRenderingFunction(MemoryDrawing::RENDERING_JPEG);
                                        $objDrawing->setMimeType(MemoryDrawing::MIMETYPE_JPEG);
                                        break;
                                    case IMAGETYPE_GIF:
                                        $gdImage = imagecreatefromgif($imageUrl);
                                        $objDrawing->setRenderingFunction(MemoryDrawing::RENDERING_GIF);
                                        $objDrawing->setMimeType(MemoryDrawing::MIMETYPE_GIF);
                                        break;
                                    case IMAGETYPE_PNG:
                                        $objDrawing->setRenderingFunction(MemoryDrawing::RENDERING_PNG);
                                        $objDrawing->setMimeType(MemoryDrawing::MIMETYPE_PNG);
                                        $gdImage = imagecreatefrompng($imageUrl);
                                        break;
                                }
                                $objDrawing->setImageResource($gdImage);
                                if (isset($image['alt'])) {
                                    $objDrawing->setName($image['alt']);
                                    // $objDrawing->setDescription('Sample image');
                                }
                                if (isset($image['style']['width'])) {
                                    $objDrawing->setWidth((int)$image['style']['width']);
                                }
                                if (isset($image['style']['height'])) {
                                    $objDrawing->setHeight((int)$image['style']['height']);
                                }
                                $objDrawing->setWorksheet($sheet);
                            }
                        }
                    }
                }
                if ($richVal['style'] ?? null) {
                    $this->applyCellStyles($cell, $richVal['style']);
                }
                if ((($richVal['colspan'] ?? 0) > 1) || (($richVal['rowspan'] ?? 0) > 1)) {
                    $colspan = max(1, (int)($richVal['colspan'] ?? 0));
                    $rowspan = max(1, (int)($richVal['rowspan'] ?? 0));
                    $sheet->mergeCells([
                        1 + $j,
                        1 + $i,
                        1 + $j + $colspan - 1,
                        $i + 1 + $rowspan - 1
                    ]);
                }
            }
        }
        return $sheet;
    }


    /**
     * Возвращает каноническую версию данных
     *
     * Т.е. с добавленными ячейками для colspan и rowspan
     * При этом сами параметры colspan и rowspan не удаляются, чтобы иметь возможность
     * объединить ячейки
     * @param array $inData Входные данные (аналогично параметру $data метода addWorkSheet)
     * @return array Выходные данные (аналогично параметру $data метода addWorkSheet)
     */
    public function canonizeData(array $inData)
    {
        $outData = $inData;
        for ($i = 0; $i < count($outData); $i++) {
            for ($j = 0; $j < count($outData[$i]); $j++) {
                $colspan = max(1, (int)($outData[$i][$j]['colspan'] ?? null));
                $rowspan = max(1, (int)($outData[$i][$j]['rowspan'] ?? null));
                if (($colspan > 1) || ($rowspan > 1)) {
                    $dummyCell = [/*'value' => $colspan . '/' . $rowspan*/];
                    $dummyCell['style'] = $outData[$i][$j]['style'];
                    for ($k = $i; $k < $i + $rowspan; $k++) {
                        if (!isset($outData[$k])) {
                            $outData[$k] = [];
                        }
                        if (($c = count($outData[$k])) < $j) {
                            $outData[$k] = array_merge($outData[$k], array_fill(
                                0,
                                $j - $c - 1,
                                []
                            ));
                        }
                        if ($k > $i) {
                            array_splice($outData[$k], $j, 0, [$dummyCell]);
                        }
                        array_splice($outData[$k], $j + 1, 0, array_fill(
                            0,
                            $colspan - 1,
                            $dummyCell
                        ));
                    }
                }
            }
        }
        return $outData;
    }


    /**
     * Применяет значение и тип данных к ячейке
     * @param Cell $cell Ячейка
     * @param mixed $value Значение ячейки
     * @param 'number'|'string'|null $type Тип данных
     * @return Cell Возвращает ячейку (для piping'а)
     */
    public function applyCellValue(Cell $cell, $value, $type = null)
    {
        switch ($type) {
            case 'number':
                $cellType = Datatype::TYPE_NUMERIC;
                break;
            default:
                $cellType = Datatype::TYPE_STRING;
        }
        $cell->setValueExplicit($value, $cellType);
        return $cell;
    }


    /**
     * Применяет стили к ячейке
     * @param Cell $cell Ячейка
     * @param array $cellStyles Данные по форматированию ячейки
     * @return Cell Возвращает ячейку (для piping'а)
     */
    public function applyCellStyles(Cell $cell, array $cellStyles = [])
    {
        $styleArr = $cellStyles;
        if (isset($cellStyles['font-weight'])) {
            if ($cellStyles['font-weight'] == 'bold') {
                $styleArr['font']['bold'] = true;
            } elseif ($cellStyles['font-weight'] == 'normal') {
                $styleArr['font']['bold'] = false;
            }
        }
        if (isset($cellStyles['font-size'])) {
            $styleArr['font']['size'] = (int)$cellStyles['font-size'];
        }

        if (isset($cellStyles['font-family'])) {
            $styleArr['font']['name'] = $cellStyles['font-family'];
        }
        if (isset($cellStyles['color'])) {
            if ($color = $this->getExcelColor($cellStyles['color'])) {
                $styleArr['font']['color']['rgb'] = $color;
            }
        }
        if (isset($cellStyles['break-after'])) {
            switch ($cellStyles['break-after']) {
                case 'page':
                    $cell->getWorksheet()->setBreak($cell->getCoordinate(), Worksheet::BREAK_ROW);
                    break;
                case 'column':
                    $cell->getWorksheet()->setBreak($cell->getCoordinate(), Worksheet::BREAK_COLUMN);
                    break;
            }
        }
        if (isset($cellStyles['font-style'])) {
            switch ($cellStyles['font-style']) {
                case 'italic':
                    $styleArr['font']['italic'] = true;
                    break;
                default:
                    $styleArr['font']['italic'] = false;
                    break;
            }
        }
        if (isset($cellStyles['text-align'])) {
            switch ($cellStyles['text-align']) {
                case 'center':
                    $styleArr['alignment']['horizontal'] = Alignment::HORIZONTAL_CENTER;
                    break;
                case 'right':
                    $styleArr['alignment']['horizontal'] = Alignment::HORIZONTAL_RIGHT;
                    break;
                case 'justify':
                    $styleArr['alignment']['horizontal'] = Alignment::HORIZONTAL_JUSTIFY;
                    break;
                default:
                    $styleArr['alignment']['horizontal'] = Alignment::HORIZONTAL_LEFT;
                    break;
            }
        }
        if (isset($cellStyles['vertical-align'])) {
            switch ($cellStyles['vertical-align']) {
                case 'middle':
                    $styleArr['alignment']['vertical'] = Alignment::VERTICAL_CENTER;
                    break;
                case 'bottom':
                    $styleArr['alignment']['vertical'] = Alignment::VERTICAL_BOTTOM;
                    break;
                default:
                    $styleArr['alignment']['vertical'] = Alignment::VERTICAL_TOP;
                    break;
            }
        }
        if (isset($cellStyles['white-space'])) {
            switch ($cellStyles['white-space']) {
                case 'nowrap':
                    $styleArr['alignment']['wrap'] = false;
                    break;
                default:
                    $styleArr['alignment']['wrap'] = true;
                    break;
            }
        }
        if (isset($cellStyles['height'])) {
            $cell->getWorksheet()
                ->getRowDimension($cell->getRow())
                ->setRowHeight((float)$cellStyles['height'] / self::MM_PER_HEIGHT_UNIT);
        } elseif (isset($cellStyles['white-space']) && ($cellStyles['white-space'] == 'normal')) {
            $cell->getWorksheet()
                ->getRowDimension($cell->getRow())
                ->setRowHeight(-1);
            $cell->getStyle()->getAlignment()->setWrapText(true);
        }
        if (isset($cellStyles['width'])) {
            $cell->getWorksheet()
                ->getColumnDimension($cell->getColumn())
                ->setWidth((float)$cellStyles['width'] / self::MM_PER_WIDTH_UNIT);
        }
        if (isset($cellStyles['border'])) {
            $cellStyles['border-top'] =
            $cellStyles['border-bottom'] =
            $cellStyles['border-left'] =
            $cellStyles['border-right'] = $cellStyles['border'];
        }
        foreach (['top', 'right', 'bottom', 'left'] as $key) {
            if (isset($cellStyles['border-' . $key])) {
                $border = explode(' ', $cellStyles['border-' . $key]);
                foreach (['width', 'style', 'color'] as $i => $key2) {
                    if (isset($border[$i])) {
                        $cellStyles['border-' . $key . '-' . $key2] = $border[$i];
                    }
                }
            }
            if (isset($cellStyles['border-' . $key . '-color'])) {
                if ($color = $this->getExcelColor($cellStyles['border-' . $key . '-color'])) {
                    $styleArr['borders'][$key]['color']['rgb'] = $color;
                }
            }
            if (isset($cellStyles['border-' . $key . '-style'])) {
                $width = (int)$cellStyles['border-' . $key . '-width'] ?: 1;
                switch ($cellStyles['border-' . $key . '-style']) {
                    case 'solid':
                        if ($width <= 1) {
                            $borderStyle = Border::BORDER_HAIR;
                        } elseif ($width == 2) {
                            $borderStyle = Border::BORDER_THIN;
                        } elseif ($width == 3) {
                            $borderStyle = Border::BORDER_MEDIUM;
                        } elseif ($width > 3) {
                            $borderStyle = Border::BORDER_THICK;
                        }
                        break;
                    case 'dotted':
                        $borderStyle = Border::BORDER_DOTTED;
                        break;
                    case 'dashed':
                        if ($width <= 1) {
                            $borderStyle = Border::BORDER_DASHED;
                        } else {
                            $borderStyle = Border::BORDER_MEDIUMDASHED;
                        }
                        break;
                    case 'double':
                        $borderStyle = Border::BORDER_DOUBLE;
                        break;
                    default:
                        $borderStyle = Border::BORDER_NONE;
                        break;
                }
                $styleArr['borders'][$key]['borderStyle'] = $borderStyle;
            }
        }
        if ($styleArr) {
            $cell->getStyle()->applyFromArray($styleArr);
        }
        return $cell;
    }


    /**
     * Возвращает Excel-совместимый цвет по коду или названию
     * @param string $cssColor Входной цвет (формат CSS)
     * @return string|null
     */
    public function getExcelColor($cssColor)
    {
        $color = mb_strtoupper($cssColor);
        if ($color[0] == '#') {
            $color = trim($cssColor, '#');
            $len = mb_strlen($color);
            if (($len == 3) || ($len == 6)) {
                if ($len == 3) {
                    $newColor = '';
                    for ($i = 0; $i < $len; $i++) {
                        $newColor .= str_repeat(mb_substr($color, $i, 1), 2);
                    }
                    $color = $newColor;
                }
                return $color;
            }
        } else {
            switch ($color) {
                case 'BLACK':
                    return '000000';
                    break;
                case 'RED':
                    return 'FF0000';
                    break;
                case 'YELLOW':
                    return 'FFFF00';
                    break;
                case 'GREEN':
                    return '008000';
                    break;
                case 'LIME':
                    return '00FF00';
                    break;
                case 'CYAN':
                    return '00FFFF';
                    break;
                case 'BLUE':
                    return '0000FF';
                    break;
                case 'MAGENTA':
                    return 'FF00FF';
                    break;
                case 'WHITE':
                    return 'FFFFFF';
                    break;
            }
        }
    }


    /**
     * Экспортирует книгу Excel в файл
     * @param string $filename Имя файла
     * @param bool $appendHeader Добавить HTTP-заголовок
     * @return string Текст файла
     */
    public function getFile($filename, $appendHeader = false)
    {
        $ext = pathinfo($filename, PATHINFO_EXTENSION);
        switch ($ext) {
            case 'xlsx':
                $writerName = 'Xlsx';
                $header = 'Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; name="' . $filename . '"';
                break;
            default:
                $writerName = 'Xls';
                $header = 'Content-Type: application/excel; name="' . $filename . '"';
                break;
        }
        if ($appendHeader) {
            header($header);
            header('Content-Disposition: attachment; filename="' . $filename . '"');
        }
        $objWriter = IOFactory::createWriter($this, $writerName);
        $temp_file = tempnam(sys_get_temp_dir(), '');
        $objWriter->save($temp_file);
        $text = file_get_contents($temp_file);
        unlink($temp_file);
        return $text;
    }
}
