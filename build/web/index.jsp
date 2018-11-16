<%-- 
    Document   : index
    Created on : 10-nov-2018, 17:19:37
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/AdminLTE.min.css">
    </head>
    <body class="login-page">
        <% // response.sendRedirect("paginas/index.jsp");%>
        <div class="login-box">
            <div class="login-logo">
                <img width="200" src="img/logo_ufps.png" alt="">
                <h4><b>Vicerrectoría Asistente de Investigación y Extensión</b></h4>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Ingrese las credenciales para iniciar sesión.</p>
                <form action="paginas/index.jsp" method="post">
                    <div class="form-group has-feedback">
                        <input type="email" class="form-control" placeholder="Email">
                        <span class="fa fa-envelope-o form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" placeholder="Password">
                        <span class="fa fa-lock form-control-feedback"></span>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-danger btn-block btn-flat">Iniciar Sesión</button>
                    </div>
                </form>
            </div>
            <!-- /.login-box-body -->
        </div>
    </body>
</html>