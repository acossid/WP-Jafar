<!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo( 'charset' ); ?>" />
        <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">

        <!--
            Tout le contenu de la partie head de mon site
         -->


        <?php wp_head(); ?>
    </head>
    <body <?php body_class(); ?>>
        <header id="header">

        <nav class="navbar navbar-default">
            <div class="navbar_container">
                <div class="navbar_menu">
                <?php // SYNTAXE : wp_nav_menu( array $args = array() )
                    $args=array(
                        'theme_location' => 'header', // nom du slug
                        'menu' => 'header_fr', // nom à donner cette occurence du menu
                        'menu_class' => 'menu_header', // class à attribuer au menu
                        'menu_id' => 'menu_id' // id à attribuer au menu
                        // voir les autres arguments possibles sur le codex
                    );
                    wp_nav_menu($args);
                ?>

                <div class="navbar-text donner_button"> <a target="_blank" href="https://paypal.me/PierredeGourcy/25000">DONNER</a> </div>
                </div>
            </div>
          </nav>

        </header>