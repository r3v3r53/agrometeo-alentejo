<?php
if ( ! isset( $content_width ) ) $content_width = 900;
add_theme_support( 'automatic-feed-links' );
add_theme_support('post-thumbnails');
add_theme_support('custom-header');
add_theme_support('custom-background');
add_theme_support( 'custom-header' );
$args ="";
register_sidebar( $args );
add_editor_style();
#register_sidebar();
#comments_template();
#wp_list_comments();
#comment_form();
#wp_enqueue_script( 'comment-reply' );
#register_nav_menu();
// gets included in the site header


?>