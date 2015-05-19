<?php

/**
 * This file is part of the Speedwork package.
 *
 * (c) 2s Technologies <info@2stech.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Components\Cron\Helpers;

use Helper;

/**
 * @author sankar <sankar.suda@gmail.com>
 */
class SocialPublishHelper extends Helper
{
    /**
     * Function to publish to social blog.
     *
     * @return boolen
     */
    public function execute()
    {
        $batchsize = 100;

        $joins   = [];
        $joins[] = [
            'table'      => '#__user_social',
            'alias'      => 's',
            'type'       => 'LEFT',
            'conditions' => ['q.fk_social_id = s.social_id'],
        ];

        //get queue records
        $rows = $this->database->find('#__buzz_social_queue', 'all', [
                'alias'  => 'q',
                'joins'  => $joins,
                'limit'  => $batchsize,
                'order'  => ['fk_social_id'],
                'fields' => ['queue_id', 'fk_post_id', 'fk_social_id', 'message', 'session_info', 'provider', 'status'],
            ]
        );
        if (empty($rows)) {
            return false;
        }

        $social_id    = '';
        $social_login = $this->application->helper('LinkAccount');

        foreach ($rows as $record) {
            if ($record['status'] != 1) {
                $this->cleanup($record, 2);
                continue;
            }

            $option = [];
            if (empty($social_id) || $social_id != $record['fk_social_id']) {
                $option['connect'] = true;
            }
            $social_id = $record['fk_social_id'];

            $record['message'] = $this->cleanMessage($record['message']);
            $status            = $social_login->publish($record, $record['message'], $option);

            $status = ($status['status'] != 'OK') ? '2' : '1';
            $this->cleanup($record, $status);
        }

        return true;
    }

    /**
     * Function to clean the queue and update status.
     *
     * @return boolen
     */
    private function cleanup($entry, $status)
    {
        if (empty($entry) || empty($status)) {
            return false;
        }

        $this->database->delete('#__buzz_social_queue', ['queue_id' => $entry['queue_id']]);
        $this->database->update('#__buzz_social_post', ['status' => $status, 'modified' => time()], ['post_id' => $entry['fk_post_id']]);

        return true;
    }

    /**
     * Function to clean the message text.
     *
     * @return boolen
     */
    private function cleanMessage($message)
    {
        return $message;
    }
}
