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

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Content-Type, x-xsrf-token, Authorization, access');
header('Access-Control-Allow-Methods: GET,POST,PUT,DELETE,OPTIONS');

require_once __DIR__.'/../startup.php';
