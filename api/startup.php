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

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Content-Type, x-xsrf-token, Authorization, access');
header('Access-Control-Allow-Methods: GET,POST,PUT,DELETE,OPTIONS');

return require_once __DIR__.'/../startup.php';
