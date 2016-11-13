<?php 

	add_action('init', 'create_custom_post_type_slides');

	function create_custom_post_type_slides() {
		
		$labels = array(
		        'name'               => 'Slides',
		        'singular_name'      => 'Slide',
		        'all_items'          => 'Toutes les slides',
		        'add_new'            => 'Ajouter une slide',
		        'add_new_item'       => 'Ajouter une nouvelle slide',
		        'edit_item'          => "Modifier la slide",
		        'new_item'           => 'Nouvelle slide',
		        'view_item'          => "Voir la slide",
		        'search_items'       => 'Trouver une slide',
		        'not_found'          => 'Pas de résultat',
		        'not_found_in_trash' => 'Pas de résultat',
		        'parent_item_colon'  => 'Slide parente:',
		        'menu_name'          => 'Slider',
		    );

		 $args = array(
		        'labels'              => $labels,
		        'hierarchical'        => false,
		        'supports'            => array( 
		        	'title','thumbnail','editor', 'excerpt', 'comments'),
		        'public'              => true,
		        'show_ui'             => true,
		        'show_in_menu'        => true,
		        'menu_position'       => 1,
		        'menu_icon'           => 'dashicons-slides',
		        'show_in_nav_menus'   => true,
		        'publicly_queryable'  => true,
		        'exclude_from_search' => false,
		        'has_archive'         => false,
		        'query_var'           => true,
		        'can_export'          => true,
		        'rewrite'             => array( 'slug' => 'slide' ),
		    );
		 
		 register_post_type('slide', $args);
	}
