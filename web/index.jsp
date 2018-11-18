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
        <% // response.sendRedirect("paginas/index.jsp");%>
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
        <script>
            $(function () {
                jQuery.validator.messages.required = 'Este campo es obligatorio.';
                jQuery.validator.messages.email = 'La direcci&oacute;n de correo no es v&aacute;lida.';
                
                $("#btn-login").on("click", function () {
                    var form = $("#form-login")
                    var isValid = form.valid()
                    if ( isValid ) {
                        $.ajax({
                            url     : '#',
                            type    : 'POST',
                            //dataType : 'json',
                            data     : form.serialize(),
                            success  : function ( response ) {
                                //if ( response.status == 200 ) {
                                //    localStorage.setItem('token', response.token)
                                    $.mdtoast('Sesión iniciada, en un momento sera redireccionado', {
                                        duration  : 5000                
                                    });
                                    setTimeout( function () {
                                        document.location.href = 'paginas/index.jsp'
                                    }, 6000)   
                                //} else {
                                //    $.mdtoast('Las credenciales ingresadas no son válidas', {
                                //        duration  : 7000                
                                //    });
                                //}
                            }
                        })
                    } else {
                        $.mdtoast('Debe ingresar el usuario y la contraseña', {
                            duration  : 5000                
                        });
                    }
                })
                
                
            })
        </script>
    </body>
</html>