<!DOCTYPE html <?php bloginfo( 'html_type' );?>>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<title><?php
	// Add the blog name.
	bloginfo( 'name' );
	echo " | ";
	bloginfo( 'description' );
	?></title>
    
<link rel="stylesheet" type="text/css" media="all" href="<?php get_stylesheet_uri() ?>" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<?php
	wp_head();
?>
</head>

<body <?php body_class(); ?>>
<a href="<?php echo home_url( '/' ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a>

<?php wp_nav_menu( ); ?>