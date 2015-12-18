<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href='//fonts.googleapis.com/css?family=Karla:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600italic,600,700italic' rel='stylesheet' type='text/css'>        <link rel="stylesheet" type="text/css" href="{$themecss}main.css">
    <speed:include type="header" />
    <link href="{$themebase}css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="{$themebase}css/styles.css" rel="stylesheet">
  </head>
  <body>
    <div class="navbar navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Brand</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      {speed render="component" name="{$component[0]}" view="{$component[1]}"}
    </div>
    {foreach $flash as $message}
    <div class="noty_bar noty_theme_default noty_layout_topCenter noty_info noty_closable" style="cursor: pointer; left: 474.5px; overflow: hidden; display: block;">
      <div class="noty_message">
        <span class="noty_text">{$message}</span>
        <div class="noty_close"></div>
      </div>
    </div>
    {/foreach}
    {speed render="footer"}
  </body>
</html>