<?php
/**
 * Файл теста сущности SOME
 */
namespace SOME;

use RAAS\CMS\Block;
use RAAS\CMS\Field;
use RAAS\CMS\Material;
use RAAS\CMS\Page;
use RAAS\CMS\PageWithAlias;
use RAAS\CMS\Redirect;
use RAAS\CMS\Snippet;
use RAAS\CMS\User;

/**
 * Класс теста сущности SOME
 */
class SOMETest extends BaseDBTest
{
    /**
     * Тест создания объекта по ID#
     */
    public function testConstructWithId()
    {
        $result = new Page(1);

        $this->assertEquals(1, $result->id);
    }


    /**
     * Тест создания объекта по объекту
     */
    public function testConstructWithObject()
    {
        $page = new Page(1);

        $result = new Page($page);

        $this->assertInstanceOf(Page::class, $result);
        $this->assertEquals(1, $result->id);
        $this->assertEquals('Главная', $result->name);
    }


    /**
     * Тест создания объекта по объекту другого типа
     */
    public function testConstructWithAnotherObject()
    {
        $page = new Material(1);

        $result = new Page($page);

        $this->assertInstanceOf(Page::class, $result);
        $this->assertNull($result->id);
        $this->assertEquals('Клиент-ориентированный подход', $result->name);
    }


    /**
     * Тест создания объекта по массиву
     */
    public function testConstructWithArray()
    {
        $page = new Page([
            'name' => 'abc',
            'urn' => 'aaa'
        ]);

        $this->assertEquals('abc', $page->name);
        $this->assertEquals('aaa', $page->urn);
    }


    /**
     * Тест создания объекта по массиву с использованием псевдонимов
     */
    public function testConstructWithArrayAliased()
    {
        $page = new PageWithAlias([
            'title' => 'abc',
            'urn' => 'aaa'
        ]);

        $this->assertEquals('abc', $page->name);
        $this->assertEquals('aaa', $page->urn);
    }


    /**
     * Тест установки, получения, удаления и проверки ID#
     * у нового объекта
     */
    public function testGetSetIssetUnsetIdWithNew()
    {
        $page = new Page();

        $this->assertFalse(isset($page->id));

        $this->assertNull($page->id);

        $page->id = 12345;

        $this->assertTrue(isset($page->id));
        $this->assertEquals(12345, $page->id);

        unset($page->id);

        $this->assertTrue(isset($page->id));

        $this->assertEquals(12345, $page->id);
    }


    /**
     * Тест установки, получения, удаления и проверки ID#
     * у существующего объекта
     */
    public function testGetSetIssetUnsetIdWithExisting()
    {
        $page = new Page(3);

        $this->assertTrue(isset($page->id));

        $this->assertEquals(3, $page->id);

        $page->id = 12345;

        $this->assertEquals(3, $page->id);

        unset($page->id);

        $this->assertTrue(isset($page->id));

        $this->assertEquals(3, $page->id);
    }


    /**
     * Тест получения измененного свойства у нового объекта
     */
    public function testGetSetUnsetRegularWithNew()
    {
        $page = new Page();

        $this->assertFalse(isset($page->name));

        $page->name = 'Услуги компании';

        $this->assertTrue(isset($page->name));
        $this->assertEquals('Услуги компании', $page->name);

        unset($page->name);

        $this->assertFalse(isset($page->name));
        $this->assertNull($page->name);
    }


    /**
     * Тест получения измененного свойства у существующего объекта
     */
    public function testGetSetUnsetRegularWithExisting()
    {
        $page = new Page(3);

        $this->assertTrue(isset($page->name));

        $page->name = 'Услуги компании';

        $this->assertTrue(isset($page->name));
        $this->assertEquals('Услуги компании', $page->name);

        unset($page->name);

        $this->assertTrue(isset($page->name));
        $this->assertEquals('Услуги', $page->name);
    }


    /**
     * Тест установки, получения, удаления и проверки регулярного свойства со ссылкой
     */
    public function testGetSetUnsetRegularWithRefChange()
    {
        $page = new Page(18);

        $this->assertEquals(17, $page->parent->id);
        $page->pid = 1;
        $this->assertFalse(isset($page->parent));
        $this->assertEquals(1, $page->parent->id);
        unset($page->pid);
        $this->assertFalse(isset($page->parent));
    }


    /**
     * Тест получения ссылки
     */
    public function testGetUnsetIssetReference()
    {
        $page = new Page(3);

        $this->assertFalse(isset($page->parent));

        $result = $page->parent;

        $this->assertTrue(isset($page->parent));
        $this->assertInstanceOf(Page::class, $result);
        $this->assertEquals('Главная', $result->name);

        unset($page->parent);

        $this->assertFalse(isset($page->parent));
    }


    /**
     * Тест получения, удаления и проверки связок
     */
    public function testGetUnsetIssetLinks()
    {
        $page = new Page(4);

        $this->assertFalse(isset($page->allowedUsers));

        $result = $page->allowedUsers;

        $this->assertTrue(isset($page->allowedUsers));
        $this->assertTrue(is_array($result));
        $this->assertNotEmpty($result);
        $this->assertInstanceOf(User::class, $result[0]);
        $users = array_filter($result, function ($x) {
            return $x->id == 1;
        });
        $this->assertNotEmpty($users);
        $user = array_shift($users);
        $this->assertEquals('test@test.org', $user->email);
        $this->assertEquals(1, $user->allow);

        unset($page->allowedUsers);

        $this->assertFalse(isset($page->allowedUsers));
    }


    /**
     * Тест получения, удаления и проверки осознаваемых переменных
     */
    public function testGetUnsetIssetCognizable()
    {
        $page = new Page(3);

        // 2024-01-03, AVS: isset для осознаваемых переменных с 2023-01-26 всегда true (иначе проблемы с обращением)
        $this->assertTrue(isset($page->fields));

        $result = $page->fields;

        $this->assertTrue(isset($page->fields));
        $this->assertTrue(is_array($result));
        $this->assertNotEmpty($result);
        $field = $result['_description_'];
        $this->assertInstanceOf(Field::class, $field);
        $this->assertEquals(1, $field->id);

        unset($page->fields);

        // 2024-01-03, AVS: isset для осознаваемых переменных с 2023-01-26 всегда true (иначе проблемы с обращением)
        $this->assertTrue(isset($page->fields));
    }


    /**
     * Тест получения, удаления и проверки дочерних сущностей
     */
    public function testGetUnsetIssetChildren()
    {
        $page = new Page(3);

        $this->assertFalse(isset($page->children));

        $result = $page->children;

        $this->assertTrue(isset($page->children));
        $this->assertTrue(is_array($result));
        $this->assertCount(3, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(4, $result[0]->id);
        $this->assertEquals(5, $result[1]->id);
        $this->assertEquals(6, $result[2]->id);

        unset($page->children);

        $this->assertFalse(isset($page->children));
    }


    /**
     * Тест получения, удаления и проверки родительских сущностей
     */
    public function testGetUnsetIssetParents()
    {
        $page = new Page(18);

        $this->assertFalse(isset($page->parents));

        $result = $page->parents;

        $this->assertTrue(isset($page->parents));
        $this->assertTrue(is_array($result));
        $this->assertCount(4, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(1, $result[0]->id);
        $this->assertEquals(15, $result[1]->id);
        $this->assertEquals(16, $result[2]->id);
        $this->assertEquals(17, $result[3]->id);

        unset($page->parents);

        $this->assertFalse(isset($page->parents));
    }


    /**
     * Тест установки, получения, удаления и проверки мета-данных
     */
    public function testGetSetUnsetIssetMeta()
    {
        $page = new Page(3);

        $this->assertFalse(isset($page->abc));

        $page->abc = 123;

        $this->assertTrue(isset($page->abc));
        $this->assertEquals(123, $page->abc);

        unset($page->abc);

        $this->assertFalse(isset($page->abc));
    }


    /**
     * Тест установки, получения, удаления и проверки по псевдониму
     */
    public function testGetSetUnsetIssetAlias()
    {
        $page = new PageWithAlias(3);

        $this->assertTrue(isset($page->title));
        $this->assertEquals('Услуги', $page->name);
        $this->assertEquals('Услуги', $page->title);

        $page->title = 'Услуги компании';

        $this->assertTrue(isset($page->title));
        $this->assertEquals('Услуги компании', $page->name);
        $this->assertEquals('Услуги компании', $page->title);

        unset($page->title);

        $this->assertEquals('Услуги', $page->name);
        $this->assertEquals('Услуги', $page->title);
    }


    /**
     * Тест клонирования
     */
    public function testClone()
    {
        $page = new Page(3);
        $result = clone $page;

        $this->assertEmpty($result->id);
        $this->assertEquals('Услуги', $result->name);

        unset($result->name);

        $this->assertEmpty($result->name);
    }


    /**
     * Тест глубокого клонирования
     */
    public function testDeepClone()
    {
        $page = new Page(3);
        $result = $page->deepClone();

        $this->assertEquals(3, $result->id);
        $this->assertEquals('Услуги', $result->name);

        unset($result->name);

        $this->assertEquals('Услуги', $result->name);
    }


    /**
     * Тест копирования массива
     */
    public function testGetArrayCopy()
    {
        $page = new Page(3);
        $result = $page->getArrayCopy();

        $this->assertTrue(is_array($result));
        $this->assertEquals(3, $result['id']);
        $this->assertEquals('Услуги', $result['name']);
    }


    /**
     * Тест установки, получения, удаления и проверки данных через интерфейс массива
     */
    public function testOffsetGetSetUnsetIsset()
    {
        $page = new Page(3);

        $this->assertEquals('Услуги', $page['name']);
        $this->assertFalse(isset($page['aaa']));

        $page['name'] = 'Услуги 123';
        $page['aaa'] = 123;

        $this->assertEquals('Услуги 123', $page['name']);
        $this->assertTrue(isset($page['aaa']));
        $this->assertEquals(123, $page['aaa']);

        unset($page['name']);

        $this->assertEquals('Услуги', $page['name']);
    }


    /**
     * Тест сохранения
     */
    public function testCommit()
    {
        $eventBefore = $eventAfter = [];
        EventProcessor::on(
            SOME::class . ':commit:beforecommit',
            Page::class,
            function ($page, $data) use (&$eventBefore) {
                $eventBefore['page'] = $page;
                $eventBefore['data'] = $data;
            }
        );
        EventProcessor::on(
            SOME::class . ':commit:commit',
            Page::class,
            function ($page, $data) use (&$eventAfter) {
                $eventAfter['page'] = $page;
                $eventAfter['data'] = $data;
            }
        );

        $page = new Page(3);
        $subPage = new Page(4);

        $this->assertEquals('Услуги', $page->name);
        $this->assertEquals('services', $page->urn);
        $this->assertEquals(1, $page->vis);
        $this->assertEquals(1, $subPage->pvis);
        $this->assertEquals('/services/service1/', $subPage->cache_url);
        $page->name = 'Услуги 123';
        $page->vis = 0;
        $page->urn = 'services123';
        $page->commit();

        $page = new Page(3);
        $subPage = new Page(4);

        $this->assertInstanceOf(Page::class, $eventBefore['page']);
        $this->assertFalse($eventBefore['data']['new']);
        $this->assertInstanceOf(Page::class, $eventAfter['page']);
        $this->assertFalse($eventAfter['data']['new']);
        $this->assertEquals('Услуги 123', $page->name);
        $this->assertEquals('services123', $page->urn);
        $this->assertEquals(0, $page->vis);
        $this->assertEquals(0, $subPage->pvis);
        $this->assertEquals('/services123/service1/', $subPage->cache_url);

        $eventBefore = $eventAfter = [];

        $page->name = 'Услуги';
        $page->vis = 1;
        $page->urn = 'services';
        $page->commit();

        $page = new Page(3);
        $subPage = new Page(4);

        $this->assertInstanceOf(Page::class, $eventBefore['page']);
        $this->assertFalse($eventBefore['data']['new']);
        $this->assertInstanceOf(Page::class, $eventAfter['page']);
        $this->assertFalse($eventAfter['data']['new']);
        $this->assertEquals('Услуги', $page->name);
        $this->assertEquals('services', $page->urn);
        $this->assertEquals(1, $page->vis);
        $this->assertEquals(1, $subPage->pvis);
        $this->assertEquals('/services/service1/', $subPage->cache_url);
    }


    /**
     * Тест коммита с новым объектом
     */
    public function testCommitWithNew()
    {
        $a = new Redirect();
        $a->commit();

        $b = new Redirect();
        $b->commit();

        $this->assertEquals($a->id + 1, $b->id);
        $this->assertEquals($a->priority + 1, $b->priority);

        Redirect::delete($a);
        Redirect::delete($b);
    }


    /**
     * Тест коммита без автоинкрементного поля
     */
    public function testCommitWithoutAI()
    {
        $sqlQuery = "CREATE TEMPORARY TABLE IF NOT EXISTS tmp_entity (
                         id INT UNSIGNED NOT NULL DEFAULT 0,
                         name VARCHAR(255) NOT NULL DEFAULT '',

                         PRIMARY KEY (id)
                     );";
        SOME::_SQL()->query($sqlQuery);
        $a = new EntityWithoutPrimary(['name' => 'aaa']);
        $a->commit();
        $b = new EntityWithoutPrimary(['name' => 'bbb']);
        $b->commit();

        $this->assertEquals(1, $a->id);
        $this->assertEquals(2, $b->id);

        $sqlQuery = "TRUNCATE TABLE tmp_entity";
        SOME::_SQL()->query($sqlQuery);
    }


    /**
     * Тест отката
     */
    public function testRollback()
    {
        $page = new Page(3);

        $this->assertEquals('Услуги', $page->name);

        $page->name = 'Услуги 123';

        $this->assertEquals('Услуги 123', $page->name);

        $page->rollback();

        $this->assertEquals('Услуги', $page->name);
    }


    /**
     * Тест перезагрузки
     */
    public function testReload()
    {
        $page = new Page();
        $page->id = 3;

        $this->assertEmpty($page->name);

        $page->name = 'Услуги 123';

        $this->assertEquals('Услуги 123', $page->name);

        $page->reload();

        $this->assertEquals('Услуги', $page->name);
    }


    /**
     * Проверка получения дочерних элементов
     */
    public function testChildren()
    {
        $page = new Page(3);

        $result = $page->children('children');

        $this->assertTrue(is_array($result));
        $this->assertCount(3, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(4, $result[0]->id);
        $this->assertEquals(5, $result[1]->id);
        $this->assertEquals(6, $result[2]->id);
    }


    /**
     * Проверка получения дочерних элементов (случай с корневым элементом)
     */
    public function testChildrenWithRoot()
    {
        $page = new Page();

        $result = $page->children('children');

        $this->assertTrue(is_array($result));
        $this->assertCount(1, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(1, $result[0]->id);
    }


    /**
     * Проверка получения дочерних элементов
     * случай с дополнительной SQL-инструкцией и сортировкой
     */
    public function testChildrenWithAdditionalParams()
    {
        $page = new Page(15);

        $result = $page->children(
            'children',
            "id != 24",
            "ORDER BY id DESC",
            2
        );

        $this->assertTrue(is_array($result));
        $this->assertCount(5, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(23, $result[0]->id);
        $this->assertEquals(1, $result[0]->__level);
        $this->assertEquals(16, $result[1]->id);
        $this->assertEquals(1, $result[1]->__level);
        $this->assertEquals(22, $result[2]->id);
        $this->assertEquals(2, $result[2]->__level);
        $this->assertEquals(21, $result[3]->id);
        $this->assertEquals(2, $result[3]->__level);
        $this->assertEquals(17, $result[4]->id);
        $this->assertEquals(2, $result[4]->__level);
    }


    /**
     * Проверка получения дочерних элементов
     * случай с некорректной ссылкой для рекурсивного доступа
     */
    public function testChildrenWithInvalidRef()
    {
        $page = new Page(15);

        $result = $page->children('access', "", "", 2);

        $this->assertFalse($result);
    }


    /**
     * Проверка получения родительских элементов
     */
    public function testParents()
    {
        $page = new Page(18);

        $result = $page->parents('parents');

        $this->assertTrue(is_array($result));
        $this->assertCount(4, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(1, $result[0]->id);
        $this->assertEquals(15, $result[1]->id);
        $this->assertEquals(16, $result[2]->id);
        $this->assertEquals(17, $result[3]->id);
    }


    /**
     * Проверка получения родительских элементов
     * случай с некорректной ссылкой для рекурсивного доступа
     */
    public function testParentsWithInvalidRef()
    {
        $page = new Page(18);

        $result = $page->parents('author');

        $this->assertFalse($result);
    }


    /**
     * Тест перемещения по порядку
     */
    public function testReorder()
    {
        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);

        $priority1 = $page1->priority;
        $priority2 = $page2->priority;
        $priority3 = $page3->priority;

        $this->assertLessThan($page2->priority, $page1->priority);
        $this->assertLessThan($page3->priority, $page2->priority);

        $page3->reorder(-2, null, "priority");

        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);

        $this->assertLessThan($page1->priority, $page3->priority);
        $this->assertLessThan($page2->priority, $page1->priority);

        $page3->reorder(1, "");

        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);

        $this->assertLessThan($page3->priority, $page1->priority);
        $this->assertLessThan($page2->priority, $page3->priority);

        $page3->reorder(1, "", "priority");

        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);

        $this->assertLessThan($page2->priority, $page1->priority);
        $this->assertLessThan($page3->priority, $page2->priority);
    }


    /**
     * Тест перемещения по порядку (случай с дополнительным условием)
     */
    public function testReorderWithSQLBindings()
    {
        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);

        $priority1 = $page1->priority;
        $priority2 = $page2->priority;
        $priority3 = $page3->priority;

        $this->assertLessThan($page2->priority, $page1->priority);
        $this->assertLessThan($page3->priority, $page2->priority);

        $page3->reorder(-1, ["id != :idVal", ['idVal' => 5]]);

        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);

        $this->assertEquals($priority1, $page3->priority);
        $this->assertEquals($priority2, $page2->priority);
        $this->assertEquals($priority3, $page1->priority);

        $page3->reorder(1, ["id != :idVal", ['idVal' => 5]]);

        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);

        $this->assertEquals($priority1, $page1->priority);
        $this->assertEquals($priority2, $page2->priority);
        $this->assertEquals($priority3, $page3->priority);
    }


    /**
     * Тест перемещения по порядку (случай с отсутствием порядка по умолчанию)
     */
    public function testReorderWithoutDefaultOrderBy()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('You have to define property name (argument #2)');

        $sqlQuery = "CREATE TEMPORARY TABLE IF NOT EXISTS tmp_entity (
                         id INT UNSIGNED NOT NULL DEFAULT 0,
                         name VARCHAR(255) NOT NULL DEFAULT '',

                         PRIMARY KEY (id)
                     );";
        SOME::_SQL()->query($sqlQuery);
        $a = new EntityWithoutPrimary();
        $a->commit();
        $a->reorder(1);

        $sqlQuery = "TRUNCATE TABLE tmp_entity";
        SOME::_SQL()->query($sqlQuery);
    }


    /**
     * Тест перемещения по порядку (случай с отсутствием шага)
     */
    public function testReorderWithoutStep()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('You have to define step');
        $page1 = new Page(4);
        $page1->reorder();
    }


    // /**
    //  * Тест инициализации
    //  * @todo
    //  */
    // public function testInit()
    // {
    // }


    /**
     * Тест удаления
     */
    public function testDelete()
    {
        $page = new Page(17);
        $page2 = new Page(18);

        $this->assertEquals(17, $page->id);
        $this->assertEquals(18, $page2->id);

        Page::delete($page);

        $page = new Page(17);
        $page2 = new Page(18);

        $this->assertEmpty($page->id);
        $this->assertEmpty($page2->id);
    }


    /**
     * Тести импорта по характеристике
     */
    public function testImportBy()
    {
        $result = Snippet::importBy('urn', 'head');

        $this->assertEquals(12, $result->id);
    }


    /**
     * Тести импорта по характеристике (случай с нерегулярным полем)
     */
    public function testImportByWithoutRegularField()
    {
        $result = Snippet::importBy('children', 2);

        $this->assertNull($result);
    }


    /**
     * Тест получения массива объектов
     */
    public function testGetSet()
    {
        $pages = new Pages(2, 2);
        $result = Page::getSet([
            'where' => "id IN (3, 7, 8, 9, 10, 11)",
            'orderBy' => "id DESC"
        ], $pages);

        $this->assertTrue(is_array($result));
        $this->assertCount(2, $result);
        $this->assertEquals(9, $result[0]->id);
        $this->assertEquals(8, $result[1]->id);
        $this->assertEquals(6, $pages->count);
    }


    /**
     * Тест получения массива дочерних объектов
     */
    public function testGetChildSet()
    {
        $page = new Page(3);
        $result = $page->getChildSet('children', [
            'where' => "id IN (4, 6)",
            'orderBy' => "id DESC"
        ]);

        $this->assertTrue(is_array($result));
        $this->assertCount(2, $result);
        $this->assertEquals(6, $result[0]->id);
        $this->assertEquals(4, $result[1]->id);
    }


    /**
     * Тест получения id по функции __id()
     */
    public function testIdFunction()
    {
        $page = new Page(3);

        $result = $page->__id();

        $this->assertEquals(3, $result);
    }


    /**
     * Тест получения массива объектов по SQL-запросу
     */
    public function testGetSQLSet()
    {
        $pages = new Pages(2, 2);
        $sqlQuery = "SELECT SQL_CALC_FOUND_ROWS *
                       FROM cms_pages
                      WHERE id IN (?, ?, ?, ?, ?, ?)
                   ORDER BY id DESC";
        $sqlBind = [3, 7, 8, 9, 10, 11];
        $result = Page::getSQLSet([$sqlQuery, $sqlBind], $pages);

        $this->assertTrue(is_array($result));
        $this->assertCount(2, $result);
        $this->assertEquals(9, $result[0]->id);
        $this->assertEquals(8, $result[1]->id);
        $this->assertEquals(6, $pages->count);
    }


    /**
     * Тест получения объекта по SQL-запросу
     */
    public function testGetSQLObject()
    {
        $sqlQuery = "SELECT * FROM cms_pages WHERE id = ?";
        $result = Page::getSQLObject([$sqlQuery, 3]);

        $this->assertInstanceOf(Page::class, $result);
        $this->assertEquals(3, $result->id);
    }


    /**
     * Тест получения массива объектов по массиву данных
     */
    public function testGetArraySet()
    {
        $pages = new Pages(2, 2);
        $arr = [
            ['id' => 1, 'name' => 'test1'],
            ['id' => 2, 'name' => 'test2'],
            ['id' => 3, 'name' => 'test3'],
            ['id' => 4, 'name' => 'test4'],
            ['id' => 5, 'name' => 'test5'],
            ['id' => 6, 'name' => 'test6'],
        ];
        $result = Page::getArraySet($arr, $pages);

        $this->assertTrue(is_array($result));
        $this->assertCount(2, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(3, $result[0]->id);
        $this->assertEquals('test3', $result[0]->name);
        $this->assertEquals(4, $result[1]->id);
        $this->assertEquals('test4', $result[1]->name);
        $this->assertEquals(6, $pages->count);
    }


    /**
     * Тест получения названия таблицы
     */
    public function testGetTablename()
    {
        $result = Page::_tablename();

        $this->assertEquals('cms_pages', $result);
    }


    /**
     * Тест получения наименования поля id
     */
    public function testGetIdN()
    {
        $result = Page::_idN();

        $this->assertEquals('id', $result);
    }


    /**
     * Тест получения ссылок
     */
    public function testGetReferences()
    {
        $result = Page::_references('parent');

        $this->assertEquals([
            'FK' => 'pid',
            'classname' => Page::class,
            'cascade' => true
        ], $result);
    }


    /**
     * Тест получения дочерних ссылок
     */
    public function testGetChildren()
    {
        $result = Page::_children('children');

        $this->assertEquals([
            'classname' => Page::class,
            'FK' => 'pid'
        ], $result);
    }


    /**
     * Тест получения родительских ссылок
     */
    public function testGetParents()
    {
        $result = Page::_parents('parents');

        $this->assertEquals('parent', $result);
    }


    /**
     * Тест получения связок
     */
    public function testGetLinks()
    {
        $result = Page::_links('blocks');

        $this->assertEquals([
            'tablename' => 'cms_blocks_pages_assoc',
            'field_from' => 'page_id',
            'field_to' => 'block_id',
            'classname' => Block::class
        ], $result);
    }


    /**
     * Тест получения кэшей
     */
    public function testGetCaches()
    {
        $result = Page::_caches('pvis');

        $this->assertEquals([
            'affected' => ['parent'],
            'sql' => "IF(parent.id, (parent.vis AND parent.pvis), 1)"
        ], $result);
    }


    /**
     * Тест получения осознаваемых переменных
     */
    public function testGetCognizableVars()
    {
        $result = Page::_cognizableVars();

        $this->assertTrue(is_array($result));
        $this->assertContains('Domain', $result);
    }


    /**
     * Тест получения префикса БД
     */
    public function testGetDbPrefix()
    {
        $result = Page::_dbprefix();

        $this->assertEquals('', $result);
    }


    /**
     * Тест получения сортировки по умолчанию
     */
    public function testGetDefaultOrderBy()
    {
        $result = Page::_defaultOrderBy();

        $this->assertEquals('priority', $result);
    }


    /**
     * Тест получения авто-инкремента по порядку отображения
     */
    public function testGetAIPriority()
    {
        $result = Redirect::_aiPriority();

        $this->assertTrue($result);
    }


    /**
     * Тест получения базы данных
     */
    public function testGetSQL()
    {
        $result = Redirect::_SQL();

        $this->assertInstanceof(DB::class, $result);
    }


    /**
     * Тест получения маркера каскадного обновления сущности
     */
    public function testGetObjectCascadeUpdate()
    {
        $result = Page::_objectCascadeUpdate();

        $this->assertFalse($result);
    }


    /**
     * Тест получения маркера каскадного удаления сущности
     */
    public function testGetObjectCascadeDelete()
    {
        $result = Page::_objectCascadeDelete();

        $this->assertTrue($result);
    }


    /**
     * Тест получения данных по классам
     */
    public function testGetClasses()
    {
        $result = Page::_classes();

        $this->assertEquals('id', $result[Page::class]['PRI']);
        $this->assertTrue($result[Page::class]['AI']);
    }


    /**
     * Тест получения ссылки по внешнему ключу
     */
    public function testGetReferenceByFK()
    {
        $result = Page::getReferenceByFK('pid');

        $this->assertEquals('parent', $result);
    }


    /**
     * Тест упорядочения сущностей
     */
    public function testPriorityRepair()
    {
        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);

        $page1->priority = 111;
        $page2->priority = 222;
        $page3->priority = 333;
        $page1->commit();
        $page2->commit();
        $page3->commit();

        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);
        $this->assertEquals(111, $page1->priority);
        $this->assertEquals(222, $page2->priority);
        $this->assertEquals(333, $page3->priority);

        Page::priorityRepair();

        $page1 = new Page(4);
        $page2 = new Page(5);
        $page3 = new Page(6);
        $this->assertNotEquals(111, $page1->priority);
        $this->assertNotEquals(222, $page2->priority);
        $this->assertNotEquals(333, $page3->priority);

        $this->assertLessThan($page2->priority, $page1->priority);
        $this->assertLessThan($page3->priority, $page2->priority);
    }


    /**
     * Тест "доверия" (принятия изменений)
     */
    public function testTrust()
    {
        $page = new Page(3);

        $page->name = 'Услуги 123';

        $this->assertEquals('Услуги 123', $page->name);

        unset($page->name);

        $this->assertEquals('Услуги', $page->name);

        $page->name = 'Услуги 123';
        $page->trust();

        unset($page->name);

        $this->assertEquals('Услуги 123', $page->name);
    }
}
