<%-- 
    Document   : ViewNotice
    Created on : Nov 27, 2020, 2:24:41 AM
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
        <h1 class="TituloReg inicio-sesion TitNotice">Titulo de noticia</h1>
<h4 class="TituloReg inicio-sesion TitNotice"> Escritor     20-10-20</h4>
<!--Apartado vista noticias-->
<div class="container"> 
<div id="carouselExampleIndicators" class="carousel slide carousel-inner" data-ride="carousel">
    <ol class="carousel-indicators carousel-inner">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://cdna.artstation.com/p/assets/images/images/019/585/244/large/marcus-whinney-02.jpg?1564144288" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://cdnb.artstation.com/p/assets/images/images/019/585/329/large/marcus-whinney-06.jpg?1564144789" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://cdna.artstation.com/p/assets/images/images/026/780/210/large/marcus-whinney-01.jpg?1589718132" class="d-block w-100" alt="...">
      </div>
    </div>
    <a class="carousel-control-prev carousel-inner" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next carousel-inner" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<!--
<div class="rate">
  <input type="radio" id="star5" name="rate" value="5" />
  <label for="star5" title="text">5 stars</label>
  <input type="radio" id="star4" name="rate" value="4" />
  <label for="star4" title="text">4 stars</label>
  <input type="radio" id="star3" name="rate" value="3" />
  <label for="star3" title="text">3 stars</label>
  <input type="radio" id="star2" name="rate" value="2" />
  <label for="star2" title="text">2 stars</label>
  <input type="radio" id="star1" name="rate" value="1" />
  <label for="star1" title="text">1 star</label>
</div>
-->

<div class="Stars">
  <span class="material-icons checked"> local_movies</span>
  <span class="material-icons checked"> local_movies</span>
  <span class="material-icons checked"> local_movies</span>
  <span class="material-icons"> local_movies</span>
  <span class="material-icons"> local_movies</span>
  
  </div>
  <br>

<p class="TituloReg inicio-sesion TitNotice"> Acerca de lo que trata la noticia relatada en este articulo mostrado en esta pagina babababaababababababababababababaababababababababab</p>

<br>
<div class="comentarios ">
  
        <!--<p>Comentarios:</p>
        <p>usuario: ................. 00/00/00  ...................  00:00</p>
        <p> Este es un ejemplo de comentario ..................   *****</p>-->
        <div class="form-group2">
            <label for="exampleFormControlTextarea1">Comentario</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
          </div>
  </div> 

  <div class="inicio-sesion"> 
    <button type="submit" class="btn btn-primary">publicar comentario</button>
</div>

<div class="cardNotice">
  <div class="card-body">
      <div class="row">
          <div class="col-md-2">
              <img src="Imagenes/imagenDefauly.png" class="img img-rounded img-fluid"/>
              <p class="text-secondary text-center">Hace 2 horas</p>
          </div>
          <div class="col-md-10">
              <p>
                  <a class="float-left" href="EditPErfil.html"><strong>User</strong></a>
                  <span class="float-right"><i  class="material-icons checked"> local_movies</i></span>
                    <span class="float-right"><i  class="material-icons checked"> local_movies</i></span>
                  <span class="float-right"><i  class="material-icons checked"> local_movies</i></span>
                  <span class="float-right"><i  class="material-icons checked"> local_movies</i></span>

             </p>
             <div class="clearfix"></div>
              <p>Este es un ejemplo de comentario</p>
              <p>
                  <a class="float-right btn btn-outline-primary ml-2"> <i class="fa fa-reply"></i> Responder</a>
                  <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a>
             </p>
          </div>
      </div>
        <div class="card card-inner">
              <div class="card-body">
                  <div class="row">
                      <div class="col-md-2">
                          <img src="Imagenes/imagenDefauly.png" class="img img-rounded img-fluid"/>
                          <p class="text-secondary text-center">hace una hora</p>
                      </div>
                      <div class="col-md-10">
                          <p><a href="https://maniruzzaman-akash.blogspot.com/p/contact.html"><strong>Other User</strong></a></p>
                          <p>Algun tipo de comentario</p>
                          <p>
                              <a class="float-right btn btn-outline-primary ml-2">  <i class="fa fa-reply"></i> Responder</a>
                              <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a>
                         </p>
                      </div>
                  </div>
              </div>
          </div>
  </div>
</div>

    </body>
</html>
