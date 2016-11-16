<?php get_header(); //appel du template header.php  ?>

	<div class="header_single-annonce"></div>

	<section class="single-container">
	    <?php
	    if (have_posts()){
	        while (have_posts()){
	            the_post();
	    ?>
	    	<div class="single_img">
	          <?php
	              if(has_post_thumbnail())
	              {
	                echo '<div class="responsiveImage">';
	                the_post_thumbnail("thumbnail_annonce_full");
	                echo '</div>';
	              }
	          ?>
	         </div>
	         <div class="single_content">
	            <h1><?php the_title(); ?></h1>
	            <h5>Posté le <?php the_time('F jS, Y') ?></h5>
	            <p><?php the_content(); ?></p>
	            <div class="signature"> Esclave de jafar, réalisé au cachot </div>
	         </div>
	    <?php
	    }
	    }
	    else {
	    	?>
	    		Nous n'avons pas trouvé d'article répondant à votre recherche
	    	<?php
	    }
	    ?>
	</section> <!-- /content -->

<?php get_footer(); //appel du template footer.php ?>