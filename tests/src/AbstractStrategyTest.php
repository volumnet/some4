<?php
/**
 * Тест для класса AbstractStrategy
 */
namespace SOME;

use Exception;

/**
 * Тест для класса AbstractStrategy
 * @covers \SOME\AbstractStrategy
 */
class AbstractStrategyTest extends BaseTest
{
    /**
     * Тестирует методы register/get/unregister/clear
     */
    public function testRegisterGetSpawnUnregisterClear()
    {
        ConcreteStrategy::register('foo');
        ConcreteStrategy::register('bar');

        $this->assertEquals(ConcreteStrategy::class, ConcreteStrategy::get('foo'));
        $this->assertEquals(ConcreteStrategy::class, ConcreteStrategy::get('bar'));
        $this->assertInstanceOf(ConcreteStrategy::class, ConcreteStrategy::spawn('bar'));

        ConcreteStrategy::unregister('foo');

        $result = ConcreteStrategy::get();
        $this->assertNull($result['foo'] ?? null);
        $this->assertEquals(ConcreteStrategy::class, ConcreteStrategy::get('bar'));

        ConcreteStrategy::clear();

        $this->assertEmpty(ConcreteStrategy::get());
    }


    /**
     * Тестирует исключение метода register() - вызов у корневого класса
     */
    public function testRegisterWithExceptionParentClass()
    {
        $this->expectException(Exception::class);
        AbstractStrategy::register('foo');
    }


    /**
     * Тестирует исключение метода unregister() - вызов у несуществующего ключа
     */
    public function testUnregisterWithNotExistent()
    {
        $this->expectException(Exception::class);
        AbstractStrategy::unregister('baz');
    }


    /**
     * Тестирует исключение метода get() - вызов у несуществующего ключа
     */
    public function testGetWithNotExistent()
    {
        $this->expectException(Exception::class);
        AbstractStrategy::get('baz');
    }


    /**
     * Тестирует исключение метода spawn() - вызов у несуществующего ключа
     */
    public function testSpawnWithNotExistent()
    {
        $this->expectException(Exception::class);
        AbstractStrategy::spawn('baz');
    }
}
