<?php
namespace design\AbstractFactory;

class TestAbstractFactory extends \PHPUnit_Framework_TestCase
{
    public function testHtmlText()
    {
        $factory = new HtmlFactory();
        $content = 'htmlContent';
        $text = $factory->createText($content);
        $this->assertInstanceOf('design\AbstractFactory\HtmlText', $text);
        $this->assertEquals($content, $text->getText());
    }
}