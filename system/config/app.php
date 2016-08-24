<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Application Name
    |--------------------------------------------------------------------------
    |
    | Name of your application will be used email templates and other places
    */

    'name' => env('NAME', 'speedwork'),

    /*
    |--------------------------------------------------------------------------
    | Application Environment
    |--------------------------------------------------------------------------
    */

    'environment' => env('ENVIRONMENT', 'local'),

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

    'debug' => env('DEBUG', false),

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

    'url' => 'http://localhost',

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

    'key' => env('KEY', 'SomeRandomString'),

    /*
    |--------------------------------------------------------------------------
    | Logging Configuration
    |--------------------------------------------------------------------------
    |
    | Here you may configure the log settings for your application. Out of
    | the box, Laravel uses the Monolog PHP logging library. This gives
    | you a variety of powerful log handlers / formatters to utilize.
    |
    | Available Settings: "single", "daily", "syslog"
    |
    */

    'log' => 'daily',

    /*
    |--------------------------------------------------------------------------
    | Application encoding
    |--------------------------------------------------------------------------
    */

    'encoding' => env('ENCODING', 'UTF-8'),

   /*
    |--------------------------------------------------------------------------
    | Analytics key
    |--------------------------------------------------------------------------
    |
    | Google analytics key to track application views and other details
    | Leave empty in case you place your own code or not required
    */

    'analytics' => env('ANALYTICS'),

   /*
    |--------------------------------------------------------------------------
    | Global Components and Modules
    |--------------------------------------------------------------------------
    |
    | Components and Modules which are loaded from other locations
    | We can specify the different locations to load
    |
    | Default : speedwork/system & system
    */
    'apps' => [
        'components' => [
            'errors'  => true,
            'menu'    => true,
            'members' => true,
            'media'   => true,
        ],
        'modules' => [
            'menu' => true,
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Minifier helper configuration
    |--------------------------------------------------------------------------
    */
    'minifier' => [
        'js' => [
            'minify' => false,
            'cdnify' => false,
        ],
        'css' => [
            'minify' => false,
            'cdnify' => false,
        ],
    ],
];
