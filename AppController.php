<?php

/*
 * This file is part of the Speedwork package.
 *
 * (c) Sankar <sankar.suda@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code
 */

namespace App;

use Speedwork\Core\Controller;
use Speedwork\Core\Di;

/**
 * Application Controller will be called on every request.
 *
 * @author sankar <sankar.suda@gmail.com>
 */
class AppController extends Di
{
    public function beforeRender()
    {
        $is_api_request = $this->get('is_api_request');

        if ($is_api_request) {
            return true;
        }

        $this->loadForWeb();
        //$this->noty();
    }

    public function index()
    {
    }

    private function loadForWeb()
    {
        $this->get('resolver')->helper('events')->attach();
        $this->get('resolver')->helper('metainfo')->index();

        $components = config('app.components');
        if (empty($components)) {
            $components = [
                '' => 'content.welcome',
            ];
        }

        $this->assign('component', $components[$this->option]);

        $this->get('resolver')->widget('speedwork.jquery');
        $this->get('resolver')->widget('nprogress');
        $this->get('resolver')->widget('bootstrap');
        $this->get('resolver')->widget('speedwork');
        $this->get('resolver')->widget('noty');
        $this->get('resolver')->widget('qtip');
        $this->get('resolver')->widget('fontAwsome');
        $this->get('resolver')->widget('IonicIcons');
        $this->get('resolver')->widget('speedwork.metis');

        $app = config('app');

        //add some extra meta tags
        $this->get('template')->setMeta('robots', 'index, follow');

        //open graph data
        $this->get('template')->setMeta('og:site_name', $app['name'], 'property');
        $this->get('template')->setMeta('og:url', _URL, 'property');
        $this->get('template')->setMeta('og:image', config('location.theme').'images/social.png', 'property');
        $this->get('template')->setMeta('og:title', $app['title'], 'property');
        $this->get('template')->setMeta('og:description', $app['descn'], 'property');
        $this->get('template')->setMeta('og:type', 'product', 'property');

        $this->get('template')->setMeta('twitter:card', 'summary_large_image', 'property');
        $this->get('template')->setMeta('twitter:image', config('location.theme').'images/social.png', 'property');
        $this->get('template')->setMeta('twitter:title', $app['title'], 'property');
        $this->get('template')->setMeta('twitter:description', $app['descn'], 'property');
        $this->get('template')->setMeta('twitter:site', '@'.$app['name'], 'property');

        $environment = $app['env'];
        if ($environment == 'prod' && $app['analytics']) {
            $google = $this->get('resolver')->helper('Ga');
            $google->add($app['analytics']);
        }
    }

    public function noty()
    {
        $noty = $this->get('resolver')->helper('notify.noty');
        $this->set('noty', $noty);
        $this->assign('noty_unread', $noty->unreadCount());
    }
}
