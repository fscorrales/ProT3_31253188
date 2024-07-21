<?php
namespace App\Controllers;
use App\Models\UsuariosModel;
use CodeIgniter\Controller;


class UsuariosController extends Controller{

    public function __construct(){
        helper(['form', 'url']); //helper es una biblioteca de codeIgniter
    }

    public function loadViews($view=null, $data=null) {
        if($data){
            echo view('front/head_view', $data); // lo que se repite en todas las vistas
            echo view('front/navbar_view'); // lo que se repite en todas las vistas
            echo view($view, $data);
            echo view('front/footer_view'); // lo que se repite en todas las vistas
        } else {
            echo view('front/head_view'); // lo que se repite en todas las vistas
            echo view('front/navbar_view'); // lo que se repite en todas las vistas
            echo view($view);
            echo view('front/footer_view'); // lo que se repite en todas las vistas
        }
    }

    public function addUsuarioForm() {
        $data['titulo'] = 'Registro';
        $data['validation'] = \Config\Services::validation();
        $this->loadViews('back/usuario/registro', $data);
    }

    public function validateForm($id = null) {

        $validation = \Config\Services::validation();
        $validation->setRules([
            'nombre'   => 'required|min_length[3]',
            'apellido' => 'required|min_length[3]|max_length[25]',
            'usuario'  => 'required|min_length[3]',
            'email'    => 'required|min_length[4]|max_length[100]|valid_email|is_unique[usuarios.email'.($id ? ',id_usuario,' . $id : '') . ']',
            'pass'     => 'required|min_length[5]|max_length[10]',
        ], 
        // Seguidamente se puede personalizar el mensaje de error
        [
            'nombre' => [
                'required' => 'El campo nombre es obligatorio',
                'min_length' => 'El campo nombre debe tener al menos 3 caracteres',
            ],
            'apellido' => [
                'required' => 'El campo apellido es obligatorio',
                'min_length' => 'El campo apellido debe tener al menos 3 caracteres',
                'max_length' => 'El campo apellido debe tener máximo 25 caracteres',
            ],
            'usuario' => [
                'required' => 'El campo usuario es obligatorio',
                'min_length' => 'El campo usuario debe tener al menos 3 caracteres',
            ],
            'email' => [
                'required' => 'El campo email es obligatorio',
                'min_length' => 'El campo email debe tener al menos 4 caracteres',
                'max_length' => 'El campo email debe tener máximo 100 caracteres',
                'valid_email' => 'El email ingresado no es válido',
                'is_unique' => 'El email ingresado ya se encuentra registrado, ingrese otro',
            ],
            'pass' => [
                'required' => 'El campo password es obligatorio',
                'min_length' => 'El campo password debe tener al menos 5 caracteres',
                'max_length' => 'El campo password debe tener máximo 25 caracteres',
            ],
        ]);

        return $validation;
    }

    public function addUsuario() {

        $usuario = [
            'id_usuario' => $this->request->getVar('id_usuario'),
            'nombre'   => $this->request->getVar('nombre'),
            'apellido' => $this->request->getVar('apellido'),
            'usuario'  => $this->request->getVar('usuario'),
            'email'    => $this->request->getVar('email'),
            'pass'    => $this->request->getVar('pass'),
        ];

        $validation = $this->validateForm();

        $formModel = new UsuariosModel();
        
        if(!$validation->withRequest($this->request)->run()) {
            session()->setFlashdata('msg', 'fail');
            $data['titulo'] = 'Registro';
            $data['validation'] = $validation;
            $data['usuario'] = $usuario;
            $this->loadViews('back/usuario/registro', $data);
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
            session()->setFlashdata('msg', 'Usuario registrado exitosamente');
            // return $this->response->redirect('/registro');
            return redirect()->to('login');
        }
    }

    public function listadoUsuarios(){
        $data['titulo'] = 'Listado Usuarios';
        $model = new UsuariosModel();
        $data['listado'] = $model->getUsuarios();
        $this->loadViews('back/usuario/listado', $data);
    }

    public function editarUsuarioForm($id){
        $data['titulo'] = 'Edición Usuario';
        $data['validation'] = \Config\Services::validation();
        $model = new UsuariosModel();
        $data['usuario'] = $model->getUsuario($id);
        $this->loadViews('back/usuario/edit', $data);
    }

    public function updateUsuario(){
        $id = $this->request->getVar('id_usuario');
        $validation = $this->validateForm($id);

        $usuario = [
            'id_usuario' => $this->request->getVar('id_usuario'),
            'id_perfil' => $this->request->getVar('id_perfil'),
            'nombre'   => $this->request->getVar('nombre'),
            'apellido' => $this->request->getVar('apellido'),
            'usuario'  => $this->request->getVar('usuario'),
            'email'    => $this->request->getVar('email'),
        ];
        
        if(!$validation->withRequest($this->request)->run()) {
            $data['titulo'] = 'Edición Usuario';
            $data['usuario'] = $usuario;
            $data['validation'] = $validation;
            $this->loadViews('back/usuario/edit', $data);
        } else {
            // print_r($usuario);exit;
            $formModel = new UsuariosModel();
            $formModel-> updateUsuario($id, $usuario);

            // flashdata funciona solo en redirigir la funcion en el controlador en la vista de carga
            session()->setFlashdata('mensaje', 'Usuario editado exitosamente');
            // return $this->response->redirect('/registro');
            if(session()->get('id_usuario') == $id){
                return redirect()->to('/');
            } else {
                return redirect()->to('usuarios');
            }
        }
    }

    public function deleteUsuario($id){
        $model = new UsuariosModel();
        $usuario = $model->getUsuario($id);
        $usuario['baja'] = 'SI';
        // print_r($usuario);exit;
        $model-> updateUsuario($id, $usuario);
        // flashdata funciona solo en redirigir la funcion en el controlador en la vista de carga
        session()->setFlashdata('mensaje', 'Usuario eliminado exitosamente');
        // return $this->response->redirect('/registro');
        return redirect()->to('usuarios');
    }

}