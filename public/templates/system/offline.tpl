<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <title>{$sitename} offline</title>
    </head>
    <body class="neutral-dialog">
        <div id="container">
            <div id="dialog">
                <header>
                    <h1>Updating stage</h1>
                </header>
                <div class="sb clearfix">
                    <div class="span24">
                        <p>{$config.offline.message"}</p>
                    </div>
                </div>
            </div>
            <div class="vertical-helper"></div>
            <!-- dialog -->
        </div>
        <!-- container -->
                {literal}
        <style type="text/css">
        body {
        line-height: 18px;
        font-size: 14px;
        color: #444;
        font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
        background-color: #e8e8e8;
        }
        html, body {
        height: 100%;
        padding: 0;
        margin: 0;
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        }
        body * {
        margin: 0;
        padding: 0;
        }
        .deleted{display:none;}
        a {
        color: #3084CA;
        }
        p {
        margin: 0 0 15px 0;
        color: #666;
        }
        #container {
        height: 100%;
        width: 100%;
        display: block;
        text-align: center;
        }
        #dialog {
        white-space: normal;
        text-align: left;
        }
        #dialog {
        display: inline-block;
        vertical-align: middle;
        white-space: normal;
        text-align: left;
        min-width: 400px;
        max-width: 1000px;
        background: #fff;
        border: none;
        border-bottom: 1px solid #ccc;
        border-right: 1px solid #ccc;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        -moz-box-shadow: 0 0 10px rgba(0,0,0,0.2);
        -webkit-box-shadow: 0 0 10px rgba(0,0,0,0.2);
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        border-radius: 3px;
        padding:10px;
        }
        .vertical-helper {
        display: inline-block;
        vertical-align: middle;
        height: 100%;
        }
        #dialog header {
        border-bottom: 1px solid #eee;
        margin-bottom: 20px;
        padding:10px;
        }
        .clearfix, .row, .header-row {
        display: block;
        }
        .neutral-dialog #dialog .actions {
        text-align: left;
        }
        #dialog .actions, .section.buttons, .section.shipping-rate-buttons {
        text-align: right;
        border-top: 1px solid #ededed;
        padding-top: 15px;
        padding: 15px 20px;
        }
        h1{ font-size:22px; font-weight:bold;}
        </style>
        {/literal}
    </body>
</html>