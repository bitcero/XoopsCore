<?php
namespace Xmf;

require_once(dirname(__FILE__).'/../../init_new.php');

/**
 * Generated by PHPUnit_SkeletonGenerator 1.2.1 on 2014-05-22 at 19:56:36.
 */

/**
* PHPUnit special settings :
* @backupGlobals disabled
* @backupStaticAttributes disabled
*/

class LanguageTest extends \PHPUnit_Framework_TestCase
{
    /**
     * @var Language
     */
    protected $object;

    /**
     * Sets up the fixture, for example, opens a network connection.
     * This method is called before a test is executed.
     */
    protected function setUp()
    {
        $this->object = new Language;
    }

    /**
     * Tears down the fixture, for example, closes a network connection.
     * This method is called after a test is executed.
     */
    protected function tearDown()
    {
    }

    /**
     * @covers Xmf\Language::translate
     */
    public function testTranslate()
    {
        $str = 'string';
        $x = Language::translate($str);
        $this->assertSame($str, $x);
    }

    /**
     * @covers Xmf\Language::load
     */
    public function testLoad()
    {
        $this->assertTrue(Language::load('xmf'));

        $this->assertFalse(Language::load('xmfblahblahblah'));

        $this->assertFalse(Language::load('xmf/Program Files/stuff'));
    }

    /**
     * @covers Xmf\Language::load
     *
     * @expectedException \InvalidArgumentException
     */
    public function testLoadException()
    {
        //$this->expectException(\InvalidArgumentException::class);
        $str = "Test\0Test";
        $x = Language::load($str);
    }
}
