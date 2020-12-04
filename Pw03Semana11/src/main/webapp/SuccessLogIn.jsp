<%-- 
    Document   : SuccessLogIn
    Created on : Nov 27, 2020, 5:59:06 PM
    Author     : Alex Bazaldua 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>ID: <%= session.getAttribute("ID")%></h2>
        <h2>Username: <%= session.getAttribute("username")%></h2>
        <form method="post" action="LogOffController">
            <input type="submit" class="btn btn-success" action="Cerrar Sesion">
        </form>

    </body>
</html>