    <?php
    require_once './app/model/table.model.php';
    require_once './app/view/table.view.php';

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
