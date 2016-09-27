<?php

/*
 * This file is part of the Speedwork package.
 *
 * (c) Sankar <sankar.suda@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */

$is_api_request = true;

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Content-Type, x-xsrf-token, Authorization, access');
header('Access-Control-Allow-Methods: GET,POST,PUT,DELETE,OPTIONS');

/*
|--------------------------------------------------------------------------
| Register The Auto Loader
|--------------------------------------------------------------------------
|
| Composer provides a convenient, automatically generated class loader
| for our application. We just need to utilize it! We'll require it
| into the script here so that we do not have to worry about the
| loading of any our classes "manually". Feels great to relax.
|
*/
$app = require_once __DIR__.'/../app.php';

/*
|--------------------------------------------------------------------------
| Register Additional Providers
|--------------------------------------------------------------------------
|
| Register all additional providers which are required for application.
|
*/
$app->register(new \Speedwork\Cache\CacheServiceProvider());

return $app;
