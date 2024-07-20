<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('principal', 'Home::index');
$routes->get('quienes_somos', 'Home::quienes_somos');
$routes->get('acerca_de', 'Home::acerca_de');
// $routes->get('registro', 'Home::registro');
// $routes->get('login', 'Home::login');
$routes->get('agentes', 'Home::agentes');

/* rutas del Registro de Usuarios */
$routes->get('registro','UsuariosController::addUsuarioForm');
$routes->post('/enviar-form','UsuariosController::addUsuario');

/* rutas del Listado de Usuarios */
$routes->get('usuarios', 'UsuariosController::listadoUsuarios');
$routes->get('editar-usuario/(:num)', 'UsuariosController::editarUsuarioForm/$1');
$routes->get('eliminar-usuario/(:num)', 'UsuariosController::deleteUsuario/$1');
$routes->post('enviar-usuario-form','UsuariosController::updateUsuario');

/* rutas del Login */
$routes->get('/login', 'LoginController');
$routes->post('/enviar-login', 'LoginController::auth');
$routes->get('/panel', 'PanelController::index', ['filter' => 'auth']);
$routes->get('/logout', 'LoginController::logout');