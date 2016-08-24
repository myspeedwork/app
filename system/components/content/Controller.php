<?php

/**
 * This file is part of the Speedwork package.
 *
 * @link http://github.com/speedwork
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */
namespace System\Components\Content;

use Speedwork\Core\Controller as BaseController;

/**
 * @author sankar <sankar.suda@gmail.com>
 */
class Controller extends BaseController
{
    public function index()
    {
        $id = $this->get['id'];

        $row = $this->model->getContent($id);

        $modifier = $this->get('resolver')->helper('content');

        $row['post_content'] = $modifier->index($row['post_content']);
        $row['meta']         = json_decode($row['meta'], true);

        $this->get('template')->setTitle($row['post_title']);

        return [
            'row' => $row,
        ];
    }

    public function welcome()
    {
    }
}
