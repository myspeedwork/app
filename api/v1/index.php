<?php

/**
 * This file is part of the Speedwork package.
 *
 * (c) 2s Technologies <info@2stech.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
$app = require dirname(__FILE__).'/../startup.php';

$request = Speedwork\Util\RestUtils::processRequest();
$restApi = new Speedwork\Core\RestApi();
$restApi->setContainer($app);

/*
  * Process request
  * @param array $request
  * @param boolean $authenicate (optional) default|true
  **/
echo $restApi
        ->setRequest($request)
        ->setPublicMethods(['blog','discuss','forum'])
        ->processMethod();
