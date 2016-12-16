<?php
namespace design\AbstractFactory;

class HtmlFactory extends AbstractFactory
{
    public function createText(String $content): Text
    {
        return new HtmlText($content);
    }
}