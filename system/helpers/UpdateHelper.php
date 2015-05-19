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
use Utility;

/**
 *  Helper Class to manipulate data before update.
 *
 * @since  0.0.1
 */
class UpdateHelper
{
    private $enable = true;
    private $column = 'fkuserid';

    public function beforeUpdate(&$query = [], $details = [])
    {
        $query['fields'] = Utility::stripTags($query['fields']);

        if ($this->enable === false || $details['ignore'] === true) {
            return $query;
        }

        $table  = str_replace('#__', '', $query['table']);
        $tables = Configure::read('event_tables');

        $agent_id = Registry::get('agent_id');

        $agent_table  = ['users','user_contact_details'];

        if ($agent_id && in_array($table, $agent_table)) {
            $query = $this->changeConditions($query, $agent_id);
        }

        $userid = Registry::get('userid');

        if (empty($userid) || !in_array($table, $tables)) {
            return $query;
        }

        $agent_id = Registry::get('agent_id');

        $alias = ($query['alias']) ? $query['alias'].'.' : '';

        $conditions   = $query['conditions'];
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
        $userid = Registry::get('userid');

        $conditions = $query['conditions'];

        foreach ($conditions as &$value) {
            $value = str_replace($userid, $agent_id, $value);
        }

        $query['conditions']  = $conditions;

        return $query;
    }
}
