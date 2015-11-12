<?php

/**
 * This file is part of the Speedwork package.
 *
 * @link http://github.com/speedwork
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace App;

use Speedwork\Config\Configure;
use Speedwork\Core\Controller;
use Speedwork\Core\Di;
use Speedwork\Core\Registry;

/**
 * Application Controller will be called on every request.
 *
 * @since  0.0.1
 *
 * @author sankar <sankar.suda@gmail.com>
 */
class AppController extends Di
{
    public function beforeRender()
    {
        $is_api_request = Registry::get('is_api_request');

        if ($is_api_request) {
            return true;
        }

        $this->loadForWeb();

        $components = Configure::read('components');
        if (empty($components)) {
            $components = [
                '' => ['content', 'welcome'],
            ];
        }

        $this->assign('component', $components[$this->option]);
    }

    public function index()
    {
    }

    private function loadForWeb()
    {
        $this->get('resolver')->widget('speedwork.jquery');
        $this->get('resolver')->widget('speedwork.metis');
        $this->get('resolver')->widget('speedwork');
        $this->get('resolver')->widget('bootstrap');
        $this->get('resolver')->widget('noty');
        $this->get('resolver')->widget('nprogress');
        $this->get('resolver')->widget('qtip');
        $this->get('resolver')->widget('moment');
        $this->get('resolver')->widget('chosen');
        $this->get('resolver')->widget('jui.autocomplete');
        $this->get('resolver')->widget('jui.sortable');
        $this->get('resolver')->widget('jui.draggable');
        $this->get('resolver')->widget('jui.droppable');
        $this->get('resolver')->widget('fontAwsome');
        $this->get('resolver')->widget('IonicIcons');

        $this->assign('flash', $this->session->getFlashBag()->get('flash'));

        $environment = Configure::read('environment');
        if ($environment == 'prod' && Configure::read('google_analytics')) {
            $google = $this->get('resolver')->helper('Ga');
            $google->add(Configure::read('google_analytics'));
        }
    }
}
