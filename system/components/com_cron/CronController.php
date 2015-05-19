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

use Controller;

// if (php_sapi_name() !='cli') exit;

/**
 * @author sankar <sankar.suda@gmail.com>
 */
class CronController extends Controller
{
    public function beforeRender()
    {
        set_time_limit(0);
    }
}
