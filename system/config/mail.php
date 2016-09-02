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
    'enable' => true,
    'log'    => true,
    /*
     |
     | Enable checking black listing table before sending an email
     | If email address exists in the list mail will not be sent to that email.
     |
     */
    'blacklist' => false,
    'from'      => [
        'name'  => _SITENAME,
        'email' => 'no-reply@infimart.com',
    ],
    'provider'  => 'PHPMailer',
    'phpmailer' => [
        'smtp'      => false,
        'mail_host' => 'smtp.hostname.net',
        'mail_port' => '2525',
        'mail_user' => 'smpp-username',
        'mail_pass' => 'smpp-password',
    ],
];
