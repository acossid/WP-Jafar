<?php 
/*
Template Name: Page a propos
*/
get_header(); //appel du template header.php  ?>

	<div class="jafar-slogan_img jafar-apropos">
		<div class="jafar-slogan"> <p>En savoir plus sur Jafar</p> </div>
	</div>

	
	<!-- ************************ BIO ************************ -->
	<div class="bio">
		<div class="bio-img"></div>

		<div class="bio-content">
			<div class="bio-title"> Moi, je et ma personne</div>
			<div class="bio-text"> Jafar ben Yahya Barmaki (1947) était le fils du vizir persan du califeabbasside Hâroun ar-Rachîd, dont il hérita . Il est un membre de la famille influente des Barmécides,dirigeants du monastère Nava Vihara. <br>
			Son engagement s’explique par des valeurs : celles du gaullisme. Et par une rencontre : celle de Jacques Chirac.</div>
		</div>
	</div>


	<!-- ************************ VIE POLITIQUE ************************ -->
	<div class="vie-politique">
		<div class="actu-title vie-title"> Les moments clés de ma vie politique </div>
	</div>

	<div class="vie-politique_content">
		<div class="vie-img vie-img1"></div>
		<div class="vie-img vie-img2"></div>
		<div class="vie-img vie-img3"></div>
	</div>


	<!-- ************************ F.A.Q ************************ -->
	<div class="jafar-faq_img">
		<div class="jafar-slogan jafar-faq"> <p>Les questions que vous vous posez</p> </div>
	</div>

	<div class="faq-container">
			
				<?php
				    $recentPosts = new WP_Query();
				    $recentPosts->query(
				    	array( 'category_name' => 'faq', 'showposts=6')
				    );
				
				while ($recentPosts->have_posts()) : $recentPosts->the_post(); ?>
					<div class="faq-content">

						<div class="intro-title faq-title">
							<span>« </span><?php the_title(); ?><span> »</span>
						</div>

						<div class="faq-text"> <?php the_content(); ?> </div>
	
					</div>
				<?php endwhile; ?>
				
				<div class="faq-jafar faq-title"> Votre question n'est pas dans la liste ? Dommage</div>

		</div>



<?php get_footer(); //appel du template footer.php ?>