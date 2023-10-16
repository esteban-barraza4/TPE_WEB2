<?php 
require_once "model.php";
class authModel{
    private $db;

    function __construct() {
        $this->db = new PDO('mysql:host=localhost;dbname=tpe-web2;charset=utf8', 'root', '');
    }

    public function getByUser($user) {
        $query = $this->db->prepare('SELECT * FROM usuarios WHERE user=?');
    
        $query->execute([$user]);
    
        $user = $query->fetch(PDO::FETCH_OBJ);
    
        return $user;
    }
}
