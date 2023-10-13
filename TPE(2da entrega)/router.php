<?php 
define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

require_once 'controller/table.controller.php';
// home    ->         tableController->showCategorias();
// lugares   ->       tableController->showPorCategorias();
// listado  ->        tableController->showLugares($id);
// finalizar/:ID  ->    
// login ->             
// logout ->            
// auth                 


$action = 'home';

if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

switch($params[0]) {
    case 'home':
        $controller = new tableController();
        $controller->showCategorias();
        break;

    case 'lugares' :
        $controller = new tableController();
        $controller->showPorCategorias($params[1]);
        break;
    case 'listado' :
        $controller = new tableController();
        $controller->showLugares();
        break;
}