<?php

defined('SPEEDWORK') or die('Restricted acccess');

/*======================================================
// DATABASE CONNECTION SETTINGS
/=======================================================*/

$default                  = [];
$default['driver']        = 'mysqli'; //excepted values : mysql,mysqli,pgsql,mssql,oracle,db2,sqlite
$default['persistent']    = false;
$default['host']          = '127.0.0.1'; //database hostname (default localhost) if uncertain consult hosting provider
$default['login']         = 'root'; //database username
$default['password']      = '';//database password
$default['database']      = 'ezo'; //database name
$default['prefix']        = 'speed_'; //database table prefix
$default['encoding']      = 'utf8';  //ex: utf8
$default['cache']         = false; //enable caching the queries if avalable
$default['sig']           = 'app';

$_config['environment']         = 'dev';
$_config['debug']               = true;
$_config['white_label']         = false;
$_config['database']['default'] = $default;
