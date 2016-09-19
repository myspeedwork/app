<?php

/*
 * This file is part of the Speedwork package.
 *
 * (c) Sankar <sankar.suda@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */

defined('DS') or define('DS', DIRECTORY_SEPARATOR);
define('ABSPATH', dirname(__FILE__).DS);
defined('APP') or define('APP', ABSPATH);

$paths = [
    'speedwork',
    'vendor/speedwork/framework',
];

foreach ($paths as $path) {
    if (file_exists($file = APP.$path.DS.'startup.php')) {
        include $file;
        break;
    }
}

/*
|--------------------------------------------------------------------------
| Register The Composer Auto Loader
|--------------------------------------------------------------------------
|
| Composer provides a convenient, automatically generated class loader
| for our application. We just need to utilize it! We'll require it
| into the script here so that we do not have to worry about the
| loading of any our classes "manually". Feels great to relax.
|
*/

if (file_exists($loader = APP.'vendor'.DS.'autoload.php')) {
    include $loader;
}

/*
|--------------------------------------------------------------------------
| Include The Compiled Class File
|--------------------------------------------------------------------------
|
| To dramatically increase your application's performance, you may use a
| compiled class file which contains all of the classes commonly used
| by a request. The Speed "optimize" is used to create this file.
|
*/

$compiledPath = APP.'storage/cache/compiled.php';

if (file_exists($compiledPath)) {
    include $compiledPath;
}

/*
 |--------------------------------------------------------------------------
 | Set default security headers
 |--------------------------------------------------------------------------
 */
header('Server: ');
header('X-Content-Type-Options: nosniff');
header('X-Powered-By: ');

/*
|--------------------------------------------------------------------------
| Create The Application
|--------------------------------------------------------------------------
|
| The first thing we will do is create a new Speedwork application instance
| which serves as the "glue" for all the components of Speedwork, and is
| the IoC container for the system binding all of the various parts.
|
*/

$app = new \Speedwork\Core\Application(APP);
$app->set('is_api_request', $is_api_request);

/*
|--------------------------------------------------------------------------
| Register Default Providers
|--------------------------------------------------------------------------
|
| Register all providers which are required for application.
|
*/
$app->register(new \Speedwork\Provider\EventsServiceProvider());
$app->register(new \Speedwork\Provider\BootstrapServiceProvider());
$app->register(new \Speedwork\Provider\MonologServiceProvider());
$app->register(new \Speedwork\Filesystem\FilesystemServiceProvider());
$app->register(new \Speedwork\View\AssetsServiceProvider());
$app->register(new \Speedwork\Database\DatabaseServiceProvider());
$app->register(new \Speedwork\Provider\SpeedworkServiceProvider());

/*
|--------------------------------------------------------------------------
| Return The Application
|--------------------------------------------------------------------------
|
| This script returns the application instance. The instance is given to
| the calling script so we can separate the building of the instances
| from the actual running of the application and sending responses.
|
*/
return $app;
