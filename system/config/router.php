<?php

return [
    'routes' => [
        /*
         | 'content/(:num)/(.*)' => 'index.php?option=content&id=$1&name=$2',
        */
    ],
    'seo'    => ['enable' => true],
    'router' => ['enable' => true],
    'short'  => [
        'enable' => false,
        'config' => [
            /*
            'option:view' => ['uniqid' => 'id']
             */
        ],
        'generate' => [],
    ],
    'forward' => [
        'enable' => false,
        'site'   => [],
        'config' => [
            /*
            http://domain.com/ => [
                'option:' => true,
                'option:view' => true,
                'option:*' => true,
                '*' => true
            ]
             */
        ],
    ],
];
