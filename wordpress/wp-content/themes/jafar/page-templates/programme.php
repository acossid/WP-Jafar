<?php 
/*
Template Name: Page programme
*/
get_header(); //appel du template header.php  ?>

	<div class="jafar-slogan_img jafar-programme">
		<div class="jafar-slogan"> <p>Le programme parfait : Jafar</p> </div>
	</div>
	

	<!-- ************************ PROGRAMME ************************ -->
	<div class="programme">
		<div class="intro-title">
			<span>« </span> Un programme unique, le mien<span> »</span>
		</div>

		<div class="programme-container">
			
			<?php
			    $recentPosts = new WP_Query();
			    $recentPosts->query(
			    	array( 'category_name' => 'programme', 'showposts=6')
			    );
			
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
	

	<!-- ************************ MORE ************************ -->
	<div class="jafar-more_img">
		<div class="jafar-slogan jafar-more"> <p>Pourquoi moi ?</p> </div>
	</div>

	<div class="more-content">

		<span>J’incarne aujourd’hui ce que tous les français désirent</span>. C’est pourquoi je dois vous représenter. Fort de mon statut de personnalité préférée des français depuis 18 années consécutives, ma candidature a été une évidence. Même si mes admirateurs et mes détracteurs reconnaissent que je serai le meilleur, je prouverai quand même que je resterai le meilleur. Mes dons de sorcier seront évidemment mis à profit durant mon mandat. Grâce à mes pouvoirs, je serai supérieur à chacun de mes interlocuteurs, faisant de moi le chef d’Etat le plus puissant du monde. <br><br>
		Cette force me permettra de me concentrer sur mon action quotidienne, et d’éviter de mettre en place de longues et vaines réformes, dans un seul but de réformisme. En mettant en valeur les atouts existants de la France,<span> sa grandeur sera restaurée</span>. En outre, mon charisme et mon intelligence permettront d’attribuer à notre pays de nouveaux atouts, tandis que d’autres candidats ne feront que les réduire à néant. Mon dévouement pour ma personne implique que jamais je ne me mettrai en situation d’échec. La direction d’un pays comme la France ne sera donc en aucun cas un échec, mais la plus grande de mes oeuvres. 

	</div>


	<!-- ************************ SOUTIEN ************************ -->
	<div class="jafar-soutien_img">
		<div class="jafar-slogan jafar-more jafar-soutien"> <p>Ils me soutiennent</p> </div>
	</div>

	<div class="soutien-container">
			
				<?php
				    $recentPosts = new WP_Query();
				    $recentPosts->query(
				    	array( 'category_name' => 'soutien', 'showposts=6')
				    );
				
				while ($recentPosts->have_posts()) : $recentPosts->the_post(); ?>
					<div class="soutien-content">

						<div class="soutien-img">
							<?php 
			                    if(has_post_thumbnail()) {
			                        echo '<div class="col-md-3">';
			                        the_post_thumbnail("thumbnail_annonces");
			                        echo '</div>';
			                    }
			                ?>
		                </div>

						<div class="soutien-text">
							<div class="soutien-title"><?php the_title(); ?></div>
							<div class="soutien-citation">
								« <?php the_content(); ?> »
							</div>
						</div>

						
				</div>
				<?php endwhile; ?>

		</div>


<?php get_footer(); //appel du template footer.php ?>