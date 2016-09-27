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
    'themes' => [
        /*
         |----------------------------------------------------------------------------
         | Default theme config all devices
         |----------------------------------------------------------------------------
         |
         | Default config will be applied for all devices. Devices are identified by
         | their headers
         */
        'default' => [
            'default'       => 'speed',
            'members:login' => 'speed',
            'members:*'     => 'speed.login',
        ],
        /*
         |----------------------------------------------------------------------------
         | Theme configuration for computer devices
         |----------------------------------------------------------------------------
         |
         | You can overwrite the theme config provided in default for computer (big screen)
         | devices
         */
        'computer' => [
            /*
             |----------------------------------------------------------------------------
             | Default key
             |----------------------------------------------------------------------------
             |
             | Default config will be used if route not matching with any of theme config
             | Example route configurations are:
             |
             |  members:login (members component and login method)
             |  members:* (members component and all methods)
             */
            'members:changepass' => 'speed',
        ],

        /*
         |----------------------------------------------------------------------------
         | Theme configuration for mobile devices
         |----------------------------------------------------------------------------
         */
        'phone' => [],

        /*
         |----------------------------------------------------------------------------
         | Theme configuration for tablet devices
         |----------------------------------------------------------------------------
         */
        'tablet' => [],
    ],

    /*
    |--------------------------------------------------------------------------
    | View file extensions
    |--------------------------------------------------------------------------
    |
    | Extensions your application uses, Speedwork resolve the desired engine
    | and uses for rendering. You can use multiple view engines in same app.
    |
    */
    'extensions' => [
        'twig',
        'tpl',
    ],

    /*
    |--------------------------------------------------------------------------
    | View Storage Paths
    |--------------------------------------------------------------------------
    |
    | Most templating systems load templates from disk. Here you may specify
    | an array of paths that should be checked for your views.
    | Speedwork defaultly look into component and theme directory for views.
    | You can also specify the additions paths here.
    |
    */
    'paths' => [],
];
