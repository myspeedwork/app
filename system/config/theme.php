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
    'config' => [
        'default' => [
            'default' => 'starter',
            /*
             | Different layout for memebers component
             */
            'members:*'          => 'starter::login',
            'members:changepass' => 'starter',
        ],
    ],
];
