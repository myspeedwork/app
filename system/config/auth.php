<?php

return [
    'power'       => true,
    'salting'     => true,
    'firewall'    => '', //Prefix for the permissions
    'permissions' => [
        'public' => [
            'include' => [
                'home:**',
                'content:**',
            ],
            'exclude' => [],
        ],
    ],

/*
 * Members configuration.
 *
 * Contains an array of settings to use for members configuration.
 *
 * account.enable_online_registration - User can register using form
 * account.default_user_group - Newly created users will be assigned to this group by default
 * account.activation - user must activate his account to login
 * account.email_activation - enable users activate account by clicking the link sent ot his email
 * account.sms_activation - user can activate his account by proving the activation key sent to this mobile
 * account.activation_set_password - Ask user to reset this password after successfull activation
 * account.login_fields - Database fields which are used to login to this account
 * account.auto_increment_userid - Use auto auto_increment_userid insted of random 10 digits userid
 */
    'account' => [
        'enable_online_registration' => true,
        'default_user_group'         => 5,
        'auto_increment_userid'      => false,
        'activation'                 => true,
        'sms_activation'             => false,
        'email_activation'           => true, // enable activate account
        'activation_set_password'    => false,
        'login_fields'               => ['username', 'email'],
        'social'                     => [
            'enable'  => false,
            'publish' => false,
            'login'   => false,
        ],
        'login_filters' => [
            'username' => ["/^[a-zA-Z0-9\.\-_]{6,25}$/"],
            'email'    => ["/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix"],
            'mobile'   => ['/[789][0-9]{9}/'],
        ],
        'onlogin'  => 'account',
        'onlogout' => '',
        'guest'    => 'members/login',
    ],
];
