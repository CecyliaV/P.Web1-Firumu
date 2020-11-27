<%-- 
    Document   : RegistUser
    Created on : Nov 27, 2020, 1:58:24 AM
    Author     : Alex Bazaldua 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        
         <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&family=Montserrat:wght@600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CSS/main.css">
        <!--<link rel="stylesheet" href="CSS/bootstrap.css">-->
        <title>JSP Page</title>
    </head>
    <body>
     <nav class="navbar navbar-expand-lg navbar-light bg-yellow nav-link">
        <a class="navbar-brand" style="color: #1a3365" width="130px" href="#">Firumu</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <!--Apartado para el drop Down-->
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <a href="index.jsp" class="nav-link">Regresar</a>
              </ul>
        </nav>
        
        <h1 class="TituloReg">¿Quieres unirte a la comunidad FIRUMU?</h1>
        <h2 class=TituloReg2>Registrate para poder ser parte</h2> <br>
        
        <form>
          <div class="form-group2 ">
                <label for="exampleInputEmail1">Correo electronico *</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Escriba su correo">
                <small id="emailHelp" class="form-text text-muted">No compartiremos tu correo</small>
          </div>
          <div class="form-group2 ">
                <label for="exampleInputUser1">Nombre de usuario (minimo 3 caractéres)</label>
             <input type="email" class="form-control" id="exampleInputUser1" aria-describedby="UserHelp" placeholder="Escriba su nombre">
          </div>
          <div class="form-group2">
             <label for="exampleInputPassword1">Contraseña (minimo 8 caracteres 1 mayuscula, minuscula y numero)</label>
             <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
          </div>
         

          <div class="form-group3">
              <label for="exampleFormControlFile1">Example file input</label>
              <input type="file" class="form-control-file" id="exampleFormControlFile1">
              <img src="form-control-file" alt="Responsive image" class="img-thumbnail">
            </div> 
            
          <div class="registro-cuenta">
            <button type="submit" class="btn btn-primary">Registrar</button>
        </div>
        </form>
    </body>
</html>
