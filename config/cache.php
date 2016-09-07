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
    |--------------------------------------------------------------------------
    | Default Cache Store
    |--------------------------------------------------------------------------
    |
    | This option controls the default cache connection that gets used while
    | using this caching library. This connection is used when another is
    | not explicitly specified when executing a given caching function.
    |
    */

    'default' => env('CACHE_DRIVER', 'file'),

    /*
    |--------------------------------------------------------------------------
    | Cache Stores
    |--------------------------------------------------------------------------
    |
    | Here you may define all of the cache "stores" for your application as
    | well as their drivers. You may even define multiple stores for the
    | same cache driver to group types of items stored in your caches.
    |
    */

    'stores' => [

        'apc' => [
            'driver' => 'apc',
        ],

        'xcache' => [
            'driver' => 'xcache',
        ],

        'array' => [
            'driver' => 'array',
        ],

        'file' => [
            'driver' => 'file',
            'path'   => 'storage/cache',
        ],

        'mongodb' => [
            'driver'     => 'file',
            'server'     => '127.0.0.1',
            'name'       => 'speedwork',
            'collection' => 'speedwork',
        ],

        'memcache' => [
            'driver' => 'memcache',
            'host'   => '127.0.0.1',
            'port'   => 11211,
        ],

        'memcached' => [
            'driver'  => 'memcached',
            'servers' => [
                [
                    'host' => '127.0.0.1',
                    'port' => 11211,
                ],
            ],
        ],

        'redis' => [
            'driver' => 'redis',
            'host'   => '127.0.0.1',
            'port'   => 6379,
        ],

    ],

    /*
    |--------------------------------------------------------------------------
    | Cache Key Namespace
    |--------------------------------------------------------------------------
    |
    | When utilizing a RAM based store such as APC or Memcached, there might
    | be other applications utilizing the same cache. So, we'll specify a
    | value to get prefixed to all our keys so we can avoid collisions.
    |
    */

    'namespace' => env('name', 'speedwork'),

];
