<?php
namespace design\AbstractFactory;

class JsonFactory extends AbstractFactory
{
    public function createText(String $content): Text
    {
        return new JsonText($content);
    }
}