<?php

/**
 * This file is part of the Speedwork package.
 *
 * @link http://github.com/speedwork
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
defined('DS') or define('DS', DIRECTORY_SEPARATOR);
define('ABSPATH', dirname(__FILE__).DS);
defined('APP') or define('APP', ABSPATH);

$paths = [
    'speedwork',
    '/../../speedwork/framework',
];

foreach ($paths as $path) {
    if (file_exists($startup = APP.$path.DS.'startup.php')) {
        defined('SYS') or define('SYS', realpath(APP.$path).DS);

        return require $startup;
    }
}

die('System start up not loaded');
