<?php

$_config['use_power'] = true;

$_config['app']['name'] = 'Speedwork';

$_config['seo'] = [
    'seo'    => ['enable' => true],
    'router' => ['enable' => true],
];

$_config['public_permissions'] = [
    'cron:**',
];

$_config['mail'] = [
    'enable'     => false,
    'blacklist'  => true,
    'from_name'  => 'Speedwork',
    'from_email' => 'no-reply@speedwork.com',
    'log'        => true,
    'smtp'       => false,
    'mail_host'  => 'xxxx',
    'mail_port'  => '2525',
    'mail_user'  => 'xxxx',
    'mail_pass'  => 'xxxx',
];

$_config['datesettings']['timezone'] = 'Asia/Calcutta';

Configure::write('members.login_fields', ['username']);

$_config['members']['login_fields']               = ['username'];
$_config['members']['default_user_group']         = 3;
$_config['members']['enable_online_registration'] = true;
$_config['members']['activation']                 = false;

$_config['Security']['cipherSeed'] = 'DYhG93b0qyJfIxfdfers2gufehVoUub';
$_config['salting']                = true;

//fkuserid tables
$_config['event_tables'] = [
    'api_users',
    'user_login_history',
    'user_options',
    'whitelist_domains',
    'user_social',
    'user_contact_details',
];

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

//$_config['offline'] = json_decode('{"is_offline":"1","key":"sinfini","theme":"","offline_msg":"This site is presently in updating stage.<br\/>We will be back soon. Sorry for inconvenience..."}', true);

$_config['on_login']     = '/index.php';
$_config['after_logout'] = '/index.php';

Configure::write('Cache.disable', false);

if (!defined('_IMG_URL') && defined('MURL')) {
    define('_IMG_URL', MURL.'/public/uploads/');
}
