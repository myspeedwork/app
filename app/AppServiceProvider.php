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
use Speedwork\Container\EventListenerInterface;
use Speedwork\Container\ServiceProvider;
use Symfony\Component\EventDispatcher\EventDispatcherInterface;

class AppServiceProvider extends ServiceProvider implements BootableInterface, EventListenerInterface
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
        $components = [
            '' => 'content.welcome',
        ];

        $app['view.engine']->assign('component', $components[$app['option']]);

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

    public function subscribe(Container $app, EventDispatcherInterface $dispatcher)
    {
        $dispatcher->addSubscriber($app['database.request.listener']);
    }
}
