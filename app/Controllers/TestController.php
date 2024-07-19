<?php
namespace App\Controllers;
use CodeIgniter\Controller;

class Test extends Controller {
    
    public function index() {
        $this -> loadViews("index");
    }
    
    public function loadViews($view=null, $data=null) {
        if($data){
            echo view("includes/header", $data); // lo que se repite en todas las vistas
            echo view($view, $data);
            echo view("includes/footer", $data); // lo que se repite en todas las vistas
        } else {
            echo view("includes/header"); // lo que se repite en todas las vistas
            echo view($view);
            echo view("includes/footer"); // lo que se repite en todas las vistas
        }
    }

    public function upload(){

        $postmodel = new PostModel();

        helper(['form', 'url']);
        $validation = \Config\Services::validation();
        $validation->setRules([
            'title' => 'required|min_length[3]',
            'intro' => 'required',
        ], 
        // Seguidamente se puede personalizar el mensaje de error
        [
            'title' => [
                'required' => 'El campo título es obligatorio',
                'min_length' => 'El campo título debe tener al menos 3 caracteres',
            ],
            'intro' => [
                'required' => 'El campo intro es obligatorio',
            ],
        ]);

        if($_POST){
            if(!$validation->withRequest($this->request)->run()){
                // form validation errors
                $erros = $validation->getErrors();
                $data['error'] = true;
                // return $this->loadViews("upload", ["validation" => $validation]);
            } else {
                // form validation passed
                $file = $this->request->getFile('banner');
                $filename = $file->getRandomName();
                if($file->isValid()){
                    // De esta forma no hay acceso publico a los archivos
                    // $file->move(WRITEPATH.'uploads', $filename);
                    // De esta forma si hay acceso publico a los archivos
                    $file->move(ROOTPATH.'public/uploads', $filename); // o donde quieras
                } 
                $_POST['banner'] = $filename;
                $_POST['slug'] = url_title($_POST['title']);
                $_POST['created_at'] = date('Y-m-d');
                // también se puede crear un array nuevo en vez de insertar $_POST
                $postmodel -> insert($_POST);
                // return $this->loadViews("upload", ["validation" => null]);
            }
        }

        $model = new TestModel();
        $data["categories"] = $model->findAll();

        echo view("upload", $data);

    }

    public function add_newsletter() {
        if($_POST['email']) {
            $newslettermodel = new NewsletterModel();
            $emails = $newslettermodel->where('email', $_POST['email'])->findAll();

            if($emails) {
                echo "E-mail already exists";
            } else {
                echo "Welcome to our newsletter";
                $id = $newslettermodel -> insert($_POST);
            }

        }
    }  

    public function post($slug=null, $id=null){

        $postmodel = new PostModel();
        $post = $postmodel -> where('id', $id) -> findAll();
        $data["post"] = $post;
        $categorymodel = new CategoryModel();
        $data["categories"] = $categorymodel -> where('id', $post[0]['category']) -> findAll();
        $this -> loadViews("post", $data);

    }
    
}