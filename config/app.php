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
    | Application Name
    |--------------------------------------------------------------------------
    |
    | Name of your application will be used email templates and other places
    */

    'name' => env('APP_NAME', 'speedwork'),

    /*
    |--------------------------------------------------------------------------
    | Application Environment
    |--------------------------------------------------------------------------
    */

    'environment' => env('APP_ENVIRONMENT', 'local'),

    /*
    |--------------------------------------------------------------------------
    | Application Debug Mode
    |--------------------------------------------------------------------------
    |
    | When your application is in debug mode, detailed error messages with
    | stack traces will be shown on every error that occurs within your
    | application. If disabled, a simple generic error page is shown.
    |
    */

    'debug' => env('APP_DEBUG', false),

    /*
    |--------------------------------------------------------------------------
    | Application URL
    |--------------------------------------------------------------------------
    |
    | This URL is used by the console to properly generate URLs when using
    | the Artisan command line tool. You should set this to the root of
    | your application so that it is used when running Artisan tasks.
    |
    */

    'cliurl' => 'http://localhost/',

    /*
    |--------------------------------------------------------------------------
    | Application Timezone
    |--------------------------------------------------------------------------
    |
    | Here you may specify the default timezone for your application, which
    | will be used by the PHP date and date-time functions. We have gone
    | ahead and set this to a sensible default for you out of the box.
    |
    */

    'timezone' => 'UTC',

    /*
    |--------------------------------------------------------------------------
    | Application Locale Configuration
    |--------------------------------------------------------------------------
    |
    | The application locale determines the default locale that will be used
    | by the translation service provider. You are free to set this value
    | to any of the locales which will be supported by the application.
    |
    */

    'locale' => 'en',

    /*
    |--------------------------------------------------------------------------
    | Encryption Key
    |--------------------------------------------------------------------------
    |
    | This key is used by the Illuminate encrypter service and should be set
    | to a random, 32 character string, otherwise these encrypted strings
    | will not be safe. Please do this before deploying an application!
    |
    */

    'key' => env('APP_KEY', 'SomeRandomString'),

    /*
    |--------------------------------------------------------------------------
    | Logging Configuration
    |--------------------------------------------------------------------------
    |
    | Here you may configure the log settings for your application. Out of
    | the box, Speedwork uses the Monolog PHP logging library. This gives
    | you a variety of powerful log handlers / formatters to utilize.
    |
    | Available Settings: "single", "daily", "syslog"
    |
    */

    'log' => [
        'logfile'   => 'speedwork.log',
        'rotate'    => 'single',
        'level'     => 'debug',
        'max_files' => 10,
    ],

    /*
    |--------------------------------------------------------------------------
    | Application encoding
    |--------------------------------------------------------------------------
    */

    'encoding' => env('APP_ENCODING', 'UTF-8'),

    /*
    |--------------------------------------------------------------------------
    | Analytics key
    |--------------------------------------------------------------------------
    |
    | Google analytics key to track application views and other details
    | Leave empty in case you place your own code or not required
    */

    'analytics' => env('APP_ANALYTICS'),

    /*
    |--------------------------------------------------------------------------
    | Global Components and Modules
    |--------------------------------------------------------------------------
    |
    | Components and Modules which are loaded from other locations
    | We can specify the different locations to load
    |
    | Example Component:
    |   "members" => [
    |       "namespace" => "\\Speedwork\\Components\\Members"
    |       "views" => 'storage/views/members'
    |   ]
    */
    'apps' => [
        'components' => [],
        'modules'    => [],
    ],

    /*
    |-------------------------------------------------------------------------
    | Default device setup
    |-------------------------------------------------------------------------
    |
    | Leaving empty application will try to guess the device type
    | Device types computer, mobile, tablet (default:computer)
    |
    */

    'device' => [
        'type' => 'computer',
    ],

    /*
     |----------------------------------------------------------------------------
     | Default Meta data for html
     |----------------------------------------------------------------------------
     |
     | These meta data information can be set on each request.
     | These values can be overwrite from component or from helpers by keeping
     | same name.
     | You can set open graph data or Twitter card or any other meta
     | "name::type(optional)" => "value of meta data"
     | Example : "og:title::property" => 'Awsome Speedwork'
     */
    'meta' => [
        'title'       => '',
        'keywords'    => '',
        'description' => '',
    ],

    /*
     |----------------------------------------------------------------------------
     | Dynamic meta info
     |----------------------------------------------------------------------------
     |
     | Set the meta data from database. Need to set option and view config to enable
     | meta from database. System will get the meta based on option, view and unique
     | ids conbination.
     |
     | In below example config, option=content, view=page and query string id should
     | match with database unique id.
     */
    'metainfo' => [
        'enable' => false,
        'config' => [
            'content:page' => 'id',
            'option:'      => ['id', 'name'],
            'option:*'     => 'id',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Autoloaded Service Providers
    |--------------------------------------------------------------------------
    |
    | The service providers listed here will be automatically loaded on the
    | request to your application. Feel free to add your own services to
    | this array to grant expanded functionality to your applications.
    |
    */

    'providers' => [
        \Turbo\Speedwork\TurboServiceProvider::class,
        //'\\App\\AppServiceProvider',
    ],
];
