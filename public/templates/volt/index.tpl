<!DOCTYPE html>
<!--[if lt IE 9]>
<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="{$config.device.name} {$config.device.os} {$config.device.browser}"> <!--<![endif]-->
<head>
    <!-- IE Compatible -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Detecting the device-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- including the header-->
    <speed:include type="header" />
    <link rel='stylesheet' href='{$themebase}assets/lib/strap.css?v=4'>
        <link rel="stylesheet" href="{$themebase}assets/css/bootstrap.css"/>
        <link rel='stylesheet' href='{$themebase}assets/lib/styles.css?v=1317'>
            <link rel='stylesheet' href='{$themebase}assets/lib/main.css?v=4'>
                <link rel='stylesheet' href='{$themebase}assets/font-awesome-4.3.0/css/font-awesome.min.css?v=4'>
                    {if $config.theme.favicon}
                    <link href="{$imageurl}logo/{$config.theme.favicon}" rel="shortcut icon">
                    {/if}
                    <link href="{$themebase}assets/apple-touch-icon.png" rel="apple-touch-icon">
                </head>
                <!-- Setting up timezone -->
                <span id="hours" style="display:none">{$hours}</span>
                <span id="minutes"  style="display:none">{$minutes}</span>
                <!-- creating the header portion -->
                <header class="viz-header">
                    <div class="container">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8" style="margin-top:10px;">
                            <b>Happy </b><span class="bold-font" id="LocalTime">{$time}</span> | <span class="orange-color">{$user.name} (username: {$user.username})</span></p>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="collapse navbar-collapse">
                                <speed:include type="position" name="header2" />
                            </div>
                        </div>
                    </div>
                </header>
                <body class="{$option} {$view}">
                    <!-- <section class="main-section container">
                        --><section class="main-section">
                            <!--Common theme -->
                            <div class="col-lg-2 col-md-2 left-nav">
                                <div class="">
                                    <div class="client-logo">
                                        {if $config.theme.logo}<a href='{speed link="index.php"}'><img src="{$imageurl}logo/{$config.theme.logo} "  width="170"/></a>{/if}
                                        <button type="button" class="hidden-lg hidden-md navbar-toggle pull-right" data-toggle="collapse" data-target=".main-navigation">
                                        <span class="sr-only"></span>
                                        <span class="fa fa-bars"></span>
                                        </button>
                                    </div>
                                    <!-- creating the menu portion -->
                                    <!-- <div class=" main-navigation ui-nav" role="navigation"> -->
                                    <div class=" main-navigation " role="navigation">
                                        <speed:include type="position" name="header" />
                                    </div>
                                </div>
                            </div>
                            <!-- including the component  -->
                            <div class="col-lg-9 col-md-9 main-shadow-content">
                                <speed:include type="component" name="{$component[0]}" view="{$component[1]}" />
                            </div>
                        </section>
                        {if $flash}
                        <div class="noty_bar noty_theme_default noty_layout_topCenter noty_info noty_closable" style="cursor: pointer; left: 474.5px; overflow: hidden; display: block;">
                            <div class="noty_message">
                                <span class="noty_text">{$flash}</span>
                                <div class="noty_close"></div>
                            </div>
                        </div>
                        {/if}
                        <!-- including the footer  -->
                        <speed:include type="footer" />
                        {* <script src='{$themebase}assets/js/vizstrap.min.js?v=4'></script> *}
                        <script src='{$themebase}assets/js/script.js?v=4'></script>
                    </body>
                </html>