<?php 
/*
Template Name: Page programme
*/
get_header(); //appel du template header.php  ?>

	<div class="jafar-slogan_img jafar-apropos">
		<div class="jafar-slogan"> <p>Le seul candidat pour 2017</p> </div>
	</div>
	
	<div class="programme">
		<div class="intro-title">
			<span>« </span> Un programme unique, le mien<span> »</span>
		</div>

		<div class="programme-container">
			
				<?php
				    $recentPosts = new WP_Query();
				    $recentPosts->query('showposts=6');
				
				while ($recentPosts->have_posts()) : $recentPosts->the_post(); ?>
					<div class="programme-content">
						<div class="programme-num"><?php the_field('num'); ?>.</div>
						<div class="programme-text">
							<div class="programme-title"><?php the_title(); ?></div>
							<p><?php the_content(); ?></p>
						</div>

						<div class="programme-img">
							<?php 
			                    if(has_post_thumbnail()) {
			                        echo '<div class="col-md-3">';
			                        the_post_thumbnail("thumbnail_annonces");
			                        echo '</div>';
			                    }
			                ?>
		                </div>
				</div>
				<?php endwhile; ?>

		</div>
	</div>

	<div class="jafar-more_img">
		<div class="jafar-slogan jafar-more"> <p>Pourquoi moi ?</p> </div>
	</div>

	<div class="more-content">
		<span>J’aime la France</span> de toutes les fibres de mon corps et je me bats pour elle comme on se bat pour sa famille. Je veux l’aider à retrouver sa prospérité. Je veux que pour chaque Français le goût de la liberté soit plus fort que la peur de l’échec. Je veux que mes concitoyens soient toujours fiers d’être Français. <br> <br>
		Contre la démagogie et les demi-mesures, je crois au pouvoir de la vérité et de l’action. Partout, la colère et l’impatience grondent. Notre système est usé mais l’énergie française est là. En chaque citoyen, il existe une flamme qui ne demande qu’à briller. Elle attend d’être délivrée de toutes les contraintes qui bloquent le travail, l’égalité des chances, la volonté de se battre pour réussir sa vie. Il faut remettre de la liberté dans notre économie et de l’ordre dans notre République. <br> <br>
		Je propose un projet très précis de transformation nationale. <span>«Faire»</span>, n’est pas un slogan, c’est mon engagement et c’est mon programme pour la France !
	</div>


<?php get_footer(); //appel du template footer.php ?>