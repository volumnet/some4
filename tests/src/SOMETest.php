<?php
/**
 * Файл теста сущности SOME
 */
namespace SOME;

use PHPUnit\Framework\Attributes\CoversClass;
use RAAS\Application;
use RAAS\CMS\Block;
use RAAS\CMS\Field;
use RAAS\CMS\Form;
use RAAS\CMS\Form_Field;
use RAAS\CMS\Material;
use RAAS\CMS\Material_Field;
use RAAS\CMS\Material_Type;
use RAAS\CMS\Page;
use RAAS\CMS\PageWithAlias;
use RAAS\CMS\PageWithCascadeUpdate;
use RAAS\CMS\PageWithoutCascadeDelete;
use RAAS\CMS\PageWithoutCascadeUpdate;
use RAAS\CMS\Redirect;
use RAAS\CMS\Snippet;
use RAAS\CMS\User;
use RAAS\CMS\User_Field;
use RAAS\CMS\Shop\Block_Cart;
use RAAS\CMS\Shop\Cart_Type;

/**
 * Класс теста сущности SOME
 */
#[CoversClass(SOME::class)]
class SOMETest extends BaseTest
{
    public static $tables = [
        'attachments',
        'cms_access',
        'cms_access_blocks_cache',
        'cms_access_materials_cache',
        'cms_access_pages_cache',
        'cms_blocks',
        'cms_blocks_form',
        'cms_blocks_html',
        'cms_blocks_material',
        'cms_blocks_material_filter',
        'cms_blocks_material_sort',
        'cms_blocks_pages_assoc',
        'cms_blocks_search_pages_assoc',
        'cms_data',
        'cms_fieldgroups',
        'cms_fields',
        'cms_fields_form_vis',
        'cms_forms',
        'cms_groups',
        'cms_material_types',
        'cms_material_types_affected_pages_for_materials_cache',
        'cms_material_types_affected_pages_for_self_cache',
        'cms_materials',
        'cms_materials_affected_pages_cache',
        'cms_materials_pages_assoc',
        'cms_pages',
        'cms_redirects',
        'cms_shop_blocks_cart',
        'cms_shop_blocks_yml_pages_assoc',
        'cms_shop_cart_types',
        'cms_shop_cart_types_material_types_assoc',
        'cms_snippet_folders',
        'cms_snippets',
        'cms_templates',
        'cms_users',
        'cms_users_blocks_register',
        'cms_users_groups_assoc',
        'cms_users_social',
        'registry',
    ];


    /**
     * Проверка ошибки от 2024-05-02 11:18
     * При удалении формы №123 удаляются поля типа материалов №123
     */
    public function testError202405021118()
    {
        $form = new Form(['id' => 123, 'name' => 'Тестовая форма']);
        $form->commit();
        $materialType = new Material_Type(['id' => 123, 'name' => 'Тестовый тип материалов']);
        $materialType->commit();
        $formField = new Form_Field(['classname' => Form::class, 'pid' => 123, 'urn' => 'testformfield']);
        $formField->commit();
        $formFieldId = $formField->id;
        $materialField = new Material_Field(['classname' => Material_Type::class, 'pid' => 123, 'urn' => 'testmaterialfield']);
        $materialField->commit();
        $materialFieldId = $materialField->id;

        Form::delete($form);
        $formField = new Form_Field($formFieldId);
        $materialField = new Material_Field($materialFieldId);

        $this->assertEmpty($formField->id);
        $this->assertEquals($materialFieldId, $materialField->id);
        $this->assertEquals(Material_Type::class, $materialField->classname);
        $this->assertEquals(123, $materialField->pid);

        Material_Type::delete($materialType);

        $materialField = new Material_Field($materialFieldId);
        $this->assertEmpty($materialField->id);
    }


    /**
     * Проверка ошибки от 2024-04-19, 14:41
     * При удалении пользователя обнуляется колонка pid поля формы
     */
    public function testError202404191441()
    {
        User_Field::init();
        $user = new User();
        $user->commit();
        User::delete($user);

        $field = new Field(72);

        $this->assertEquals(72, $field->id);
        $this->assertEquals(Form::class, $field->classname);
        $this->assertEquals(3, $field->pid);
    }


    /**
     * Проверка ошибки от 2024-04-19 09:24
     * При удалении сниппета, связанного по второй таблице у блока возникает ошибка типа
     * PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column '__SOME__.epay_interface_id' in 'where clause'
     * D:\web\home\libs\some4\src\db.class.php:263
     * D:\web\home\libs\some4\src\db.class.php:382
     * D:\web\home\libs\some4\src\some.class.php:2300
     * D:\web\home\libs\some4\src\some.class.php:1443
     * D:\web\home\libs\some4\src\some.class.php:1413
     * D:\web\home\libs\raas.cms\classes\semantic\snippet.class.php:303
     * D:\web\home\libs\raas.cms.shop\tests\src\interfaces\PriceloaderInterfaceTest.php:781
     */
    public function testError202404190924()
    {
        Block_Cart::init();
        $snippet = new Snippet(['urn' => 'testpreprocessor']);
        $snippet->commit();
        $snippetId = $snippet->id;
        $block = new Block_Cart(['epay_interface_id' => $snippetId, 'cats' => 1]);
        $block->commit();
        $blockId = $block->id;
        Snippet::delete($snippet);
        $block = Block::spawn($blockId);

        // Поскольку epay_interface_id находится во вторичной таблице, оно не меняется
        // Такие случаи нужно обрабатывать вручную
        $this->assertEquals($snippetId, $block->epay_interface_id);

        Block::delete($block);
    }


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
     * Тест получения, удаления и проверки связок - получение ID#
     */
    public function testGetLinksIds()
    {
        $page = new Page(24);

        $result = $page->materials_ids;

        $this->assertIsArray($result);
        $this->assertCount(16, $result);
        $this->assertContains(10, $result);
        $this->assertContains(15, $result);
        $this->assertContains(19, $result);
        $this->assertContains(20, $result);
        $this->assertContains(25, $result);
    }


    /**
     * Тест получения, удаления и проверки связок - случай с отсутствием явного сопряженного класса
     */
    public function testGetLinksWithNoExplicitClass()
    {
        $cart = new Cart_Type(1);

        $result = $cart->material_types_ids;

        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertContains(4, $result);
    }


    /**
     * Тест получения, удаления и проверки связок - случай с явно заданным порядком
     */
    public function testGetLinksWithOrder()
    {
        $page = new PageWithAlias(24);

        $result = $page->materials_ids;

        $this->assertIsArray($result);
        $this->assertCount(16, $result);
        $this->assertEquals(10, $result[0]);
        $this->assertEquals(25, $result[15]);
    }


    /**
     * Тест получения, удаления и проверки связок - случай отсутствием класса
     */
    public function testGetLinksWithoutClass()
    {
        $user = new User(1);

        $result = $user->social;

        $this->assertEquals(['https://facebook.com/test', 'https://vk.com/test'], $result);
    }


    /**
     * Тест получения, удаления и проверки связок - случай отсутствием класса и наличием порядка
     */
    public function testGetLinksWithoutClassWithOrder()
    {
        $page = new PageWithAlias(24);

        $result = $page->materialsIds;

        $this->assertIsArray($result);
        $this->assertCount(16, $result);
        $this->assertEquals(25, $result[0]);
        $this->assertEquals(10, $result[15]);
    }


    /**
     * Тест получения, удаления и проверки связок - случай с отсутствием field_to
     */
    public function testGetLinksWithoutFieldTo()
    {
        $page = new PageWithAlias(24);

        $result = $page->materialsData;

        $this->assertIsArray($result);
        $this->assertCount(16, $result);
        $this->assertEquals(['id' => 25, 'pid' => 24], $result[0]);
        $this->assertEquals(['id' => 10, 'pid' => 24], $result[15]);
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

        $page->fields = ['aaa'];

        $this->assertEquals(['aaa'], $page->fields);

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
     * Тест получения ID# всех дочерних элементов
     */
    public function testGetIssetAllChildrenIds()
    {
        $page = new Page(15);

        $this->assertFalse(isset($page->all_children_ids));

        $result = $page->all_children_ids;

        $this->assertTrue(isset($page->all_children_ids));
        $this->assertIsArray($result);
        $this->assertEquals([16, 23, 24, 17, 21, 22, 18, 19, 20], $result);
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
     * Тест получения ID# всех родительских элементов
     */
    public function testGetIssetParentsIds()
    {
        $page = new Page(21);

        $this->assertFalse(isset($page->parents_ids));

        $result = $page->parents_ids;

        $this->assertTrue(isset($page->parents_ids));
        $this->assertIsArray($result);
        $this->assertEquals([1, 15, 16], $result);
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
     * Тест получения всех свойств
     */
    public function testGetProperties()
    {
        $page = new Page(21);

        $result = $page->properties;

        $this->assertEquals('Категория 12', $result['name']);
    }


    /**
     * Тест получения неизвестного свойства
     */
    public function testGetUnknown()
    {
        $page = new Page(21);

        $result = $page->aaa;

        $this->assertNull($result);
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
     * Тест коммита с задействованными кэшами
     */
    public function testCommitWithAffectedCache()
    {
        $page = new Page(4);

        $page->pid = 1;
        $page->commit();

        $this->assertEquals('/service1/', $page->url);

        $page->pid = 3;
        $page->commit();

        $this->assertEquals('/services/service1/', $page->url);
    }


    /**
     * Тест коммита с задействованными кэшами
     */
    public function testCommitWithDefaultCache()
    {
        $parent = new Page(3);
        $parent->vis = 0;
        $parent->commit();
        $page = new Page(4);

        $this->assertEquals(0, $page->pvis);

        $page->pid = 0;
        $page->commit();

        $this->assertEquals(1, $page->pvis);

        $parent->vis = 1;
        $parent->commit();
        $page->pid = 3;
        $page->commit();

        $this->assertEquals(1, $page->pvis);
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
     * Проверка получения родительских элементов - случай с несуществующей ссылкой
     */
    public function testParentsWithNoRef()
    {
        $page = new PageWithAlias(18);

        $result = $page->parents('aaa');

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


    /**
     * Тест инициализации
     */
    public function testInit()
    {
        $oldDb = SOME::_SQL();
        $db = clone $oldDb;
        $this->assertNotSame($db, $oldDb);

        SOME::init($db, 'aaa');

        $this->assertSame($db, SOME::_SQL());
        $this->assertEquals('aaa', SOME::_dbprefix());

        SOME::init($oldDb, '');
    }


    public function testInitWithOverloadedParams()
    {
        $class = new class extends Page {
            protected static $references = [];

            protected static $children = [];

            protected static $parents = [];

            protected static $links = [];

            protected static $caches = [];

            protected static $cognizableVars = [];

            protected static $dbprefix = 'aaa';

            protected static $defaultOrderBy = "";

            protected static $aiPriority = false;

            protected static $objectCascadeUpdate = false;

            protected static $objectCascadeDelete = false;

            public static function _references(?string $key = null): array
            {
                return [
                    'parent' => [
                        'FK' => 'pid',
                        'classname' => Page::class,
                        'cascade' => true
                    ],
                ];
            }

            public static function _children(?string $key = null): array
            {
                return [
                    'children' => [
                        'classname' => Page::class,
                        'FK' => 'pid'
                    ],
                ];
            }

            public static function _parents(?string $key = null)
            {
                return [
                    'myParents' => 'parent'
                ];
            }

            public static function _links(?string $key = null): array
            {
                return [
                    'materials' => [
                        'tablename' => 'cms_materials_pages_assoc',
                        'field_from' => 'pid',
                        'field_to' => 'id',
                        'classname' => Material::class
                    ],
                ];
            }

            public static function _caches(?string $key = null): array
            {
                return [
                    'pvis' => [
                        'affected' => ['parent'],
                        'sql' => "IF(parent.id, (parent.vis AND parent.pvis), 1)"
                    ],
                ];
            }

            public static function _cognizableVars(): array
            {
                return [
                    'blocksOrdered',
                ];
            }

            public static function _dbprefix(): string
            {
                return '';
            }

            public static function _defaultOrderBy(): string
            {
                return "id";
            }

            public static function _aiPriority(): bool
            {
                return true;
            }

            public static function _objectCascadeUpdate(): bool
            {
                return true;
            }

            public static function _objectCascadeDelete(): bool
            {
                return true;
            }

        };

        $result = $class::init();

        $this->assertIsArray($result);
    }


    /**
     * Тест метода init() - случай с битой базой данных
     */
    public function testInitWithInvalidDatabase()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('no active database');

        $db = new DB('mysql:notexistinghost;notexistingdatabase');
        $class = new class extends Page {
            protected static $SQL;
        };
    }


    /**
     * Тест метода init() - случай с пустой таблицей
     */
    public function testInitWithEmptyTablename()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('no table name');

        $class = new class extends SOME {
        };
    }


    /**
     * Тест метода init() - случай с некорректной ссылкой (не массив)
     */
    public function testInitWithInvalidReference()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('reference');
        $this->expectExceptionMessage('must be an');

        $class = new class extends SOME {
            public static $tablename = 'cms_pages';

            public static $references = [
                'aaa' => 'bbb'
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной ссылкой (нет внешнего ключа)
     */
    public function testInitWithInvalidReferenceFK()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('reference');
        $this->expectExceptionMessage('must have foreign key');

        $class = new class extends SOME {
            public static $tablename = 'cms_pages';

            public static $references = [
                'aaa' => []
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной ссылкой (нет указателя класса)
     */
    public function testInitWithInvalidReferenceClassname()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('reference');
        $this->expectExceptionMessage('must have class name');

        $class = new class extends SOME {
            public static $tablename = 'cms_pages';

            public static $references = [
                'aaa' => [
                    'FK' => 'author_id',
                ]
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной дочерней ссылкой (не массив)
     */
    public function testInitWithInvalidChild()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('child');
        $this->expectExceptionMessage('must be an');

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $children = [
                'aaa' => 'bbb'
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной дочерней ссылкой (нет внешнего ключа)
     */
    public function testInitWithInvalidChildFK()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('child');
        $this->expectExceptionMessage('must have foreign key');

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $children = [
                'aaa' => []
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной дочерней ссылкой (нет указателя класса)
     */
    public function testInitWithInvalidChildClassname()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('child');
        $this->expectExceptionMessage('must have class name');

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $children = [
                'aaa' => [
                    'FK' => 'pid',
                ]
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной дочерней ссылкой (класс не ссылается на данный)
     */
    public function testInitWithInvalidChildReference()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('is not its child');

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $children = [
                'aaa' => [
                    'FK' => 'pid',
                    'classname' => Snippet::class
                ]
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной родительской ссылкой (не существует)
     */
    public function testInitWithInvalidParent()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('used as parent');
        $this->expectExceptionMessage("doesn't exist");

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $parents = [
                'aaa' => 'bbb'
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной родительской ссылкой (не рекурсивна)
     */
    public function testInitWithNoRecursiveParent()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('used as parent');
        $this->expectExceptionMessage('must be recursive');

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $parents = [
                'aaa' => 'author'
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной связкой (не массив)
     */
    public function testInitWithInvalidLink()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('link');
        $this->expectExceptionMessage('must be an');

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $links = [
                'aaa' => 'bbb'
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной связкой (не указана таблица)
     */
    public function testInitWithInvalidLinkTablename()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('link');
        $this->expectExceptionMessage('must have table name');

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $links = [
                'aaa' => []
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректной связкой (не указано исходное поле)
     */
    public function testInitWithInvalidLinkFieldFrom()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('link');
        $this->expectExceptionMessage('must have field_from parameter');

        $class = new class extends Page {
            public static $tablename = 'cms_pages';

            public static $links = [
                'aaa' => [
                    'tablename' => 'cms_materials_pages_assoc'
                ]
            ];
        };
    }


    /**
     * Тест метода init() - случай с некорректным первичным ключом
     */
    public function testInitWithNoPrimaryKey()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('no primary key found');

        $sqlQuery = "CREATE TEMPORARY TABLE tmp (name VARCHAR(255) NOT NULL DEFAULT '');";
        Application::i()->SQL->query($sqlQuery);

        $class = new class extends SOME {
            public static $tablename = 'tmp';
        };

        $result = $class::init();

        $sqlQuery = "DROP TABLE tmp;";
        Application::i()->SQL->query($sqlQuery);
    }


    /**
     * Тест метода init() - случай SQLite
     */
    public function testInitWithSQLite()
    {
        $oldDb = SOME::_SQL();
        $filename = static::getResourcesDir() . '/test.sqlite';
        $db = new DB('sqlite:' . $filename);
        SOME::init($db);

        $class = new class extends SOME {
            public static $tablename = 'test';
        };

        $result = $class::init($db);

        $this->assertEquals('test', $result['tablename']);
        $this->assertIsArray($result);
        $this->assertIsArray($result['fields']);
        $this->assertEquals('name', $result['fields']['name']);
        $this->assertEquals('id', $result['PRI']);
        $this->assertTrue($result['AI']);

        SOME::init($oldDb, '');
    }


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
     * Тест удаления - случай без каскадного удаления
     * для проверки ondelete и onupdate
     */
    public function testDeleteWithoutCascadeDelete()
    {
        $parent = new PageWithoutCascadeDelete(['name' => 'testParent']);
        $parent->commit();
        $parentId = $parent->id;

        $child = new PageWithoutCascadeDelete(['pid' => $parent->id, 'name' => 'testChild']);
        $child->commit();
        $childId = $child->id;

        $this->assertNotEmpty($parentId);
        $this->assertNotEmpty($childId);

        PageWithoutCascadeDelete::delete($parent);

        $child = new PageWithoutCascadeDelete($childId);

        $this->assertEmpty($child->id);
    }


    /**
     * Тест удаления - случай с каскадным обновлением
     * для проверки ondelete и onupdate
     */
    public function testDeleteWithCascadeUpdate()
    {
        $parent = new PageWithCascadeUpdate(['name' => 'testParent', 'urn' => 'testparent']);
        $parent->commit();
        $parentId = $parent->id;

        $child = new PageWithCascadeUpdate(['pid' => $parent->id, 'name' => 'testChild', 'urn' => 'testchild']);
        $child->commit();
        $childId = $child->id;

        $this->assertNotEmpty($parentId);
        $this->assertNotEmpty($childId);

        PageWithCascadeUpdate::delete($parent);

        $child = new PageWithCascadeUpdate($childId);

        $this->assertEquals(0, $child->pid);
        $this->assertEquals(1, $child->pvis);
        $this->assertEquals('/', $child->cache_url);

        PageWithCascadeUpdate::delete($child);
    }


    /**
     * Тест удаления - случай с некаскадным обновлением
     */
    public function testDeleteWithoutCascadeUpdate()
    {
        $parent = new PageWithoutCascadeUpdate(['name' => 'testParent', 'urn' => 'testparent']);
        $parent->commit();
        $parentId = $parent->id;

        $child = new PageWithoutCascadeUpdate(['pid' => $parent->id, 'name' => 'testChild', 'urn' => 'testchild']);
        $child->commit();
        $childId = $child->id;

        $this->assertNotEmpty($parentId);
        $this->assertNotEmpty($childId);

        PageWithoutCascadeUpdate::delete($parent);

        $child = new PageWithoutCascadeUpdate($childId);

        $this->assertEquals(0, $child->pid);
        $this->assertEquals(1, $child->pvis);
        $this->assertEquals('/', $child->cache_url);

        PageWithoutCascadeUpdate::delete($child);
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
     * Тест метода getSet() - случай без условий where
     */
    public function testGetSetWithoutWhere()
    {
        $result = Cart_Type::getSet([
            'orderBy' => "id ASC"
        ]);

        $this->assertTrue(is_array($result));
        $this->assertCount(2, $result);
        $this->assertEquals(1, $result[0]->id);
        $this->assertEquals(2, $result[1]->id);
    }


    /**
     * Тест метода getSet() - случай со ссылками
     */
    public function testGetSetWithReferences()
    {
        $result = Page::getSet([
            'where' => "parent.id = 3",
            'orderBy' => "Page.id ASC",
        ]);

        $this->assertIsArray($result);
        $this->assertCount(3, $result);
        $this->assertEquals(4, $result[0]->id);
        $this->assertEquals(5, $result[1]->id);
        $this->assertEquals(6, $result[2]->id);
    }


    /**
     * Тест метода getSet() - случай с дочерними сущностями
     */
    public function testGetSetWithChildren()
    {
        $result = Page::getSet([
            'where' => "children.id = 4",
            'orderBy' => "Page.id ASC",
        ]);

        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertEquals(3, $result[0]->id);
    }


    /**
     * Тест метода getSet() - случай со связками
     */
    public function testGetSetWithLinks()
    {
        $result = Page::getSet([
            'where' => "blocks.id = 19",
            'orderBy' => "Page.id ASC",
        ]);

        $this->assertIsArray($result);
        $this->assertCount(1, $result);
        $this->assertEquals(4, $result[0]->id);
    }


    /**
     * Тест метода getSet() - случай со связками без класса
     */
    public function testGetSetWithLinksWithoutClassname()
    {
        $result = PageWithAlias::getSet([
            'where' => [
                "materialsIds___LINK.id = 10",
                "PageWithAlias.id IN (23, 24)", // Ограничиваем этими, т.к. ранее было удаление страниц
            ],
            'orderBy' => "PageWithAlias.id ASC",
        ]);

        $this->assertIsArray($result);
        $this->assertCount(2, $result);
        $this->assertEquals(23, $result[0]->id);
        $this->assertEquals(24, $result[1]->id);
    }

    /**
     * Тест метода getSet() - случай с дополнительными полями
     */
    public function testGetSetWithAdditional()
    {
        $result = Page::getSet([
            'select' => ["Page.*", "COUNT(DISTINCT tMPA.id) AS c"],
            'from' => ["cms_materials_pages_assoc AS tMPA ON tMPA.pid = Page.id"],
            'where' => ["Page.id IN (24)", "tMPA.id IN (10, 11, 12)"],
            'groupBy' => "tMPA.pid",
            'orderBy' => "Page.id DESC"
        ]);

        $this->assertTrue(is_array($result));
        $this->assertCount(1, $result);
        $this->assertEquals(24, $result[0]->id);
        $this->assertEquals(3, $result[0]->c);
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
     * Тест получения массива дочерних объектов - случай с ассоциативной подстановкой
     */
    public function testGetChildSetWithBindAssoc()
    {
        $page = new Page(3);
        $result = $page->getChildSet('children', [
            'where' => [
                ["id = :pageId", ['pageId' => 4]]
            ],
            'orderBy' => "id DESC"
        ]);

        $this->assertTrue(is_array($result));
        $this->assertCount(1, $result);
        $this->assertEquals(4, $result[0]->id);
    }


    /**
     * Тест получения массива связок
     */
    public function testGetChildSetWithLinks()
    {
        $page = new Page(24);
        $result = $page->getChildSet('materials', [
            'where' => "Material.id IN (10, 11)",
            'orderBy' => "Material.id ASC"
        ]);

        $this->assertTrue(is_array($result));
        $this->assertCount(2, $result);
        $this->assertInstanceOf(Material::class, $result[0]);
        $this->assertEquals(10, $result[0]->id);
        $this->assertInstanceOf(Material::class, $result[1]);
        $this->assertEquals(11, $result[1]->id);
    }


    /**
     * Тест получения массива связок с ассоциативной подстановкой
     */
    public function testGetChildSetWithLinksAndBindAssoc()
    {
        $page = new Page(24);
        $result = $page->getChildSet('materials', [
            'where' => [
                ["Material.id IN (:materialId1, :materialId2)", ['materialId1' => 10, 'materialId2' => 11]],
            ],
            'orderBy' => "Material.id ASC"
        ]);

        $this->assertTrue(is_array($result));
        $this->assertCount(2, $result);
        $this->assertInstanceOf(Material::class, $result[0]);
        $this->assertEquals(10, $result[0]->id);
        $this->assertInstanceOf(Material::class, $result[1]);
        $this->assertEquals(11, $result[1]->id);
    }


    /**
     * Тест метода getChildSet() - случай с некорректным запросом
     */
    public function testGetChildSetWithInvalid()
    {
        $page = new Page(24);
        $result = $page->getChildSet('invalid', [
            'where' => [
                ["Material.id IN (:materialId1, :materialId2)", ['materialId1' => 10, 'materialId2' => 11]],
            ],
            'orderBy' => "Material.id ASC"
        ]);

        $this->assertNull($result);
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
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(9, $result[0]->id);
        $this->assertInstanceOf(Page::class, $result[1]);
        $this->assertEquals(8, $result[1]->id);
        $this->assertEquals(6, $pages->count);
    }


    /**
     * Тест метода getSQLSet() - случай с callable
     */
    public function testGetSQLSetWithCallable()
    {
        $sqlQuery = "SELECT *
                       FROM cms_pages
                      WHERE id IN (4, 5, 6)
                   ORDER BY id ASC";
        $result = SOME::getSQLSet($sqlQuery, null, function ($sqlRow) {
            return new Page($sqlRow);
        });

        $this->assertTrue(is_array($result));
        $this->assertCount(3, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(4, $result[0]->id);
        $this->assertInstanceOf(Page::class, $result[1]);
        $this->assertEquals(5, $result[1]->id);
        $this->assertInstanceOf(Page::class, $result[2]);
        $this->assertEquals(6, $result[2]->id);
    }


    /**
     * Тест метода getSQLSet() - случай с явным типом
     */
    public function testGetSQLSetWithType()
    {
        $sqlQuery = "SELECT *
                       FROM cms_pages
                      WHERE id IN (4, 5, 6)
                   ORDER BY id ASC";
        $result = SOME::getSQLSet($sqlQuery, null, Page::class);

        $this->assertTrue(is_array($result));
        $this->assertCount(3, $result);
        $this->assertInstanceOf(Page::class, $result[0]);
        $this->assertEquals(4, $result[0]->id);
        $this->assertInstanceOf(Page::class, $result[1]);
        $this->assertEquals(5, $result[1]->id);
        $this->assertInstanceOf(Page::class, $result[2]);
        $this->assertEquals(6, $result[2]->id);
    }


    /**
     * Тест метода getSQLSet() - случай с сырыми данными
     */
    public function testGetSQLSetWithRaw()
    {
        $sqlQuery = "SELECT *
                       FROM cms_pages
                      WHERE id IN (4, 5, 6)
                   ORDER BY id ASC";
        $result = SOME::getSQLSet($sqlQuery);

        $this->assertTrue(is_array($result));
        $this->assertCount(3, $result);
        $this->assertIsArray($result[0]);
        $this->assertEquals(4, $result[0]['id']);
        $this->assertIsArray($result[1]);
        $this->assertEquals(5, $result[1]['id']);
        $this->assertIsArray($result[2]);
        $this->assertEquals(6, $result[2]['id']);
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
     * Тест метода getSQLObject - случай простого текстового запроса
     */
    public function testGetSQLObjectWithPlain()
    {
        $sqlQuery = "SELECT * FROM cms_pages WHERE id = 3";
        $result = Page::getSQLObject($sqlQuery);

        $this->assertInstanceOf(Page::class, $result);
        $this->assertEquals(3, $result->id);
    }


    /**
     * Тест метода getSQLObject - случай с callable
     */
    public function testGetSQLObjectWithCallable()
    {
        $sqlQuery = "SELECT * FROM cms_pages WHERE id = 3";
        $result = SOME::getSQLObject($sqlQuery, function ($sqlRow) {
            return new Page($sqlRow);
        });

        $this->assertInstanceOf(Page::class, $result);
        $this->assertEquals(3, $result->id);
    }


    /**
     * Тест метода getSQLObject - случай с явным заданием типа
     */
    public function testGetSQLObjectWithType()
    {
        $sqlQuery = "SELECT * FROM cms_pages WHERE id = 3";
        $result = SOME::getSQLObject($sqlQuery, Page::class);

        $this->assertInstanceOf(Page::class, $result);
        $this->assertEquals(3, $result->id);
    }


    /**
     * Тест метода getSQLObject - случай с сырыми данными
     */
    public function testGetSQLObjectWithRaw()
    {
        $sqlQuery = "SELECT * FROM cms_pages WHERE id = 3";
        $result = SOME::getSQLObject($sqlQuery);

        $this->assertIsArray($result);
        $this->assertEquals(3, $result['id']);
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
     * Тест метода getArraySet() - случай с объектами
     */
    public function testGetArraySetWithObjects()
    {
        $pages = new Pages(2, 2);
        $arr = [
            new Page(['id' => 1, 'name' => 'test1']),
            new Page(['id' => 2, 'name' => 'test2']),
            new Page(['id' => 3, 'name' => 'test3']),
            new Page(['id' => 4, 'name' => 'test4']),
            new Page(['id' => 5, 'name' => 'test5']),
            new Page(['id' => 6, 'name' => 'test6']),
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
     * Тест метода getArraySet() - случай с callable
     */
    public function testGetArraySetWithCallable()
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
        $result = SOME::getArraySet($arr, $pages, function ($x) {
            return new Page($x);
        });

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
     * Тест метода getArraySet() - случай с явно заданным типом
     */
    public function testGetArraySetWithType()
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
        $result = SOME::getArraySet($arr, $pages, Page::class);

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
     * Тест метода getArraySet() - случай с сырыми данными
     */
    public function testGetArraySetWithRaw()
    {
        $arr = [
            ['id' => 3, 'name' => 'test3'],
            ['id' => 4, 'name' => 'test4'],
        ];
        $result = SOME::getArraySet($arr);

        $this->assertTrue(is_array($result));
        $this->assertCount(2, $result);
        $this->assertIsArray($result[0]);
        $this->assertEquals(3, $result[0]['id']);
        $this->assertEquals('test3', $result[0]['name']);
        $this->assertIsArray($result[1]);
        $this->assertEquals(4, $result[1]['id']);
        $this->assertEquals('test4', $result[1]['name']);
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
     * Тест метода priorityRepair - случай без указания поля приоритета
     */
    public function testPriorityRepairWithoutPriorityName()
    {
        $this->expectException(Exception::class);
        $this->expectExceptionMessage('You have to define property name');

        $page = new class extends Page {
            protected static $defaultOrderBy = '';
        };

        $page::priorityRepair();
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
