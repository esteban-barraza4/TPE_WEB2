<?php

class tableModel {
    private $db;
    function __construct() {
        $this->db = new PDO('mysql:host=localhost;dbname=tpe-web2;charset=utf8', 'root', '');
    }

    function getCategorias(){
        $query = $this->db->prepare('SELECT * FROM categorias');
        $query->execute();
        $categorias = $query->fetchAll(PDO :: FETCH_OBJ);

        return $categorias;
    }

    function getLugares () {
        $query = $this->db->prepare('SELECT * FROM lugares');
        $query->execute();
        $lugares = $query->fetchAll(PDO :: FETCH_OBJ);

        return $lugares;
    }

}