<?php

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
