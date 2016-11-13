<?php 
/*
Template Name: Page accueil annonce
*/
get_header(); //appel du template header.php  ?>

<?php 
    get_template_part('views/slider');
?>


<section class="container">
    <?php

     $paged = (get_query_var('paged')) ? get_query_var('paged'): 1;

     $args=array(
        'post_type' => 'annonce',
        'paged' => $paged
        );

    // The Query
    $the_query = new WP_Query( $args );

    // The Loop
    if ( $the_query->have_posts() ) {
        echo '<ul>';
        while ( $the_query->have_posts() ) {
        $the_query->the_post();
        ?>
            <article class="col-md-3 col-sm-4" class="annonces" id="annonces_<?php the_ID(); ?>">

                <?php 
                    if(has_post_thumbnail()) {
                        echo '<div>';
                        the_post_thumbnail("thumbnail_annonce");
                        echo '</div>';
                    }
                ?>

                
                <?php the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' ); ?>
                
                <div class="prix"> <i>@<?php the_field('pseudo') ?></i></div>
                <div class="prix"> <?php the_field('ville') ?></div>
                <div class="prix"> <?php the_field('age') ?> ans</div>
                <div class="entry-content">
                    <?php the_excerpt(); ?>
                </div><!-- .entry-content -->
            </article>

            <?php
        }

        /* Restore original Post Data */
        wp_reset_postdata();
    } else {
        // no posts found
    }
    ?>
</section>



<?php get_footer(); //appel du template footer.php ?>

