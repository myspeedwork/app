<?php

/*
 * This file is part of the Speedwork package.
 *
 * (c) Sankar <sankar.suda@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */

namespace App\Component\Content;

use Speedwork\Core\Controller as BaseController;

/**
 * @author sankar <sankar.suda@gmail.com>
 */
class Controller extends BaseController
{
    public function index()
    {
        $id = $this->query('id');

        $row = $this->model->getContent($id);

        $modifier = $this->get('resolver')->helper('content.content');

        $row['post_content'] = $modifier->index($row['post_content']);
        $row['meta']         = json_decode($row['meta'], true);

        $this->get('template')->setMeta('title', $row['post_title']);

        return [
            'row' => $row,
        ];
    }

    public function welcome()
    {
        $this->get('template')->setTitle('Welcome to '.$this->config('app.name'));
        $this->get('template')->setDescn('Let\'s start together to build awsome applications.');
        $this->get('template')->setKeywords('speedwork, framework');
    }
}
