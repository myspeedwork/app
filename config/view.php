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
        'default' => [
            'default' => 'speed',
        ],
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
