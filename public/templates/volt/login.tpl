<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="{$config.device.name} {$config.device.os} {$config.device.browser}"> <!--<![endif]-->
<head>
    <!-- Sets initial viewport load and disables zooming  -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- including the header-->
    <speed:include type="header" />
    <link rel='stylesheet' href='{$themebase}assets/lib/strap.css?v=4'>
        <link rel='stylesheet' href='{$themebase}assets/lib/styles.css?v=1'>
            <link rel='stylesheet' href='{$themebase}assets/font-awesome-4.3.0/css/font-awesome.min.css?v=4'>
                {if $config.theme.favicon}
                <link href="{$imageurl}logo/{$config.theme.favicon}" rel="shortcut icon">
                {/if}
                <link href="{$themebase}assets/apple-touch-icon.png" rel="apple-touch-icon">
            </head>
            <body class="{$option} {$view}">
                <!-- creating the header portion -->
                <header class="header-datetime text-right">
                    <span class="bold-font" id="LocalTime">{$time}</span>
                </header>
                <section class="main-section">
                    <div class="row">
                        <div class="logo text-center">
                            {if $config.theme.logo}<a href='{speed link="index.php"}'>
                            <img src="{$imageurl}logo/{$config.theme.logo}" width="180" />
                            </a>{/if}
                        </div>
                        <div class="visitor-form-well login">
                            <speed:include type="component" />
                        </div>
                    </div>
                </section>
                <!-- including the footer  -->
                <speed:include type="footer" />
            </body>
        </html>