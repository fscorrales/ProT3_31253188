<?php
namespace App\Controllers;
use App\Models\UsuariosModel;
use CodeIgniter\Controller;


class LoginController extends BaseController {

    public function index() {
        helper(['form', 'url']); //helper es una biblioteca de codeIgniter
        $data['titulo'] = 'Login';
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('back/usuario/login'); //cargamos desde el back
        echo view('front/footer_view');
    }

    public function auth() {
        $session = session();
        $model = new UsuariosModel();

        //traemos los datos del formulario
        $email = $this->request->getVar('email');
        $password = $this->request->getVar('pass');

        $data = $model->where('email', $email)->first();
        if($data) {
            $pass = $data['pass'];
            $ba = $data['baja'];
            if($ba == 'SI'){
                $session->setFlashdata('msg', 'Usuario dado de baja');
                return redirect()->to('/login');
                // return redirect()->to('/LoginController');
            }
            //Se verifican los datos ingresados para iniciar, si cumple la verificación inicia sesión
            $verify_pass = password_verify($password, $pass);
            //password_verify determina los requisitos de configuración de la contraseña
            if($verify_pass) {
                $ses_data = [
                    'id_usuario' => $data['id_usuario'],
                    'nombre' => $data['nombre'],
                    'apellido' => $data['apellido'],
                    'email' => $data['email'],
                    'usuario' => $data['usuario'],
                    'id_perfil' => $data['id_perfil'],
                    'logged_in' => TRUE
                ];
                //iniciamos sesión
                $session->set($ses_data);
                session()->setFlashdata('msg', 'Bienvenido ' . $data['usuario']);
                return redirect()->to('/panel');
                // return redirect()->to('/prueba'); //pagina principal
            } else {
                // no pasó la validación
                $session->setFlashdata('msg', 'Contraseña incorrecta.');
                return redirect()->to('/login');
            }
        } else {
            $session->setFlashdata('msg', 'No existe el email o es incorrecto');
            return redirect()->to('/login');
        }
    }

    public function logout() {
        $session = session();
        $session->destroy();
        return redirect()->to('/');
    }

}