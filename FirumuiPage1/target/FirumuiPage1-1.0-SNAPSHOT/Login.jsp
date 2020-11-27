<%-- 
    Document   : Login
    Created on : Nov 26, 2020, 2:43:33 AM
    Author     : Alex Bazaldua 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        
         <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&family=Montserrat:wght@600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CSS/main.css">
        <link rel="stylesheet" href="CSS/bootstrap.css">
    <title>Iniciar sesion</title>
</head>
<body>
   <body>
    <!-- Apartado para la barra de menú-->
       <nav class="navbar navbar-expand-lg navbar-light bg-yellow nav-link">
        <a class="navbar-brand" style="color: #1a3365" width="100px" href="#">Firumu</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

          <!--Apartado para el drop Down-->
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <a href="index.jsp" class="nav-link">Regresar</a>
              </ul>

            <!--Apartado para la barra buscadora -->
            <form class="form-inline my-2 my-lg-0">
               <input class="form-control mr-sm-2" style=" margin: 0.3em 2em;" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0"  type="submit">Search</button>
            </form>
          </div>
        </nav>
     
        <!--Apartados de los botones-->
        <div class="btn-group-vertical">
          <a href="RegistUser.jsp" class="btn btn-primary " role="button">Registrarse</a>
        </div>
        
      
        <!-- Iniciar sesion-->
        
        <form>
          <div class="form-group2 col-6" ">
            <label for="exampleInputEmail1">Correo electronico</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">No compartiremos tu correo</small>
          </div>
          <div class="form-group2 col-6">
            <label for="exampleInputPassword1">Contraseña</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
          </div>
          <div class="form-check2 ">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Primera vez en Firumu</label>
          </div>
          <div class="inicio-sesion">
            <button type="submit" class="btn btn-primary">Iniciar sesion</button>
        </div>
        </form>
</body>
</html>
