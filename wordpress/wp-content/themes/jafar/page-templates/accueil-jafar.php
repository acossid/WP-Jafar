<?php 
/*
Template Name: Page accueil Jafar
*/
get_header(); //appel du template header.php  ?>

	<div class="jafar-slogan_img">
		<div class="jafar-slogan"> <p>Le seul candidat pour 2017</p> </div>
	</div>
	
	<div class="intro">
		<div class="intro-title">
			<span>« </span> Soyez sans crainte, tout se passera pour le mieux<span> »</span>
		</div>

		<div class="intro-content">
			<span>Jafar ben Yahya Barmaki</span>, fils du vizir persan du califeabbasside Hâroun ar-Rachîd. Il est un membre de la famille influente des Barmécides, dirigeants du monastère Nava Vihara. <br>
			Son engagement s’explique par des valeurs : celles du gaullisme. Et par une rencontre : celle de Jacques Chirac. « Mon Chichi » comme il aime l’appeler.
		</div>

		<div class="intro-img"></div>
	</div>

	<div class="actu">
		<div class="actu-title"> Actualités </div>
		<div class="actu-container">
			<?php
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
			            <div class="actus" id="annonces_<?php the_ID(); ?>">

			                <span class="type"> <?php the_field('type') ?></span>
			                <?php the_title( sprintf( '<span class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></span>' ); ?>
			                
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
	</div>

	<div class="join">
		
		<div class="join-form">
			<div class="form-title"> Rejoins le mouvement <br> Jafar 2017 </div>

			<div class="form-input_container">
				<input class="form-input" type="email" placeholder="e-mail">
				<input class="form-input" type="text" placeholder="code postal">
			</div>
			<input class="form-submit" type="submit" value="Rejoindre">
		</div>

		<div class="join-img"></div>

	</div>



<?php get_footer(); //appel du template footer.php ?>