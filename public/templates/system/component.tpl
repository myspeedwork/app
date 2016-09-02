{* include css files *}
{speed template="styleSheet" params="styles.css"}
{* include js files *}
{speed template="setBase" params="','_parent"}
<!DOCTYPE html>
<html lang="en">
    <head>
        <speed:include type="header" />
    </head>
    <body>
        <center>
        <div class="content">
            <speed:include type="component" />
        </div>
        <speed:include type="footer" />
        </center>
    </body>
</html>