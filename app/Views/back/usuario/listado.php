<div class="container mt-3 mb-3 table-responsive">
    <h2>Listado de Usuarios</h2>
    <?php if (session('mensaje')){ ?>
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Éxito!</strong> <?php echo session('mensaje'); ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <?php }; ?>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Usuario</th>
                <th scope="col">E-mail</th>
                <th scope="col">Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($listado as $d): ?>
            <tr>
                <th scope="row"><?php echo $d['id_usuario']; ?></th>
                <td><?php echo $d['nombre']; ?></td>
                <td><?php echo $d['apellido']; ?></td>
                <td><?php echo $d['usuario']; ?></td>
                <td><?php echo $d['email']; ?></td>
                <td>
                    <a class="btn btn-primary" 
                        href="<?php echo base_url('editar-usuario').'/'. $d['id_usuario'];?>">
                        <img src="<?php echo(base_url('assets/img/edit.svg'));?>">
                    </a>
                    <a class="btn btn-danger"
                        href="<?php echo base_url('eliminar-usuario').'/'. $d['id_usuario'];?>">
                        <img src="<?php echo(base_url('assets/img/delete.svg'));?>">
                    </a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>