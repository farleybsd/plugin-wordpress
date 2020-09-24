<?php

add_action('widgets_init','al_pat_pal_registra_widget');

function al_pat_pal_registra_widget()
{
    register_widget('PatrocinadoresAlura');
}
class PatrocinadoresAlura extends WP_Widget
{
    public function __construct()
    {
        parent::__construct(
           'al_patrocinadores_palestras_widget',
           'patrocinadores Palestras',
           array('description'=>' Selecione os patrocinadores da palestra')
        );
    }

    public function form($instance)
    {
        ?>
        <p>
            <input type="checkbox" id="<?= $this->get_field_id('caelum')?>"
                   name="<?= $this->get_field_name('caelum') ?>"
                   value="1">
            <label for="<?= $this->get_field_id('caelum')?>">Caelum</label>
        </p>

        <p>
            <input type="checkbox" id="<?= $this->get_field_id('casa_do_codigo')?>"
                   name="<?= $this->get_field_name('casa_do_codigo') ?>"
                   value="1">
            <label for="<?= $this->get_field_id('casa_do_codigo')?>">Casa do Codigo</label>
        </p>

        <p>
            <input type="checkbox" id="<?= $this->get_field_id('hipsters')?>"
                   name="<?= $this->get_field_name('hipsters') ?>"
                   value="1">
            <label for="<?= $this->get_field_id('hipsters')?>">hipsters</label>
        </p>
        <?php
    }

    public function update($new_instance, $old_instance)
    {
        //error_log("vaalor do formulario" . print_r($new_instance,1));
        $instance = array();
        $instance['caelum'] = !empty($new_instance['caelum']) ? strip_tags($new_instance['caelum']) : '';
        $instance['casa_do_codigo'] = !empty($new_instance['casa_do_codigo']) ? strip_tags($new_instance['casa_do_codigo']) : '';
        $instance['hipsters'] = !empty($new_instance['hipsters']) ? strip_tags($new_instance['hipsters']) : '';
        return $instance;
    }
}