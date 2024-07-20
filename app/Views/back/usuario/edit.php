    <div class="container mt-2 mb-2 d-flex justify-content-center">
        <div class="card" style="width: 50%;">
            <div class="card-header text-center">
                <h2>Editar Usuario</h2>
            </div>
            <!-- Inicio de formulario de registro -->
            <div class="card-body" media="(max-width: 768px)"> 
                <?php $validation = \Config\Services::validation(); ?>  
                <form method="post" action="<?php echo base_url('/enviar-usuario-form'); ?>">
                    <?= csrf_field() ?>
                    <?= csrf_field() ?>
                    <?php if(!empty(session()->getFlashdata('fail'))):?>
                        <div class="alert alert-danger"><?= session()->getFlashdata('fail');?></div>
                    <?php endif;?>
                    <?php if(!empty(session()->getFlashdata('success'))):?>
                        <div class="alert alert-danger"><?= session()->getFlashdata('sucess');?></div>
                    <?php endif;?>
                    <div class="mb-3">
                        <input type="hidden" name="id_usuario" value="<?php echo $usuario['id_usuario']; ?>">
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
                    href="<?php echo base_url('usuarios'); ?>">Cancelar</a>
                </form>
            </div>
        </div>
    </div>