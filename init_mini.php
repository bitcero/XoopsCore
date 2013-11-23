<?php
error_reporting(E_ALL | E_STRICT);

defined('DS') or define('DS', DIRECTORY_SEPARATOR);

require_once dirname(__FILE__) . '/../htdocs/mainfile.php';

require_once XOOPS_ROOT_PATH . DS . 'include' . DS . 'defines.php';
require_once XOOPS_ROOT_PATH . DS . 'include' . DS . 'version.php';
require_once XOOPS_ROOT_PATH . DS . 'class' . DS . 'xoopsload.php';



$xoops = Xoops::getInstance();
/**
 * Load Language settings and defines
 */
$xoops->loadLocale();
//For legacy
$xoops->setConfig('language', XoopsLocale::getLegacyLanguage());

date_default_timezone_set(XoopsLocale::getTimezone());
setlocale(LC_ALL, XoopsLocale::getLocale());

require_once dirname(__FILE__) . '/common_phpunit.php';
