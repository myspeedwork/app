<?php

/**
 * This file is part of the Speedwork package.
 *
 * (c) 2s Technologies <info@2stech.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace System\Helpers;

use Configure;
use Registry;

/**
 *  Helper Class to manipulate data before delete.
 *
 * @since  0.0.1
 */
class DeleteHelper
{
    private $enable = true;
    private $column = 'fkuserid';

    public function beforeDelete(&$query = [])
    {
        //disable filetrs for phones
        if ($this->enable == false || $query['ignore'] === true) {
            return $query;
        }

        $table  = str_replace('#__', '', $table);

        $agent_id = Registry::get('agent_id');

        $agent_table  = ['users'];

        if ($agent_id && !in_array($table, $agent_table)) {
            $query = $this->changeConditions($query, $agent_id);
        }

        $tables    = Configure::read('event_tables');
        $userid    = Registry::get('userid');

        if (empty($userid) || !in_array($table, $tables)) {
            return $query;
        }

        $alias = ($query['alias']) ? $query['alias'].'.' : '';

        $conditions[] = [$alias.$this->column => $userid];

        $query['conditions']  = $conditions;

        return true;
    }

    /**
     * [changeConditions description].
     *
     * @param [type] $query    [description]
     * @param [type] $agent_id [description]
     *
     * @return [type] [description]
     */
    private function changeConditions(&$query, $agent_id)
    {
        $userid       = Registry::get('userid');
        $conditions   = $query['conditions'];
        $alias        = ($query['alias']) ? $query['alias'].'.' : '';

        // Replacing the userid with agent id
        foreach ($conditions as $key => &$value) {
            $value = str_replace($userid, $agent_id, $value);
        }

        $query['conditions']  = $conditions;

        return $query;
    }
}
