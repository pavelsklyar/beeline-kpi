<?php


interface Table
{
    public static function insert($object);

    public static function getById($id);
}