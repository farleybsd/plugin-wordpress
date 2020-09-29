<?php

$curl = curl_init();
curl_setopt($curl,CURLOPT_URL,"http://api.openweathermap.org/data/2.5/weather?q=London&appid=d3597c95bde950f61af93e939dcda58f");
curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);

$resultado = curl_exec($curl);

$resultadoArray = json_decode($resultado,true);

print_r(round($resultadoArray['main']['temp'] - 273.15));