<?php if ( is_singular() ) wp_enqueue_script( "comment-reply" ); ?>

<?php wp_list_comments( $args ); ?>
<?php wp_link_pages( $args ); ?>
<div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
<?php the_post_thumbnail()?>
 <?php comment_form(); ?>
<?php paginate_links()?>
<?php paginate_comments_links()?>