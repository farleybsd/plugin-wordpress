<?php

if('WP_UNINSTALL_PLUGIN')
{
    die;
}

global $wpdb;

$wpdb->query("DELETE FROM wp_options  where option_name='al_local-palestra_endereco'");
$wpdb->query("DELETE FROM wp_options  where option_name='al_local-palestra_cidade'");
$wpdb->query("DELETE FROM wp_options  where option_name='al_local-palestra_data'");