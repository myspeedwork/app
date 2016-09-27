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
     | Enable sending email
     |----------------------------------------------------------------------------
     |
     | You can enable or disble sending emails in real. All Sms will be logged
     | if logging enabled in email log table in database.
     */
    'enable' => true,

    /*
     |----------------------------------------------------------------------------
     | Log configuration
     |----------------------------------------------------------------------------
     |
     | Enable or disable the email logging. Each email sent from the system will
     | be logged in database in addon_email_logs table.
     | You can able to disable the logging of perticular mails by providing the
     | tag log => false in while sending email
     */
    'log' => true,

    /*
     |----------------------------------------------------------------------------
     | From which location templates should pick
     |----------------------------------------------------------------------------
     |
     | You can create multiple email templates for different languages.
     */
    'locale' => 'en',

    /*
     |----------------------------------------------------------------------------
     | Email templates theme
     |----------------------------------------------------------------------------
     |
     | All content from email template will be placed in theme and sent.
     | In this way you can keep the email content same across app and can be changed
     | design for specific email.
     */
    'theme' => 'emailer.tpl',

    /*
     |----------------------------------------------------------------------------
     | Default Mail service provider
     |----------------------------------------------------------------------------
     |
     | Set the default email service provider here. can be overwrite for each email
     | by specifying the provider tag
     |
     */
    'provider' => 'php',
    /*
     |
     | Enable checking black listing table before sending an email
     | If email address exists in the list mail will not be sent to that email.
     |
     */
    'blacklist' => false,

    /*
     |----------------------------------------------------------------------------
     | From Configuration
     |----------------------------------------------------------------------------
     |
     | Change the values to reflect from name & from email address.
     | From can be overwrite for each mail or for provider
     */
    'from' => [
        'name'  => '%app.name%',
        'email' => 'no-reply@webadress.com',
    ],

    /*
     |----------------------------------------------------------------------------
     | List of Email service providers
     |----------------------------------------------------------------------------
     |
     | Here you may configure the multiple email providers
     */
    'providers' => [
        'php' => [
            'driver' => 'PHPMailer',
        ],

        'phpmailer' => [
            'driver'   => 'PHPMailer',
            'smtp'     => false,
            'host'     => 'smtp.hostname.net',
            'port'     => 2525,
            'username' => 'smpp-username',
            'password' => 'smpp-password',
        ],
    ],
];
