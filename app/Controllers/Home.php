<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data['titulo'] = 'Página Principal'; //agregamos en TP3
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('front/principal');
        echo view('front/footer_view');
    }

    public function quienes_somos()
    {
        $data['titulo'] = 'Quiénes Somos'; //agregamos en TP3
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('front/quienes_somos');
        echo view('front/footer_view');
    }

    public function acerca_de()
    {
        $data['titulo'] = 'Acerca de'; //agregamos en TP3
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('front/acerca_de');
        echo view('front/footer_view');
    }

    public function registro()
    {
        $data['titulo'] = 'Registro'; //agregamos en TP3
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('front/registro');
        echo view('front/footer_view');
    }

    public function login()
    {
        $data['titulo'] = 'Login'; //agregamos en TP3
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('front/login');
        echo view('front/footer_view');
    }

    public function agentes()
    {
        $data['titulo'] = 'Agentes'; //agregamos en TP3
        echo view('front/head_view', $data);
        echo view('front/navbar_view');
        echo view('front/agentes');
        echo view('front/footer_view');
    }

}
