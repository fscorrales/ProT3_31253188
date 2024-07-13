<!--navegacion-->
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
    <a class="navbar-brand" href="#"></a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="quienes_somos">Quiénes Somos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="acerca_de">Acerca de</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="agentes">Agentes</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Acceso
          </a>
          <ul class="dropdown-menu">
            <li>
              <a class="dropdown-item" href="login">Login</a>
            </li>
            <li>
              <a class="dropdown-item" href="registro">Registrarse</a>
            </li>
          </ul>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>