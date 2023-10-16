<?php
require_once './app/model/auth.model.php';
require_once './app/view/auth.view.php';
require_once './app/helper/auth.helper.php';

class authController{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new authModel();
        $this->view = new authView();
    }
    public function showLogin(){
        $this->view->showLogin();
    }

    public function auth() {
        $user = $_POST['user'];
        $password = $_POST['password'];
        if(!empty($user) || !empty($password)){

        $usuario = $this->model->getByUser($user);
            var_dump($usuario);
        if ($usuario && password_verify($password, $usuario->password)) {

            AuthHelper::login($usuario);
            header("Location:" . BASE_URL);
        } else {
            $this->view->showLogin('Usuario inválido');
        }
    }
}

    public function logout() {
        AuthHelper::logout();
        header('Location: ' . BASE_URL);    
    }

}


