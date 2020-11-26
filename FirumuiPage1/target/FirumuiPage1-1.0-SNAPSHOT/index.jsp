<%@page import="java.util.List"%>
<%@page import="com.firuage.firumuipage1.models.Card"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    /*Casting explicito*/ /*Obtener onjeto*/
String titulo = (String)request.getAttribute("Titulo"); 
List<Card> cards = (List<Card> )request.getAttribute("cards"); 
titulo = titulo != null ? titulo : "" ;
%>
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
        <!-- <link rel="stylesheet" href="CSS/bootstrap.css">-->
         
        <title>Mi primer JSP</title>
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
                <a href="mainServlet" class="nav-link">Firucuenta</a>
              </ul>
              

            <!--Apartado para la barra buscadora -->
            <%
            if(1==1){ /* 1==1 para NO logear*/
            %>
            <form class="form-inline my-2 my-lg-0">
                 <input class="form-control mr-sm-2" style=" margin: 0.3em 2em;" type="text" placeholder="User" >
                 <input class="form-control mr-sm-2" style=" margin: 0.3em 2em;" type="password" placeholder="password" >
                <li class="nav-item active">
                <a class="nav-link2" href="InicioSesion.html" >Iniciar sesion <span class="sr-only">(current)</span></a>
              </li>
            </form>
            <%
                }else{
            %>
            <img width="30px" src="https://3.bp.blogspot.com/-EIUIc7iUEIM/VLIBpnqclOI/AAAAAAAADNQ/jw1w0nRuwr4/s1600/Samurai_x_Kenshin.PNG"/>Alex
             <%
                }
            %>
          </div>
        </nav>
             
              <!-- Apartado para los botones -->
        <div class="btn-group" role="group" aria-label="Basic example">
            <a href="Estrenos.html" class="btn btn-primary " role="button">Estrenos</a>
            <a href="trailers.html" class="btn btn-primary " role="button">Trailers</a>
            <a href="Entrevistas.html" class="btn btn-primary " role="button">Entrevistas</a>
            <a href="DetrasCamaras.html" class="btn btn-primary " role="button">Detras de camaras</a>
            <a href="escenaEliminada.html" class="btn btn-primary " role="button">Escenas eliminadas</a>
        </div>
              
        <!-- Apartado para vistas de tarjetas-->
        <!--codigo tipo JAVA (prueba)--> 
        <div class = "Container">
            <div class="text-center py-5">
                 <h1>Hello World!</h1>
                 <h2> <%= titulo %></h2> <!--Mostrar objeto-->
                <div class="row">
                    
                    <h2 class="col-12"> Cards</h2>
                    <%
                        if(cards!=null){
                        for (Card card: cards)
                        {
                     %>
                      <div class="card col-4">
                    <img src="<%= card.getImgUrl()%>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%= card.getTitle()%></h5>
                        <p class="card-text"><%= card.getDescription()%></p>
                        <a href="<%= card.getLinRef()%>" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>

                     <%
                         }
                           }

                     %>
                     
                    <h2 class="cot´+ghjpghl-10"> For</h2>
                    <%
                         for(int i=0;i<=3;i++){
                    %>
            <!--<p>Categoria<p>-->
           
                    <div class="col-sm-20 col-md-6 col-lg-4">
                        <div class="card " style="width: 20rem;">
                            <img src="https://static1.abc.es/media/play/2020/05/16/braveheart-kDsF--620x349@abc.jpg" 
                            class="card-img-top" alt="Responsive image">
                                <div class="card-body">
                                     <h5 class="card-title">Noticia</h5>
                                     <p class="card-text">Descripcion corta.</p>
                                     <a href="mainServlet" class="btn btn-primary">Ver noticia</a>
                                </div>
                        </div>
                     </div>
            <%
                }
             %>
             <!-- Aprobar noticias ------------------------------  -->
             <h2 class="col-12"> Noticias por aprobar</h2>
             <table class="col-12 table"> 
                 
                 <tr>
                    <th>Título</th>
                    <th>Decripción</th>
                    <th>Imagen</th>
                    <th>Link</th>
                    <th>Accion</th>
                 </tr>
             <%
                 if(cards!=null){
                        for (Card card: cards)
                        {
                     %>
                     <tr>
                         <td><%= card.getTitle()%></td>
                         <td><%= card.getDescription()%></td>
                         <td><%= card.getImgUrl()%></td>
                         <td><%= card.getLinRef()%></td>
                         <td>
                             <a class="btn btn-success">Aprobar</a>
                             <a class="btn btn-danger">Eliminar</a>
                         </td>
                     </tr>
                     <div class="col-sm-20 col-md-16 col-lg-3">
                        <div class="card" style="width: 18rem;">
                            <img src="<%= card.getImgUrl()%>" class="card-img-top" alt="Responsive image">
                                <div class="card-body">
                                     <h5 class="card-title"> <%= card.getTitle()%> </h5>
                                     <p class="card-text"><%= card.getDescription()%></p>
                                     <a href="<%= card.getLinRef()%>" class="btn btn-primary">Ver noticia</a>
                                </div>
                        </div>
                     </div>
                     <%
                         }
                        }       
                     %>
                     
                    <h2 class="col-10"> For</h2>
                    
                    </table>
                 </div>
            </div>
          </div>
             
             
            
    </body>
</html>
