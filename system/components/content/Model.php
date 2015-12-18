<?php

/**
 * This file is part of the Speedwork package.
 *
 * @link http://github.com/speedwork
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Components\Content;

use Speedwork\Core\Model as BaseModel;

/**
 * @author sankar <sankar.suda@gmail.com>
 */
class Model extends BaseModel
{
    public function getContent($post_id)
    {
        if (!$post_id) {
            return [];
        }

        return $this->database->find('#__core_content', 'first', [
            'conditions' => ['post_id' => $post_id, 'status' => 1],
            ]
        );
    }
}
