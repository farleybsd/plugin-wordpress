<?php

add_action('admin_menu','al_local_dia_palestra_menu');

function al_local_dia_palestra_menu()
{
    add_menu_page(
        'Local Palestra',
        'Local Palestra',
        'manage_options',
        'local-palestra', // slug do menu 
        'al_local_dia_palestra_menu_pagina',
        'dashicons-location-alt',
        -1
    );
}

// contedudo da pagina ao clicar no menu

function al_local_dia_palestra_menu_pagina()
{


    ?>
    <div>
        <h1>
            Local Palestras
        </h1>
        <form method="post" action="options.php">
            <?php

                do_settings_sections('local-palestra');
                settings_fields('al_local_dia_palestra_settings');
                submit_button();
            ?>
        </form>
    </div>
    <?php


}

add_action('admin_menu','al_local_dia_palestra_secao');

function al_local_dia_palestra_secao()
{
    //seção
    add_settings_section(
        'al_local_dia_palestra_secao',
        'configuracoes do local da palestra',
        'al_local_dia_palestra_campos_secao_detalhes',
        'local-palestra' //slug do menu
    );

    // Endereço
    add_settings_field(
        'al_local-palestra_endereco',
        'Endereço',
        'al_local_dia_palestra_endereco',
        'local-palestra', // slug
        'al_local_dia_palestra_secao' //secao
    );

    register_setting(
        'al_local_dia_palestra_settings',
        'al_local-palestra_endereco' // campo
    );

    // cidade
    add_settings_field(
        'al_local-palestra_cidade',
        'Cidade',
        'al_local_dia_palestra_cidade',
        'local-palestra', // slug
        'al_local_dia_palestra_secao' //secao
    );

    register_setting(
        'al_local_dia_palestra_settings',
        'al_local-palestra_cidade' // campo
    );

    //data 

    add_settings_field(
        'al_local-palestra_data',
        'Data',
        'al_local_dia_palestra_data',
        'local-palestra', // slug
        'al_local_dia_palestra_secao' //secao
    );

    register_setting(
        'al_local_dia_palestra_settings',
        'al_local-palestra_data' // campo
    );
}

function al_local_dia_palestra_campos_secao_detalhes()
{
    ?>

    <p>Insira os dados do endereco , cidade e data da proxima palestra da Alura</p>

    <?php
}

// Função Call Back Endereco
function al_local_dia_palestra_endereco()
{
    ?>

    <input type="text" id="al_local-palestra_endereco"
            name="al_local-palestra_endereco" require>    

    <?php
}

// Funcao Call Back Cidade
function al_local_dia_palestra_cidade()
{
    ?>

    <input type="text" id="al_local-palestra_cidade"
            name="al_local-palestra_cidade" require>    

    <?php
}

// Funçao Call Back Data
function al_local_dia_palestra_data()
{
    ?>

    <input type="date" id="al_local-palestra_data"
            name="al_local-palestra_data" require>    

    <?php
}