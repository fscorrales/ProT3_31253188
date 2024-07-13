    <div class="container mt-2 mb-2 d-flex justify-content-center">
        <div class="card" style="width: 50%;">
            <div class="card-header text-center">
                <h2>Registrar Usuario</h2>
            </div>
            <!-- Inicio de formulario de registro -->
            <div class="card-body" media="(max-width: 768px)"> 
                <?php $validation = \Config\Services::validation(); ?>  
                <form method="post" action="<?php echo base_url('/enviar-form'); ?>">
                    <?= csrf_field() ?>
                    <?= csrf_field() ?>
                    <?php if(!empty(session()->getFlashdata('fail'))):?>
                        <div class="alert alert-danger"><?= session()->getFlashdata('fail');?></div>
                    <?php endif;?>
                    <?php if(!empty(session()->getFlashdata('success'))):?>
                        <div class="alert alert-danger"><?= session()->getFlashdata('sucess');?></div>
                    <?php endif;?>
                    <div class="mb-3">
                        <label for="exampleFormInputInput1" class="form-label">Nombre</label>
                        <input name="nombre" type="text" class="form-control" placeholder="Nombre completo">
                        <!-- Error -->
                        <?php if($validation->getError('nombre')) {?>
                            <div class="alert alert-danger mt-2">
                                <?= $error = $validation->getError('nombre'); ?>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormInputInput1" class="form-label">Apellido</label>
                        <input name="apellido" type="text" class="form-control" placeholder="Apellido">
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
                        aria-describedby="emailHelp" placeholder="correo@algo.com">
                        <!-- Error -->
                        <?php if($validation->getError('email')) {?>
                            <div class="alert alert-danger mt-2">
                                <?= $error = $validation->getError('email'); ?>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormInputInput1" class="form-label">Usuario</label>
                        <input name="usuario" type="text" class="form-control" placeholder="Usuario">
                        <!-- Error -->
                        <?php if($validation->getError('usuario')) {?>
                            <div class="alert alert-danger mt-2">
                                <?= $error = $validation->getError('usuario'); ?>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input name="pass" type="password" class="form-control" 
                        placeholder="Contraseña (mínimo 5 caracteres)">
                        <!-- Error -->
                        <?php if($validation->getError('pass')) {?>
                            <div class="alert alert-danger mt-2">
                                <?= $error = $validation->getError('pass'); ?>
                            </div>
                        <?php } ?>
                    </div>
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <button type="reset" class="btn btn-danger">Cancelar</button>
                </form>
            </div>
        </div>
    </div>