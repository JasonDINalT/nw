<?php


use app\models\LoginForm;

class ExampleTest extends \Codeception\TestCase\Test
{
    /**
     * @var \UnitTester
     */
    protected $tester;

    protected function _before()
    {
    }

    protected function _after()
    {
    }

    // tests
    public function testMe()
    {
        $model = new \tests\codeception\unit\models\LoginFormTest;
        $model->testLoginCorrect();
    }

}