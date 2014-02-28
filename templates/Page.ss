<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <% base_tag %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>$Title | $SiteConfig.Title</title>
        $MetaTags(false)
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

        <% require themedCss("normalize") %>
        <% require css("http://yui.yahooapis.com/pure/0.4.2/pure-min.css") %>
        <link href='http://fonts.googleapis.com/css?family=Archivo+Narrow:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <% require themedCSS("main") %>
        <% require javascript("themes/silverstripe-europe/thirdparty/modernizr-2.6.2.min.js") %>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <div class="container">
            <header class="pure-g-r" id="header">
                <div class="pure-u-5-5 logo">
                    <img src="/$ThemeDir/images/logo.png" alt="SilverStripe Logo" />
                </div>
                <nav class="pure-menu pure-menu-open pure-menu-horizontal pure-menu-5-5">
                    <ul>
                        <% loop Menu(1) %>
                            <li<% if IsSection %> class="pure-menu-selected"<% end_if %>>
                                <a href="$Link">$MenuTitle</a>
                                <% if Children %>
                                    <ul class="pure-menu-children">
                                        <% loop Children %>
                                            <li><a href="$Link">$MenuTitle</a></li>
                                        <% end_loop %>
                                    </ul>
                                <% end_if %>
                            </li>
                        <% end_loop %>
                    </ul>
                </nav>
            </header>
            <section class="event-details">
                <h2>SilverStripe Europe</h2>
                <p>6th &amp; 7th June, 2014</p>
                <p>Munich, Germany</p>
                <div class="actions">
                    <a href="#" class="pure-button silverstripe-button">More Info</a>
                    <a href="#" class="pure-button more-info">Register</a>
                </div>
            </section>

            <div id="main" class="pure-g">

                <section class="pure-u-1-2">
                    <div class="content typography">
                        $Content
                        $Form
                    </div>
                </section>

                <div class="pure-u-1-2">
                    <div class="map-holder">
                        <div id="home-map">
                            <img src="/$ThemeDir/images/placeholder-map.png" alt="$SiteConfig.Title" />
                        </div>
                    </div>
                </div>
            </div>
            <footer id="footer">
                $SiteConfig.Title
            </footer>
        </div>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <% require javascript("themes/silverstripe-europe/js/plugins.js") %>
        <% require javascript("themes/silverstripe-europe/js/main.js") %>
    </body>
</html>
