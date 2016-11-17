<?php get_header(); //appel du template header.php  ?>

	<div class="jafar-actu_img">
		<div class="jafar-slogan"> <p> L'actualité autour de Jafar </p> </div>
	</div>

	<div class="intro-title">
			<span>« </span> Ce que je fais pour vous <span> »</span>
		</div>

	<div class="actualite-container">
			<?php
			     $args=array(
			        'post_type' => 'annonce',
			        
			        );

			    // The Query
			    $the_query = new WP_Query( $args );

			    // The Loop
			    if ( $the_query->have_posts() ) {
			        echo '<ul>';
			        while ( $the_query->have_posts() ) {
			        $the_query->the_post();
			        ?>
			            <div class="actualites" id="annonces_<?php the_ID(); ?>">

				            <div class="actualite-img">
								<?php 
				                    if(has_post_thumbnail()) {
				                        echo '<div class="col-md-3">';
				                        the_post_thumbnail("thumbnail_actu");
				                        echo '</div>';
				                    }
				                ?>
			                </div>

			                <div class="type-actualite"> <?php the_field('type') ?></div>
			                <div class="actualite-title">
			                	<?php the_title( sprintf( '<span class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></span>' ); ?>
			                </div>
			                
			            </div>

			            <?php
			        }

			        /* Restore original Post Data */
			        wp_reset_postdata();
			    } else {
			        // no posts found
			    }
			    ?>
		</div>


<?php get_footer(); //appel du template footer.php ?>