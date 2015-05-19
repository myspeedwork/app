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

use Configure;
use Controller;
use Registry;
use Router;
use Session;
use Utility;

/**
 * Application Controller will be called on every request.
 *
 * @since  0.0.1
 *
 * @author sankar <sankar.suda@gmail.com>
 */
class AppController extends Controller
{
    public function beforeRender()
    {
        $is_api_request = Registry::get('is_api_request');

        Registry::set('FindHelpers', ['find']);
        Registry::set('SaveHelpers', ['save']);
        Registry::set('DeleteHelpers', ['delete']);
        Registry::set('UpdateHelpers', ['update']);

        if ($is_api_request != true) {
            $this->loadForWeb();
            $this->events();

            $components = Configure::read('components');
            if (empty($components)) {
                $components = [
                    '' => ['sms', 'send'],
                ];
            }

            //$this->assign('component', $components[$this->option]);

            $theme_modules = [
                'header'  => [['option' => 'menu', 'menu' => 'adminmenu']],
                'header2' => [['option' => 'menu', 'view' => 'shortmenu']],
            ];

            Configure::write('theme_modules', $theme_modules);

            // force password change for weak and older than 30 days
            $password_change = Session::read('password_change_required');
            if ($password_change === 1 && !in_array($this->view, ['changepass','login'])) {
                Utility::redirect(Router::link('index.php?option=members&view=changepass'));
            }
        }
    }

    public function index()
    {
    }

    private function loadForWeb()
    {
        // for setting the date and time
        $this->assign('time', date('l, d M Y, h:i A'));

        $this->application->widget('jui.sortable');
        $this->application->widget('jui.draggable');
        $this->application->widget('jui.droppable');

        $this->application->widget('jui.autocomplete');

        $this->application->widget('noty');
        $this->application->widget('nprogress');
        $this->application->widget('qtip', [
            'selector' => '[data-title]',
            'options'  => [
                'content' => ['attr' => 'data-title'],
                ],
            ]
        );

        $this->application->widget('jui.daterangepicker', [
            'selector' => '.ac-daterange',
            'options'  => [
                'dateFormat'   => 'd/m/yy',
                'earliestDate' => 'Today-90',
                'latestDate'   => 'Today',
                ],
            ]
        );

        $this->assign('this', $this);
        $this->template->addScriptUrl(_PUBLIC.'script.js?v=1');
        $this->template->addScriptUrl(_PUBLIC.'time.js?v=1');

        $flash = Session::flash();
        $this->assign('flash', $flash);

        $html  = '<script>';
        $html .= 'var flash = '.json_encode($flash).';';
        $html .= '</script>';

        $this->template->addCustomTag($html, 'header');

        $environment = Configure::read('environment');
        if ($environment == 'prod' && Configure::read('google_analytics')) {
            $google = $this->application->helper('Ga');
            $google->add(Configure::read('google_analytics'));
        }
    }

    private function events()
    {
        $events = $this->application->helper('events');
        $events->attach();
    }
}
