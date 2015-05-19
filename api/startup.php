<?php

/**
 * This file is part of the Speedwork package.
 *
 * (c) 2s Technologies <info@2stech.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
$is_api_request = true;
defined('IS_API_REQUEST') or define('IS_API_REQUEST', true);
defined('DS') or define('DS', DIRECTORY_SEPARATOR);

if (!class_exists('App')) {
    require_once __DIR__.'/../startup.php';
}

require SYS.'api'.DS.'startup.php';
