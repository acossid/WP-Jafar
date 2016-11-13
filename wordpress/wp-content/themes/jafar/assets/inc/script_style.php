<?php 


function ajout_scripts() {

		// enregistrement d'un nouveau script
		wp_register_script('bootstrap_script', get_template_directory_uri() . '/assets/scripts/bootstrap.min.js', array('jquery'),'1.0', true);

		// appel du script dans la page
		wp_enqueue_script('bootstrap_script');

		// enregistrement d'un nouveau script
		wp_register_script('slick_script', get_template_directory_uri() . '/assets/scripts/slick/slick.min.js', array('jquery'),'1.0', true);

		// appel du script dans la page
		wp_enqueue_script('slick_script');

		// enregistrement d'un nouveau script
		wp_register_script('main_script', get_template_directory_uri() . '/assets/scripts/main.js', array('jquery'),'1.0', true);

		// appel du script dans la page
		wp_enqueue_script('main_script');

		// enregistrement d'un nouveau style
		wp_register_style( 'bootstrap_style', get_template_directory_uri() . '/assets/styles/bootstrap.min.css' );

		// appel du style dans la page
		wp_enqueue_style( 'bootstrap_style' );

		// enregistrement d'un nouveau style
		wp_register_style( 'slick_style', get_template_directory_uri() . '/assets/styles/slick/slick.css' );

		// appel du style dans la page
		wp_enqueue_style( 'slick_style' );

		// enregistrement d'un nouveau style
		wp_register_style( 'slick-theme_style', get_template_directory_uri() . '/assets/styles/slick/slick-theme.css' );

		// appel du style dans la page
		wp_enqueue_style( 'slick-theme_style' );

		// enregistrement d'un nouveau style
		wp_register_style( 'main_style', get_template_directory_uri() . '/assets/styles/main.css' );

		// appel du style dans la page
		wp_enqueue_style( 'main_style' );

		// enregistrement d'un nouveau style
		wp_register_style( 'stylesheet.css', get_template_directory_uri() . '/assets/fonts/stylesheet.css' );

		// appel du style dans la page
		wp_enqueue_style( 'stylesheet.css' );

	}

	add_action( 'wp_enqueue_scripts', 'ajout_scripts' );