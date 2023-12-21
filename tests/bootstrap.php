<?php
namespace SOME;

use RAAS\Application;

define('RAAS_BASEDIR', 'd:/web/home/test/www');
$_SERVER['HTTP_HOST'] = 'localhost';
$_SERVER['HTTPS'] = 'off';

require RAAS_BASEDIR . '/vendor/autoload.php';
Application::i()->run('cron');
