<?php

add_action('wp_enqueue_scripts','al_local_dia_palestra_adiciona_scripts');

function al_local_dia_palestra_adiciona_scripts()
{
    //JS
    wp_enqueue_script(
        'jquery_countdown_lib',
        plugins_url() . '/al_local_dia_palestra/js/jquery.countdown.min.js',
        array('jquery'),
        null,
        null,
        true
    );
    wp_enqueue_script(
        'al_local_dia_palestra_contagem_regressiva',
        plugins_url() . '/al_local_dia_palestra/js/al_local_dia_palestra_contagem_regressiva.js',
        null,
        null,
        true
    );
    //css
    wp_enqueue_style(
        'al_local_dia_palestra_estilos',
        plugins_url() . '/al_local_dia_palestra/css/al_local_dia_palestra_estilos.css'
    );

    //Data Bind Js
    $data = get_option('al_local-palestra_data');
    wp_localize_script(
        'al_local_dia_palestra_contagem_regressiva',
        'data',
        $data
    );
}