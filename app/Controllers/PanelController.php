<?php
namespace App\Controllers;
use CodeIgniter\Controller;

class PanelController extends Controller {
    
    public function index() {
        $session = session();
        $nombre = session()->get('usuario');
        $perfil = session()->get('id_perfil');

        $data['id_perfil'] = $perfil;

        $data['titulo'] = 'Panel del Usuario';
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('back/usuario/usuario_logueado', $data);
        echo view('front/footer_view');
    }
}