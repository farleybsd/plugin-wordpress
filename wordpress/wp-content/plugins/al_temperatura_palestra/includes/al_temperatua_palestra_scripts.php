<?php

add_action('wp_enqueue_scripts','al_temperarua_palestra_adiciona_scripts');

function al_temperarua_palestra_adiciona_scripts()
{
    wp_enqueue_style(
        'al_temperatura_palestra_estilo',
        plugins_url() . '/al_temperatura_palestra/css/al-temperatura-estilo.css'
    );
}