<?php

/*
 * This file is part of the Speedwork package.
 *
 * (c) Sankar <sankar.suda@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */

return [
    'routes' => [
        'register' => 'index.php?option=members&view=register',
        'login'    => 'index.php?option=members&view=login',
        'logout'   => 'index.php?option=members&view=logout',
        'account'  => 'index.php?option=members&view=account',
        /*
        | 'content/(:num)/(.*)' => 'index.php?option=content&id=$1&name=$2',
        */
    ],
    'seo'    => ['enable' => true],
    'router' => ['enable' => true],
    'short'  => [
        'enable' => false,
        'config' => [
            /*
            'option:view' => ['uniqid' => 'id']
             */
        ],
        'generate' => [],
    ],
    'forward' => [
        'enable' => false,
        'site'   => [],
        'config' => [
            /*
            http://domain.com/ => [
                'option:' => true,
                'option:view' => true,
                'option:*' => true,
                '*' => true
            ]
             */
        ],
    ],
];
