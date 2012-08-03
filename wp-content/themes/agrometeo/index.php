<?php 
get_header(); 
paginate_links();
dynamic_sidebar();
get_sidebar();
the_tags('<ul><li>','</li><li>','</li></ul>');
get_footer();
?>
