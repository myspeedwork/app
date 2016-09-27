<?php

/*
 * This file is part of the Speedwork package.
 *
 * (c) Sankar <sankar.suda@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */

$app = require dirname(__FILE__).'/../startup.php';

$restApi = new Speedwork\Core\RestApi();
$restApi->setContainer($app);
$request = $restApi->captureRequest();

echo $restApi
        ->setRequest($request)
        ->setPublicMethods(['content'])
        ->setCache()
        ->processMethod();
