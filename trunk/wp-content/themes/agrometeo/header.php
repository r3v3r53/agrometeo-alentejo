<!DOCTYPE html <?php bloginfo( 'html_type' );?>>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="description" content="<?php bloginfo('description'); ?>">
<meta name="title" content="<?php bloginfo('name'); ?>">
<meta name="language" content="<?php bloginfo('language'); ?>">
<meta name="keywords" content="<?php bloginfo('description'); ?>">


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
	$titulo = esc_attr( get_bloginfo( 'name', 'display' ));
?>
</head>

<body <?php body_class();?>>

<div id="header">
 <div id="headerimg">
   <h1>
<a href="<?php echo home_url( '/' ); ?>" title="<?php echo $titulo; ?>" rel="home"><?php 
if( get_header_image() == ""){
bloginfo( 'name' ); }
else {
	printf("<img src='%s' title='%s' alt='%s'>",get_header_image(), $titulo, $titulo);}?></a>
   </h1>
 <div class="description">
   <a href="<?php echo get_option('home'); ?>">
     <?php bloginfo('description'); ?>
   </a>
  </div>
 </div>
</div>

<?php wp_nav_menu( ); ?>