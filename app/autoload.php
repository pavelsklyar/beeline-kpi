<?php

define('HOME', $_SERVER['DOCUMENT_ROOT'] . '/');
define('ROOT', HOME . '../');
define('CONFIG', ROOT . 'config/');
define('APP', ROOT . 'app/');
define('VIEWS', ROOT . 'views/');

require_once "Connector.php";

Connector::requireFolder(APP . "common");
Connector::requireFolder(APP . "controllers");
Connector::requireFolder(APP . "database");
Connector::requireFolder(APP . "interfaces");
Connector::requireFolder(APP . "model");
Connector::requireFolder(APP . "security");