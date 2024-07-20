<?php
namespace App\Models;
use CodeIgniter\Model;
Class UsuariosModel extends Model //el nombre de la clase debe coincider con el del archivo
{
 	protected $table = 'usuarios'; //nombre de la tabla
 	protected $primaryKey = 'id_usuario'; //identificador de la tabla
 	protected $allowedFields = [
        'nombre', 'apellido', 'usuario', 'email',
        'pass','id_perfil','baja'
    ]; //todos los campos de la tabla

    public function getUsuarios(){
        return $this->where('baja', 'NO')->findAll();
    }

    public function getUsuario($id){
        return $this->where('id_usuario', $id)->first($id);
    }

    public function updateUsuario($id, $datos){
        return $this->update($id, $datos);
    }

}
