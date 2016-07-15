<?php

$_config = [];

$_config['env']      = env('ENVIRONMENT', 'dev');
$_config['debug']    = env('DEBUG', true);
$_config['name']     = 'speedwork';
$_config['email']    = 'speedwork@domain.com';
$_config['encoding'] = 'UTF-8';

$_config['append_sitename_title'] = 'after';

$_config['core_apps']['component'] = [
    'errors'  => true,
    'menu'    => true,
    'members' => true,
    'media'   => true,
];

$_config['core_apps']['module'] = [
    'menu' => true,
];

$_config['tables'] = [
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
];

$_config['minifier'] = [
    'js' => [
        'minify' => false,
        'cdnify' => false,
    ],
    'css' => [
        'minify' => false,
        'cdnify' => false,
    ],
];

$_config['patterns'] = [
    'password' => '(.+){6,15}',
    'mobile'   => '\+[0-9]{10,15}',
    'username' => "^[a-zA-Z0-9\.\-_]{6,25}$",
];

$_config['metainfo'] = [
    'enable'     => true,
    'components' => [],
];

$_config['analytics'] = '#ANALYTICS#';

return $_config;
