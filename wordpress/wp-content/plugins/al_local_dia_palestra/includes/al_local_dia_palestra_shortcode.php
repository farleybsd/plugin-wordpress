<?php

//Shortcode e Google Maps

add_shortcode('al_local_dia_palestra','al_local_dia_palestra_codigo_gerado');

function al_local_dia_palestra_codigo_gerado()
{
    $endereco = urlencode(get_option('al_local-palestra_endereco'));
    $cidade =   urlencode(get_option('al_local-palestra_cidade'));

    return '<div class="mapouter">
            <div class="gmap_canvas">
            <iframe width="100%" height="500" id="gmap_canvas" 
            src="https://maps.google.com/maps?q='. esc_attr($endereco) . esc_attr($cidade) .'&t=&z=13&ie=UTF8&iwloc=&output=embed" 
            frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
            </iframe>
            </div>
            </div>' ;
}