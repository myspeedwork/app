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

use Speedwork\Container\BootableInterface;
use Speedwork\Container\Container;
use Speedwork\Container\ServiceProvider;

class AppServiceProvider extends ServiceProvider implements BootableInterface
{
    public function register(Container $app)
    {
    }

    public function boot(Container $app)
    {
        $this->loadForWeb($app);
    }

    private function loadForWeb($app)
    {
        $app['resolver']->helper('events')->attach();
        $app['resolver']->helper('metainfo')->index();

        $components = $app['config']->get('app.components');
        if (empty($components)) {
            $components = [
                '' => 'content.welcome',
            ];
        }

        $app['view.engine']->assign('component', $components[$app['option']]);

        $app['resolver']->widget('speedwork.jquery');
        $app['resolver']->widget('nprogress');
        $app['resolver']->widget('bootstrap');
        $app['resolver']->widget('speedwork');
        $app['resolver']->widget('noty');
        $app['resolver']->widget('qtip');

        $config = $app['config']->get('app');

        //add some extra meta tags
        $app['template']->setMeta('robots', 'index, follow');

        //open graph data
        $app['template']->setMeta('og:site_name', $config['name'], 'property');
        $app['template']->setMeta('og:url', $config['url'], 'property');
        $app['template']->setMeta('og:image', config('location.theme').'images/social.png', 'property');
        $app['template']->setMeta('og:title', $config['title'], 'property');
        $app['template']->setMeta('og:description', $config['descn'], 'property');
        $app['template']->setMeta('og:type', 'product', 'property');

        $app['template']->setMeta('twitter:card', 'summary_large_image', 'property');
        $app['template']->setMeta('twitter:image', config('location.theme').'images/social.png', 'property');
        $app['template']->setMeta('twitter:title', $config['title'], 'property');
        $app['template']->setMeta('twitter:description', $config['descn'], 'property');
        $app['template']->setMeta('twitter:site', '@'.$config['name'], 'property');

        $environment = $config['env'];
        if ($environment == 'prod' && $config['analytics']) {
            $google = $app['resolver']->helper('Ga');
            $google->add($config['analytics']);
        }
    }

    public function noty()
    {
        $noty = $this->app['resolver']->helper('notify.noty');
        $this->set('noty', $noty);
        $this->assign('noty_unread', $noty->unreadCount());
    }
}
