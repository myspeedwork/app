<?php

/**
 * This file is part of the Speedwork package.
 *
 * @link http://github.com/speedwork
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
$is_api_request = true;

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Content-Type, x-xsrf-token, Authorization, access');
header('Access-Control-Allow-Methods: GET,POST,PUT,DELETE,OPTIONS');

return require_once __DIR__.'/../app.php';
