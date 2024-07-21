    <div class="container mt-2 mb-2 d-flex justify-content-center">
        <div class="card" style="width: 50%;">
            <div class="card-header text-center">
                <h2>Editar Usuario</h2>
            </div>
            <?php if (session('mensaje')){ ?>
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <?php echo session('mensaje'); ?>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            <?php }; ?>
            <!-- Inicio de formulario de registro -->
            <div class="card-body" media="(max-width: 768px)"> 
                <form method="post" action="<?php echo base_url('/enviar-usuario-form'); ?>">
                    <div class="mb-3">
                        <input type="hidden" name="id_usuario" value="<?php echo $usuario['id_usuario']; ?>">
                        <input type="hidden" name="id_perfil" value="<?php echo $usuario['id_perfil']; ?>">
                        <input type="hidden" name="pass" value="<?php echo 'pasar'; ?>">
                        <label for="exampleFormInputInput1" class="form-label">Nombre</label>
                        <input name="nombre" type="text" class="form-control" placeholder="Nombre completo"
                        value="<?php echo $usuario['nombre']; ?>">
                        <!-- Error -->
                        <?php if($validation->getError('nombre')) {?>
                            <div class="alert alert-danger mt-2">
                                <?= $error = $validation->getError('nombre'); ?>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormInputInput1" class="form-label">Apellido</label>
                        <input name="apellido" type="text" class="form-control" placeholder="Apellido"
                        value="<?php echo $usuario['apellido']; ?>">
                        <!-- Error -->
                        <?php if($validation->getError('apellido')) {?>
                            <div class="alert alert-danger mt-2">
                                <?= $error = $validation->getError('apellido'); ?>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Correo</label>
                        <input name="email" type="email" class="form-control" 
                        aria-describedby="emailHelp" placeholder="correo@algo.com"
                        value="<?php echo $usuario['email']; ?>">
                        <!-- Error -->
                        <?php if($validation->getError('email')) {?>
                            <div class="alert alert-danger mt-2">
                                <?= $error = $validation->getError('email'); ?>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormInputInput1" class="form-label">Usuario</label>
                        <input name="usuario" type="text" class="form-control" placeholder="Usuario"
                        value="<?php echo $usuario['usuario']; ?>">
                        <!-- Error -->
                        <?php if($validation->getError('usuario')) {?>
                            <div class="alert alert-danger mt-2">
                                <?= $error = $validation->getError('usuario'); ?>
                            </div>
                        <?php } ?>
                    </div>
                    <button type="submit" class="btn btn-success">Editar</button>
                    <a type="reset" class="btn btn-danger" 
                        href="<?php if(session() -> id_usuario != $usuario['id_usuario']): echo base_url('usuarios'); 
                                elseif(session() -> id_usuario == $usuario['id_usuario']): echo base_url('/');
                                endif?>"
                    >Cancelar</a>
                </form>
            </div>
        </div>
    </div>