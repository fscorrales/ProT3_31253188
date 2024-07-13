<?php
namespace App\Controllers;
use App\Models\usuarios_model;
use CodeIgniter\Controller;


class usuarios_controller extends Controller{

    public function __construct(){
        helper(['form', 'url']); //helper es una biblioteca de codeIgniter
    }

    public function create() {
        $data['titulo'] = 'Registro';
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('back/usuario/registro'); //cargamos desde el back
        echo view('front/footer_view');
    }

    public function formValidation() {
        $input = $this->validate([
            'nombre'   => 'required|min_length[3]',
            'apellido' => 'required|min_length[3]|max_length[25]',
            'usuario'  => 'required|min_length[3]',
            'email'    => 'required|min_length[4]|max_length[100]|valid_email|is_unique[usuarios.email]',
            'pass'     => 'required|min_length[3]|max_length[10]',
        ],);

        $formModel = new usuarios_model();
        if(!$input) {
            $data['titulo'] = 'Registro';
            echo view('front/head_view', $data);
            echo view('front/navbar_view');
            echo view('back/usuario/registro', ['validation' => $this->validator]); 
            echo view('front/footer_view');
        } else {
            $formModel->save([
                'nombre'   => $this->request->getVar('nombre'),
                'apellido' => $this->request->getVar('apellido'),
                'usuario'  => $this->request->getVar('usuario'),
                'email'    => $this->request->getVar('email'),
                //password_hash para encriptar en único sentido (no se puedo desencriptar)
                'pass'     => password_hash($this->request->getVar('pass'), PASSWORD_DEFAULT),
            ]);

            // flashdata funciona solo en redirigir la funcion en el controlador en la vista de carga
            session()->setFlashdata('success', 'Usuario registrado exitosamente');
            return $this->response->redirect('/login');
        }
    }

}