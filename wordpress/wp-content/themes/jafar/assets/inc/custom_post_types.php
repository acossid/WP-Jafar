<?php 

	add_action('init', 'create_custom_post_type_annonces');

	function create_custom_post_type_annonces() {
		
		$labels = array(
		        'name'               => 'Annonces',
		        'singular_name'      => 'Annonce',
		        'all_items'          => 'Toutes les annonces',
		        'add_new'            => 'Ajouter une annonce',
		        'add_new_item'       => 'Ajouter une nouvelle annonce',
		        'edit_item'          => "Modifier annonce",
		        'new_item'           => 'Nouvelle annonce',
		        'view_item'          => "Voir l'annonce",
		        'search_items'       => 'Trouver une annonce',
		        'not_found'          => 'Pas de résultat',
		        'not_found_in_trash' => 'Pas de résultat',
		        'parent_item_colon'  => 'Annonce parente:',
		        'menu_name'          => 'Annonces',
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
		        'menu_icon'           => 'dashicons-format-chat',
		        'show_in_nav_menus'   => true,
		        'publicly_queryable'  => true,
		        'exclude_from_search' => false,
		        'has_archive'         => false,
		        'query_var'           => true,
		        'can_export'          => true,
		        'rewrite'             => array( 'slug' => 'annonce' ),
		   //      'capabilities' => array(
					// 'edit_annonce'          => 'edit_annonce',  
					// 'create_annonces'       => 'edit_annonces', 
				 //  ),
		    );
		 register_post_type('annonce', $args);
	}
