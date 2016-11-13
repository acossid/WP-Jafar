<?php get_header();?>

<section id="content" class="container">
    <?php if (have_posts()){  ?>

            <div id="posts" class="posts">

     <?php
            while (have_posts()){
                the_post();
    ?>
            
            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

                <?php 
                    if(has_post_thumbnail()) {
                        echo '<div class="col-md-3">';
                        the_post_thumbnail("thumbnail_annonce");
                        echo '</div>';
                    }
                ?>

                <div class="entry-inner col-md-6">
                    <div class="entry-inner-content">
                        
                        <?php the_title( '<h2 class="entry-title"></h2>' ); ?>
                    
                        <?php the_excerpt(); ?>

                        <div class="ville"> Lieu de résidence : <?php the_field('ville') ?></div>

                        <div class="prix"> Prix à l'achât (pardon) : <?php the_field('prix') ?></div>
                        
                    </div><!-- .entry-inner-content -->
                </div><!-- .entry-inner -->

                <a class="cover-link" href="<?php the_permalink(); ?>"></a>

            </article>

    <?php
            }}
            else {
    ?>
       
       Nous n'avons pas trouvé d'article répondant à votre recherche
    
    <?php
        }
    ?>
    </div><!-- .posts -->
</section> <!-- /content -->

<?php get_footer();?>