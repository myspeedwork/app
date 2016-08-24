<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Default Database Connection Name
    |--------------------------------------------------------------------------
    |
    | Here you may specify which of the database connections below you wish
    | to use as your default connection for all database work. Of course
    | you may use many connections at once using the Database library.
    |
    */

    'default' => env('DB_CONNECTION', 'mysql'),

    /*
    |--------------------------------------------------------------------------
    | Database Connections
    |--------------------------------------------------------------------------
    |
    | Here are each of the database connections setup for your application.
    | Of course, examples of configuring each database platform that is
    | supported by Speedwork is shown below to make development simple.
    |
    |
    | All database work in Speedwork is done through the PHP PDO facilities
    | so make sure you have the driver for your particular database of
    | choice installed on your machine before you begin development.
    |
    */
    'connections' => [
        'mysql' => [
            'driver'     => 'mysqli',
            'persistent' => false,
            'host'       => env('DB_HOST', '127.0.0.1'),
            'database'   => env('DB_DATABASE', 'speedwork'),
            'username'   => env('DB_USERNAME', 'root'),
            'password'   => env('DB_PASSWORD', ''),
            'charset'    => 'utf8',
            'collation'  => 'utf8_general_ci',
            'prefix'     => env('DB_PREFIX', 'speed_'),
        ],
        'master' => [
            'driver'     => 'mysqli',
            'persistent' => false,
            'wrapper'    => 'MasterSlave',
            'database'   => env('DB_DATABASE', 'speedwork'),
            'username'   => env('DB_USERNAME', 'root'),
            'password'   => env('DB_PASSWORD', ''),
            'charset'    => 'utf8',
            'collation'  => 'utf8_general_ci',
            'prefix'     => env('DB_PREFIX', 'speed_'),
            'master'     => [
                'host' => '172.16.1.213',
            ],
            'slaves' => [
                ['host' => '172.16.1.207'],
                ['host' => '172.16.1.184'],
            ],
            'connections' => [
                'select' => 'slave',
                'update' => 'master',
                'other'  => 'master',
            ],
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Database Helpers
    |--------------------------------------------------------------------------
    |
    | Helpers to change the query or data before and after process.
    | Helps to log the data or queries for activity or stop execution of query
    | Accepts array of helpers
    |
    | Find : Before and after select query
    | Save : Before saving the data into database
    | Update : Before updating the data
    | Delete : Before delete
    */
    'helpers' => [
        'find'   => ['find'],
        'save'   => ['save'],
        'delete' => ['delete'],
        'update' => ['update'],
    ],

    /*
    |--------------------------------------------------------------------------
    | Tables configuration
    |--------------------------------------------------------------------------
    |
    | Use this configuration to add user_id to below tables in query process
    */
   'tables' => [
        'default' => [
            'users_api'            => 'user_id',
            'mod_notifications'    => 'user_id',
            'user_login_history'   => 'user_id',
            'user_options'         => 'user_id',
            'whitelist_domains'    => 'user_id',
            'user_social'          => 'user_id',
            'user_contact_details' => 'user_id',
        ],
        'find'   => [],
        'save'   => [],
        'delete' => [],
        'update' => [],
    ],

];
