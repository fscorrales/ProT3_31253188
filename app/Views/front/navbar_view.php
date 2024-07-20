<!--navegacion-->
<?php
  $session = session();
  $nombre = $session->get('nombre');
  $perfil = $session->get('id_perfil');
?>

<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <div class="nabvar-header">
      <a class="navbar-brand me-auto barra" href="<?php echo base_url('principal')?>">
        <!-- logo marca de empresa -->
        <img src="<?php echo base_url('assets/img/invico_logo_homepage.svg')?>" alt="marca" 
        class="img-fluid" id="img-logo">
      </a>
    </div>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
      data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- NAVBAR para ADMIN -->
    <?php if(session()->id_perfil == 1): ?>
      <div class="btn btn-secondary active btnUser btn-sm">
        <a href="">ADMIN: <?php echo $session->get('nombre'); ?></a>
      </div>

    <a class="navbar-brand" href="#"></a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('quienes_somos'); ?>">Quiénes Somos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('acerca_de'); ?>">Acerca de</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('usuarios'); ?>">Usuarios</a>
        </li>
        <!-- <li class="nav-item">
          <a class="nav-link" href="agentes">Agentes</a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('/logout'); ?>" 
          tabindex="-1" aria-disabled="true">Cerrar Sesión</a>
        </li>
      </ul>

    <!-- NAVBAR para usuarios -->
    <?php elseif(session()->id_perfil == 2): ?>
      <div class="btn btn-secondary active btnUser btn-sm">
        <a href="">USUARIO: <?php echo $session->get('nombre'); ?></a>
      </div>
    <a class="navbar-brand" href="#"></a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('quienes_somos'); ?>">Quiénes Somos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('acerca_de'); ?>">Acerca de</a>
        </li>
        <!-- <li class="nav-item">
          <a class="nav-link" href="agentes">Agentes</a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('/logout'); ?>" 
          tabindex="-1" aria-disabled="true">Cerrar Sesión</a>
        </li>

    <!-- NAVBAR para no usuarios -->
    <?php else: ?>
    <a class="navbar-brand" href="#"></a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('quienes_somos'); ?>">Quiénes Somos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('acerca_de'); ?>">Acerca de</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Acceso
          </a>
          <ul class="dropdown-menu">
            <li>
              <a class="dropdown-item" href="<?php echo base_url('login'); ?>">Login</a>
            </li>
            <li>
              <a class="dropdown-item" href="<?php echo base_url('registro'); ?>">Registrarse</a>
            </li>
          </ul>
        </li>
      </ul>

      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      <?php endif; ?>
    </div>
  </div>
</nav>