<div class="container">
    <div class="row justify-content-md-center">
        <div class="col-5">
            <?php if(session()->getFlashdata('msg')):?>
                <div class="alert alert-warning">
                    <?= session()->getFlashdata('msg')?>
                </div>
            <?php endif;?>
            <br>
            <?php if(session() -> id_perfil == 1): ?>
                <div>
                    <img class="center" height="300px" width="300px" 
                    src="<?php echo base_url('/assets/img/admin.png');?>" alt="admin_login">
                </div>
                <div>
                    <h2 class="text-center">Administrador</h2>
                </div>
            <?php elseif(session() -> id_perfil == 2): ?>
                <div>
                    <img class="center" height="300px" width="300px"
                    src="<?php echo base_url('/assets/img/user.png');?>" alt="user_login">
                </div>
                <div>
                    <h2 class="text-center">Usuario</h2>
                </div>
            <?php endif; ?>
            <br>
        </div>
    </div>
</div>