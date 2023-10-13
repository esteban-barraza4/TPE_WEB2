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
            $arrLugares = [
                "nombre" => "",
                "ubicacion" => "",
                "horario" => ""
            ];
            $lugares = $this->model->getLugares($cat);
            foreach ($lugares as $lugar) {
                if ($lugar->id_categoria == $cat) {


                    $arrLugares += [
                        "nombre" => $lugar->nombre,
                        "ubicacion" => $lugar->ubicacion,
                        "horario" => $lugar->horario,
                    ];
                }
            }
            var_dump($arrLugares); //$this->view->showLugares($arrLugares);
        }
    };
