<?php

class tableView {

    public function showCategorias ($categorias) {

        $count = count($categorias);

        require './templates/listadecategorias.phtml';

    }

    public function showLugares ($lugares) {
        $count = count($lugares);

        require './templates/listalugares.phtml';

    }

};