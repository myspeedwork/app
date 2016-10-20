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
     |----------------------------------------------------------------------------
     | Use role_id Column
     |----------------------------------------------------------------------------
     |
     | Use role_id column in users table to store the user role. In this case user
     | Can have only one role.
     | Disable to use user_to_role table, Use can have multiple roles.
     */
    'role_id' => true,

    /*
     |----------------------------------------------------------------------------
     | Password Encryption
     |----------------------------------------------------------------------------
     |
     | Encrypt the user password with extra string along with md5 value
     | Disabling this app will use only md5 value as password string
     */
    'salting' => true,
    /*
     |----------------------------------------------------------------------------
     | Name of permissions group
     |----------------------------------------------------------------------------
     |
     | Permisions are grouped based on this name, Very usefull to differnciate the
     | permissions for user panel and admin panel
     */
    'firewall' => '',
    /*
     |----------------------------------------------------------------------------
     | Permissions
     |----------------------------------------------------------------------------
     |
     | List of permissions user roles can have. These permissions can be
     | controlled for each role and each user. You can hard code permissons here.
     | These list can be overwite from database level.
     */
    'grants' => [
        'public' => [
            'include' => [
                //'home:**',
                'content:**',
                'members:register:*',
            ],
            'exclude' => [],
        ],
    ],

    /*
     |--------------------------------------------------------------------
     | Members configuration.
     |--------------------------------------------------------------------
     | Contains an array of settings to use for members configuration.
     |
     | account.enable_online_registration - User can register using form in front end
     | account.default_user_role - Newly created users will be assigned to this group by default
     | account.activation - user must activate his account to login
     | account.email_activation - enable users activate account by clicking the link sent ot his email
     | account.sms_activation - user can activate his account by proving the activation key sent to this mobile
     | account.activation_set_password - Ask user to reset this password after successfull activation
     | account.login_fields - Database fields which are used to login to this account
     | account.auto_increment_userid - Use auto auto_increment_userid insted of random 10 digits userid
     |
     */
    'account' => [
        'enable_online_registration' => true,
        'default_user_role'          => null,
        'auto_increment_userid'      => false,
        'activation'                 => true,
        'sms_activation'             => false,
        'email_activation'           => true, // enable activate account
        'activation_set_password'    => false,
        'login_fields'               => ['username', 'email'],
        /*
         |------------------------------------------------------------------
         | Social Connect
         |------------------------------------------------------------------
         | Enable users to register using social networking sites.
         | Required Hybridauth library to work
         |
         | enable: Enable ro disable the social connect
         | publish: Take permission to publish to their account
         | login : User can login or register using social connect
         |
         */
        'social' => [
            'enable'  => false,
            'publish' => false,
            'login'   => false,
        ],
        /*
         |------------------------------------------------------------------
         | Patterns to validate User registration and other places
         |------------------------------------------------------------------
         |
         | Make these patterns compatable to javascript as using for html5 validation
         | username: username should be
         */
        'patterns' => [
            'username' => "/^[a-zA-Z0-9\.\-_]{6,25}$/",
            'email'    => "/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix",
            'mobile'   => '/[789][0-9]{9}/',
            'password' => "^\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])\S*$",
        ],
        /*
         |------------------------------------------------------------------
         | On User login and logout
         |------------------------------------------------------------------
         |
         | onlogin: Which page user should redirect to after successfull login
         | onlogout: Which page user should redirect to after logout (default: home)
         | guest: Which guest try access the page which requires permission
         */
        'onlogin'  => 'members/me',
        'onlogout' => '/',
        'guest'    => 'members/login',
    ],
];
