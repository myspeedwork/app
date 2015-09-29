<?php

$_config['app']['name'] = 'Speedwork';

$_config['public_permissions'] = [
    'cron:**',
];

$_config['mail'] = [
    'enable'     => true,
    'blacklist'  => false,
    'from_name'  => $_config['app.name'],
    'from_email' => 'xxx',
    'log'        => true,
    'provider'   => 'phpmailer',
    'phpmailer'  => [
        'smtp'      => true,
        'mail_host' => 'smtp.sendgrid.net',
        'mail_port' => '2525',
        'mail_user' => 'xxx',
        'mail_pass' => 'xxx',
    ],
];

$_config['datesettings']['timezone'] = 'Asia/Calcutta';

$_config['members.login_fields']                  = ['username'];
$_config['members']['default_user_group']         = 3;
$_config['members']['enable_online_registration'] = true;
$_config['members']['activation']                 = false;

//creating the system config
$_config['theme_config'] = [
    'default'  => 'volt',
    'computer' => [
        'default'            => 'volt',
        'members:changepass' => 'volt',
        'members:profile'    => 'volt',
        'members:*'          => 'volt::login',
    ],
];

$env = Configure::read('environment');
if ($env && $file = file_exists(__DIR__.'/config_'.$env.'.php')) {
    require $file;
}
