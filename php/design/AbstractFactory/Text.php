<?php
namespace design\AbstractFactory;

class Text
{
    private $text;

    public function __construct(String $text)
    {
        $this->text = $text;
    }

    public function getText()
    {
        return $this->text;
    }
}