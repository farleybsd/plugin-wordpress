<?php

class TemperaturaPalestra extends WP_Widget
{
    function __construct()
    {
        parent::__construct(
            'al_temperatura_palestra_width',
            'Temperatura Palestra',
            array('description'=>' Mostrar Temperatura no local da palestra')
        );
    }

    public function widget($args, $instance)
    {
        $cidade = urlencode(get_option('al_local-palestra_cidade'));
        $curl = curl_init();
        curl_setopt($curl,CURLOPT_URL,"http://api.openweathermap.org/data/2.5/weather?q=". $cidade ."&appid= . OPENWEATHER_API_KEY");
        curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);

        $resultado = curl_exec($curl);

        $resultadoArray = json_decode($resultado,true);

        //print_r(round($resultadoArray['main']['temp'] - 273.15));
        ?>
        <section class="container-temperatura">
           <p class="cidade-temperatura">
               <?=get_option('al_local-palestra_cidade'); ?>
           </p> 
           <p class="temperatua">
          <?= round($resultadoArray['main']['temp'] - 273.15)  ?>
           </p>
        </section>
        <?php

    }


}