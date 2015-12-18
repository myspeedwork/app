<?php

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
