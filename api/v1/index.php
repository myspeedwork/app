<?php

/**
 * This file is part of the Speedwork package.
 *
 * @link http://github.com/speedwork
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
$app = require dirname(__FILE__).'/../startup.php';

$request = Speedwork\Util\RestUtils::processRequest();
$restApi = new Speedwork\Core\RestApi();
$restApi->setContainer($app);

echo $restApi
        ->setRequest($request)
        ->setPublicMethods(['content'])
        ->processMethod();
