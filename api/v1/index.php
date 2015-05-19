<?php

/**
 * This file is part of the Speedwork package.
 *
 * (c) 2s Technologies <info@2stech.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
require dirname(__FILE__).'/../startup.php';

$request    = Speedwork\Api\RestUtils::processRequest();
$restApi    = new RestApi();

/*
  * Process request
  * @param array $request
  * @param boolean $authenicate (optional) default|true
  **/
$restApi->processMethod($request, true, ['misc']);
