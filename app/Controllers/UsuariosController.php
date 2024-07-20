<?php
namespace App\Controllers;
use App\Models\UsuariosModel;
use CodeIgniter\Controller;


class UsuariosController extends Controller{

    public function __construct(){
        helper(['form', 'url']); //helper es una biblioteca de codeIgniter
    }

    public function addUsuarioForm() {
        $data['titulo'] = 'Registro';
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('back/usuario/registro'); //cargamos desde el back
        echo view('front/footer_view');
    }

    public function addUsuario() {
        $input = $this->validate([
            'nombre'   => 'required|min_length[3]',
            'apellido' => 'required|min_length[3]|max_length[25]',
            'usuario'  => 'required|min_length[3]',
            'email'    => 'required|min_length[4]|max_length[100]|valid_email|is_unique[usuarios.email]',
            'pass'     => 'required|min_length[3]|max_length[10]',
        ],);

        $formModel = new UsuariosModel();
        

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
            session()->setFlashdata('msg', 'Usuario registrado exitosamente');
            // return $this->response->redirect('/registro');
            return redirect()->to('login');
        }
    }

    public function listadoUsuarios(){
        $data['titulo'] = 'Listado Usuarios';
        $model = new UsuariosModel();
        $data['listado'] = $model->getUsuarios();
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('back/usuario/listado', $data);
        echo view('front/footer_view');
    }

    public function editarUsuarioForm($id){
        $data['titulo'] = 'Edición Usuario';
        $model = new UsuariosModel();
        $data['usuario'] = $model->getUsuario($id);
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('back/usuario/edit', $data);
        echo view('front/footer_view');
    }

    public function updateUsuario(){
        $id = $this->request->getVar('id_usuario');
        $input = $this->validate([
            'nombre'   => 'required|min_length[3]',
            'apellido' => 'required|min_length[3]|max_length[25]',
            'usuario'  => 'required|min_length[3]',
            'email'    => 'required|min_length[4]|max_length[100]|valid_email|is_unique[usuarios.email'.($id ? ',id_usuario,' . $id : '') . ']',
        ],);

        $usuario = [
            'id_usuario' => $this->request->getVar('id_usuario'),
            'nombre'   => $this->request->getVar('nombre'),
            'apellido' => $this->request->getVar('apellido'),
            'usuario'  => $this->request->getVar('usuario'),
            'email'    => $this->request->getVar('email'),
        ];
        
        if(!$input) {
            $data['titulo'] = 'Edición Usuario';
            $data['usuario'] = $usuario;
            $data['validation'] = $this->validator;
            echo view('front/head_view', $data);
            echo view('front/navbar_view');
            echo view('back/usuario/edit', $data); 
            echo view('front/footer_view');
        } else {
            // print_r($usuario);exit;
            $formModel = new UsuariosModel();
            $formModel-> updateUsuario($id, $usuario);

            // flashdata funciona solo en redirigir la funcion en el controlador en la vista de carga
            session()->setFlashdata('mensaje', 'Usuario editado exitosamente');
            // return $this->response->redirect('/registro');
            return redirect()->to('usuarios');
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