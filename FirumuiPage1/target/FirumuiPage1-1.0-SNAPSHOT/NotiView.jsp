<%-- 
    Document   : NotiView
    Created on : Nov 26, 2020, 9:32:05 PM
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
        <title>FiruNoticias</title>
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
                 
                  <!--Apartado para la barra buscadora -->
            <%
            if(1==1){ /* 1==1 para NO logear*/
            %>
            <form class="form-inline my-2 my-lg-0">
                 <input class="form-control mr-sm-2" style=" margin: 0.3em 2em;" type="text" placeholder="User" >
                 <input class="form-control mr-sm-2" style=" margin: 0.3em 2em;" type="password" placeholder="password" >
                <li class="nav-item active">
                <a class="nav-link2" href="Login.jsp" >Iniciar sesion <span class="sr-only">(current)</span></a>
              </li>
            </form>
            <%
                }else{
            %>
            <img width="30px" src="https://3.bp.blogspot.com/-EIUIc7iUEIM/VLIBpnqclOI/AAAAAAAADNQ/jw1w0nRuwr4/s1600/Samurai_x_Kenshin.PNG"/>Alex
             <%
                }
            %>
        </nav>
        
             <!-- Apartado para los botones -->
        <div class="btn-group" role="group" aria-label="Basic example">
            <a href="NotiView.jsp" class="btn btn-primary " role="button">Estrenos</a>
            <a href="NotiView.jsp" class="btn btn-primary " role="button">Trailers</a>
            <a href="NotiView.jsp" class="btn btn-primary " role="button">Entrevistas</a>
            <a href="NotiView.jsp" class="btn btn-primary " role="button">Detras de camaras</a>
            <a href="NotiView.jsp" class="btn btn-primary " role="button">Escenas eliminadas</a>
        </div>
    </body>
</html>
