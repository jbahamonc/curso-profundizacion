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
        <link rel="stylesheet" href="css/mdtoast.css">
        <link rel="stylesheet" href="css/AdminLTE.min.css">
        <style>
            form label.error {
                color: red;
                margin: 0;
            }
        </style>
    </head>
    <body class="login-page">
        <div class="login-box">
            <div class="login-logo">
                <img width="200" src="img/logo_ufps.png" alt="">
                <h4><b>Vicerrectoría Asistente de Investigación y Extensión</b></h4>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Ingrese las credenciales para iniciar sesión.</p>
                <form action="" method="post" id="form-login">
                    <div class="form-group has-feedback">
                        <input type="email" name="user" class="form-control" placeholder="Email" required>
                        <span class="fa fa-envelope-o form-control-feedback" style="top: 0"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" name="pass" class="form-control" placeholder="Password" required>
                        <span class="fa fa-lock form-control-feedback" style="top: 0"></span>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-danger btn-block btn-flat" id="btn-login">Iniciar Sesión</button>
                    </div>
                </form>
            </div>
            <!-- /.login-box-body -->
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/mdtoast.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/ajax/login.js"></script>
    </body>
</html>