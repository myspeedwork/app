<?php

/*
 * This file is part of the Speedwork package.
 *
 * (c) Sankar <sankar.suda@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */

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
$app = require __DIR__.'/app.php';

/*
|--------------------------------------------------------------------------
| Register Additional Providers
|--------------------------------------------------------------------------
|
| Register all additional providers which are required for application.
|
*/

$app->register(new \Speedwork\Provider\WhoopsServiceProvider());
$app->register(new \Speedwork\Cache\CacheServiceProvider());
$app->register(new \App\AppServiceProvider());

/*
|--------------------------------------------------------------------------
| Run The Application
|--------------------------------------------------------------------------
|
| Once we have the application, we can handle the incoming request
| through the kernel, and send the associated response back to
| the client's browser allowing them to enjoy the creative
| and wonderful application we have prepared for them.
|
*/

$kernel = new App\Http\Kernel($app);

$request  = Speedwork\Core\Http\Request::createFromGlobals();
$response = $kernel->handle($request)->send();

/*
|--------------------------------------------------------------------------
| Shutdown The Application
|--------------------------------------------------------------------------
|
| Once Speedwork has finished running. We will fire off the shutdown events
| so that any final work may be done by the application before we shut
| down the process. This is the last thing to happen to the request.
|
*/

$kernel->terminate($request, $response);
