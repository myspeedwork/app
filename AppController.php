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

use Speedwork\Core\Controller;
use Speedwork\Core\Di;

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
        // for setting the date and time
        $this->assign('time', date('l, d M Y, h:i A'));
        $this->assign('year', date('Y'));

        $this->get('resolver')->helper('events')->attach();
        $this->get('resolver')->helper('metainfo')->index();

        $components = config('app.components');
        if (empty($components)) {
            $components = [
                '' => ['content', 'welcome'],
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
        $this->get('template')->setMetaData('robots', 'index, follow');

        //open graph data
        $this->get('template')->setMetaData('og:site_name', $app['name'], 'property');
        $this->get('template')->setMetaData('og:url', _URL, 'property');
        $this->get('template')->setMetaData('og:image', $this->themeimages.'social.png', 'property');
        $this->get('template')->setMetaData('og:title', $app['title'], 'property');
        $this->get('template')->setMetaData('og:description', $app['descn'], 'property');
        $this->get('template')->setMetaData('og:type', 'product', 'property');

        $this->get('template')->setMetaData('twitter:card', 'summary_large_image', 'property');
        $this->get('template')->setMetaData('twitter:image', $this->themeimages.'social.png', 'property');
        $this->get('template')->setMetaData('twitter:title', $app['title'], 'property');
        $this->get('template')->setMetaData('twitter:description', $app['descn'], 'property');
        $this->get('template')->setMetaData('twitter:site', '@'.$app['name'], 'property');

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
