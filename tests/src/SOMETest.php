<?php
/**
 * Файл теста сущности SOME
 */
namespace SOME;

use RAAS\CMS\Block;
use RAAS\CMS\Field;
use RAAS\CMS\Page;
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

        $this->assertFalse(isset($page->fields));

        $result = $page->fields;

        $this->assertTrue(isset($page->fields));
        $this->assertTrue(is_array($result));
        $this->assertNotEmpty($result);
        $field = $result['_description_'];
        $this->assertInstanceOf(Field::class, $field);
        $this->assertEquals(1, $field->id);

        unset($page->fields);

        $this->assertFalse(isset($page->fields));
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
}
