<?php 

	add_action('init', 'create_custom_taxonomy');

	function create_custom_taxonomy() {
		$args = array(
	          'label' => __( 'Catégorie annonce' ),
	          'rewrite' => array( 'slug' => 'categorie-annonce' ),
	          'hierarchical' => true,
	      );
		register_taxonomy( 'categorie-annonce', array('annonce'), $args );

		$args2 = array(
	          'label' => __( 'Mots-clés' ),
	          'rewrite' => array( 'slug' => 'mot-cles-annonce' ),
	          'hierarchical' => false,
	      );
		register_taxonomy( 'mot-cles-annonce', array('annonce'), $args2 );
	}