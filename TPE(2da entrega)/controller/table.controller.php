    <?php
    require_once './model/table.model.php';
    require_once './view/table.view.php';

    class tableController
    {
        private $model;
        private $view;
        public function __construct()
        {
            $this->model = new tableModel();
            $this->view = new tableView();
        }


        function showCategorias()
        {
            $categorias = $this->model->getCategorias();

            $this->view->showCategorias($categorias);
        }

        function showLugares()
        {
            $lugares = $this->model->getLugares();

            $this->view->showLugares($lugares);
        }
        function showPorCategorias($cat)
        {

            $lugares = $this->model->getLugaresPorCategoria($cat);
            $this->view->showLugares($lugares);

        }
    };
