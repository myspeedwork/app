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
    /*
     |----------------------------------------------------------------------------
     | Enable the seo frendly urls
     |----------------------------------------------------------------------------
     |
     | This option convert index.php?option=content&view=welcome to content/welcome
     */
    'seo' => [
        'enable' => true,
    ],

    /*
     |----------------------------------------------------------------------------
     | Route the urls
     |----------------------------------------------------------------------------
     |
     | Change the representation of url
     */
    'router' => [
        'enable' => true,
        'routes' => [
            'home'                => 'index.php?option=content&view=welcome',
            'register'            => 'index.php?option=members&view=register',
            'login'               => 'index.php?option=members&view=login',
            'logout'              => 'index.php?option=members&view=logout',
            'me'                  => 'index.php?option=members&view=me',
            '404'                 => 'index.php?option=errors',
            '403'                 => 'index.php?option=errors&view=denied',
            'content/(:num)/(.*)' => 'index.php?option=content&id=$1&name=$2',
        ],
    ],

    /*
     |----------------------------------------------------------------------------
     | Generate Short Urls
     |----------------------------------------------------------------------------
     |
     | This will convert long url to short urls.
     | Requires configuration and database addon_shorturl table.
     */
    'short' => [
        'enable' => false,
        'config' => [
            /*
            | 'option:view' => ['uniqid' => 'id']
            */
        ],
        'generate' => [],
    ],

    /*
     |----------------------------------------------------------------------------
     | Forward Configuration
     |----------------------------------------------------------------------------
     |
     | Forward urls from http to https or vaisa versa.
     | You can also forward to another domain or subdomain
     */
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
