<?php
namespace design\AbstractFactory;

abstract class AbstractFactory
{
    abstract public function createText(string $content): Text;
}