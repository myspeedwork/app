<?php

/**
 * This file is part of the Speedwork package.
 *
 * (c) 2s Technologies <info@2stech.com>
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
        $this->get('resolver')->widget('bootstrap');
        $this->get('resolver')->widget('noty');
        $this->get('resolver')->widget('nprogress');
        $this->get('resolver')->widget('qtip');

        $this->get('template')->styleSheet('animate.css/animate.min.css', 'bower');
        $this->get('template')->styleSheet('font-awsome/css/font-awesome.min.css', 'bower');
        $this->get('template')->styleSheet('ionicons/css/ionicons.min.css', 'bower');
        $this->get('template')->styleSheet('metisMenu/dist/metisMenu.min.css', 'bower');

        $this->assign('flash', $this->session->getFlashBag()->get('flash'));

        $environment = Configure::read('environment');
        if ($environment == 'prod' && Configure::read('google_analytics')) {
            $google = $this->get('resolver')->helper('Ga');
            $google->add(Configure::read('google_analytics'));
        }
    }
}
