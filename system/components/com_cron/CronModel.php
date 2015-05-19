<?php

/**
 * This file is part of the Speedwork package.
 *
 * (c) 2s Technologies <info@2stech.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Components\Cron;

use Model;

/**
 * @author sankar <sankar.suda@gmail.com>
 */
class CronModel extends Model
{
    public function getUserDetails($userid)
    {
        return $this->database->find('#__users', 'first', [
                'conditions' => ['userid' => $userid],
                'fields'     => ['name', 'username', 'email'],
            ]
        );
    }
}
