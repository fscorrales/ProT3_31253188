<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <title>Proyecto Integrador 2</title> -->
    <!-- Agregamos un título dinámico TP3 -->
    <title><?php echo($titulo);?></title> 
    <!-- Bootstrap -->
    <!-- <link href="assets/css/bootstrap/bootstrap.min.css" rel="stylesheet"> -->
    <!-- Bootstrap (desde el servidor TP3) -->
    <link href="<?php echo(base_url('assets/css/bootstrap/bootstrap.min.css'));?>" rel="stylesheet"> <!-- con o sin paréntesis -->
    <!-- Datatables -->
    <link href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/responsive/3.0.2/css/responsive.bootstrap5.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <!-- <link href="assets/css/styles.css" rel="stylesheet"> -->
    <!-- Custom CSS (desde el servidor TP3) -->
    <link href="<?php echo(base_url('assets/css/styles.css'));?>" rel="stylesheet"> <!-- con o sin paréntesis -->
  </head>
  <body>
    <header>
        <!-- Contenido del encabezado (header) -->
        <h1>Bienvenido a nuestra pagina principal</h1>
    </header>
