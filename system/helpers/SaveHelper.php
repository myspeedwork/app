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
 *  Helper Class to manipulate data before save.
 *
 * @since  0.0.1
 */
class SaveHelper
{
    private $enable = true;
    private $column = 'fkuserid';

    public function beforeSave(&$data, $table, &$details = [])
    {
        $table  = str_replace('#__', '', $table);

        if ($table != 'addon_email_logs') {
            $data = Utility::stripTags($data, ['message', 'msgdata']);
        }

        //disable filetrs for phones
        if ($this->enable === false || $details['ignore'] === true) {
            return true;
        }

        $agent_id = Registry::get('agent_id');

        $agent_table  = ['users','user_contact_details'];

        if ($agent_id && in_array($table, $agent_table)) {
            $data = $this->changeConditions($data, $agent_id);
        }

        $tables = Configure::read('event_tables');
        $userid = Registry::get('userid');

        if (empty($userid) || !in_array($table, $tables)) {
            return true;
        }

        //check is assoc array
        if (is_array($data[0])) {
            foreach ($data as &$value) {
                if (!isset($value[$this->column])) {
                    $value[$this->column] = $userid;
                }
            }
        } else {
            if (!isset($data[$this->column])) {
                $data[$this->column] = $userid;
            }
        }

        return true;
    }

    /**
     * [changeConditions description].
     *
     * @param [type] $data     [description]
     * @param [type] $agent_id [description]
     *
     * @return [type] [description]
     */
    private function changeConditions($data, $agent_id)
    {
        $userid = Registry::get('userid');

        if (is_array($data[0])) {
            foreach ($data as &$value) {
                foreach ($value as $k => &$v) {
                    $v = str_replace($userid, $agent_id, $v);
                }
            }
        } else {
            foreach ($data as &$value) {
                $value = str_replace($userid, $agent_id, $value);
            }
        }

        return $data;
    }
}
