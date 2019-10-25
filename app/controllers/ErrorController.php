<?php


class ErrorController
{
    public function pageNotFound()
    {
        $view = new View('errors/404');
    }

    public function userNotFound()
    {
        $view = new View('errors/nouser');
    }
}