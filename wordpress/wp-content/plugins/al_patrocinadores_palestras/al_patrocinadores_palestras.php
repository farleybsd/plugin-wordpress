<?php
/*

 * Plugin Name: Patrocinadores Alura
 * Plugin URI:        https://example.com/plugins/the-basics/
 * Description:      Selecionar patrocinadores da palestra da Alura
 * Version:           1.0.0
 * Requires at least: 5.2
 * Requires PHP:      7.2
 * Author:            Farley Rufino
 * Author URI:        https://author.example.com/
 * License:           GPL v2 or later
 * License URI:       https://www.gnu.org/licenses/gpl-2.0.html
 * Text Domain:       my-basics-plugin
 * Domain Path:       /languages
*/

/* Testando a chamada do plugin Ver o Log no apache */

//error_log("Estou Dentro do plugin dos patrocinadores");

//Acesso apenas dentro do WordPress
if(!defined('ABSPATH')){
    die;
}

require_once plugin_dir_path(__FILE__) .'/includes/al_patrocinadores_palestras_widget.php' ;