    <div class="container mt-2 mb-2 d-flex justify-content-center">
        <div class="card" style="width: 50%;">
            <div class="card-header text-center">
                <h2>Iniciar Sesión</h2>
            </div>
            <!-- Mensaje de Error -->
            <?php if(session()->getFlashdata('msg')):?>
                <div class="alert alert-warning">
                    <?= session()->getFlashdata('msg')?>
                </div>
            <?php endif;?>
            <!-- Inicio de formulario de login -->
            <div class="card-body" media="(max-width: 768px)"> 
                <form method="post" action="<?php echo base_url('/enviar-login'); ?>">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Correo</label>
                        <input name="email" type="email" class="form-control" 
                        aria-describedby="emailHelp" placeholder="Ingresa tu correo">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input name="pass" type="password" class="form-control" 
                        placeholder="Ingresa tu contraseña">
                    </div>
                    <button type="submit" class="btn btn-success">Ingresar</button>
                    <button type="cancel" class="btn btn-danger">Cancelar</button>
                    <br><span>¿Aun no se registró? <a href="<?php echo base_url('/registro'); ?>">Registrarse aquí</a></span>
                </form>
            </div>
            <!-- Fin de formulario de login -->
        </div>
    </div>