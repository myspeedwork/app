<?php

/**
 * This file is part of the Speedwork package.
 *
 * @link http://github.com/speedwork
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
$default               = [];
$default['driver']     = 'mysqli'; //excepted values : mysql,mysqli,pgsql,mssql,oracle,db2,sqlite
$default['persistent'] = false;
$default['host']       = '127.0.0.1'; //database hostname (default localhost) if uncertain consult hosting provider
$default['login']      = 'root'; //database username
$default['password']   = '';//database password
$default['database']   = 'database'; //database name
$default['prefix']     = 'speed_'; //database table prefix
$default['encoding']   = 'utf8';  //ex: utf8
$default['cache']      = false; //enable caching the queries if avalable
$default['sig']        = 'app';

$_config['environment']         = 'dev';
$_config['debug']               = true;
$_config['database']['default'] = $default;
