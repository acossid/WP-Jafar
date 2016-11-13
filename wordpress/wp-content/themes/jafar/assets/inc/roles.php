<?php 

add_role( 'after_switch_theme', 'create_new_role' );

	function create_new_role() {
		add_role(
		    'internaute',
		    'Internaute',
		    array(
		        'read'         => true,  // true allows this capability
		        'edit_annonce'   => true,
		        'edit_annonces'   => true,
		    )
		);
	}

	$role = get_role ('administrator');
	$role->add_cap('edit_annonces');
	$role->add_cap('edit_annonce');