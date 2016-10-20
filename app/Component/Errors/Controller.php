<?php

/*
 * This file is part of the Speedwork package.
 *
 * (c) Sankar <sankar.suda@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */

namespace Speedwork\Turbo\Component\Errors;

use Speedwork\Core\Controller as BaseController;

/**
 * @author sankar <sankar.suda@gmail.com>
 */
class Controller extends BaseController
{
    public function index()
    {
        header('HTTP/1.0 404 Not Found');
    }

    public function notFound()
    {
        header('HTTP/1.0 404 Not Found');
    }

    public function e404()
    {
        header('HTTP/1.0 404 Not Found');
    }

    public function offline()
    {
    }

    public function deleted()
    {
    }
}
