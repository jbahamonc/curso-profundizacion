<%-- 
    Document   : home
    Created on : 24/11/2018, 04:35:45 PM
    Author     : jeferson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
        <title>Portal de Calidad | Programa Ingenieria de Sistemas</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/AdminLTE.min.css" >
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <header>
            <div id="barra-superior" class="bg-red-ufps">
                <div class="blog-topbar">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-7 col-xs-7">
                                <ul class="topbar-list topbar-menu">
                                    <li><a href="/universidad/perfiles/aspirantes/952"><i class="fa fa-users"></i> Aspirantes</a></li>
                                    <li><a href="/universidad/perfiles/estudiantes/953"><i class="fa fa-user"></i> Estudiantes</a></li>
                                    <li><a href="/universidad/perfiles/egresados/954"><i class="fa fa-graduation-cap"></i> Graduados</a></li>
                                    <li><a href="https://docentes.ufps.edu.co/"><i class="fa fa-user-secret"></i> Docentes</a></li>
                                    <li><a href="http://nomina.ufps.edu.co:9191/nominaufps"><i class="fa fa-briefcase"></i> Administrativos</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-sm-5">
                                <ul class="topbar-list topbar-menu pull-right">
                                    <li><a href="paginas/login.jsp"><i class="fa fa-sign-in"></i> Login</a></li>
                                </ul>
                            </div>
                        </div><!--/end row-->
                    </div><!--/end container-->
                </div>
                <!-- End Topbar blog -->
            </div>
            <div class="bg-img-ufps">
                <div class="parallax">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-5">
                            <a href="./">
                                <img id="logo-header" src="img/logo_ufps.png" alt="Logo Programa de Ingeniería de Sistemas" style="max-height:180px;">
                            </a>
                        </div>
                        <div class="col-md-2 col-ms-1 col-xs-2 pull-right">
                            <a href="http://www.colombia.co/"><img class="header-banner" src="https://ww2.ufps.edu.co/public/imagenes/template/header/escudo_colombia.png" alt="Escudo de Colombia"></a>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="navbar bg-nav-ufps" style="border-radius: 0;">
                <div class="container">
                    <div class="collapse navbar-collapse" id="navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="./">Inicio </a></li>
                            <li><a href="paginas/procesar/gestionGrupos.jsp?operacion=6">Grupos de Investigación </a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main>
            <div class="container" style="background-color: #FFF;">
                <img src="img/logo_ufps.png" alt="" class="center-block">
                <h3 class="text-center">Sistema para el registro y consulta de proyectos, productos y planes de acción grupos y semilleros de investigación de la UFPS</h3> 
                <div id="carousel-example-generic" class="carousel hidden slide" data-ride="carousel" style="margin: 30px 0;">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="img/bg-slider1.jpg" alt="...">
                        </div>
                        <div class="item">
                            <img src="img/bg-slider2.png" alt="...">
                        </div>
                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div style="margin-bottom:40px">                                  
                    <div class="headline" style="margin-bottom: 30px;">
                        <h1>Presentación</h1>
                    </div>
                    <div class="shadow-wrapper">        
                        <blockquote class="tag-box tag-box-v4" style="margin-bottom:40px;font-size: 17px;">
                            <h4><p><strong>Vicerrector:</strong>&nbsp;&nbsp;Jhan Piero&nbsp;Rojas Suárez<br>
                                    <strong>Correo institucional:</strong> viceinvestigaciones@ufps.edu.co -&nbsp;jhanpierorojas@ufps.edu.co<br>
                                    <strong>Nombre:</strong> Jessica Lorena Leal Pabón<br>
                                    <strong>Cargo:</strong> Coordinadora de Investigación<br>
                                    <strong>Correo Electrónico:</strong> viceinvestigaciones@ufps.edu.co<br>
                                    <strong>Teléfono:</strong> 5776655 Ext. 333<br>
                                    <strong>Ubicación:</strong> Edificio de Investigaciones<br>
                                    <strong>Horario de atención:</strong> lunes a viernes 8:00 a.m. a 12:00 m. y 2:00 p.m. a 6:00 p.m.</p>
                            </h4>
                        </blockquote>
                    </div>
                    <h4><p>AIE es un sistema para el registro y consulta  de proyectos ,productos y planes de acción de grupos y semilleros de investigación de la UFPS que  permite realizar la procesos relacionados con la labor investigativa de los docentes investigadores, asi mismo generar reportes y estadisticas de la producción de los mismos.</p>
                    </h4>
                </div>
            </div>
        </main>
        <footer>
            <div class="footer-cont">
                <div class="container">
                    <div class="row">
                        <!-- About -->
                        <div class="col-md-3 col-sm-4 md-margin-bottom-40">
                            <div class="footer-main">
                                <a href="http://ww2.ufps.edu.co"><img width="200" id="logo-footer" class="img-responsive" src="img/logoufpsvertical.png" alt="Logo Pie de Página"></a>
                            </div>
                        </div><!--/col-md-3-->
                        <!-- End About -->
                        <!-- Latest -->
                        <div class="col-md-3 col-sm-4 md-margin-bottom-40">
                            <div class="posts">
                                <div class="headline"><h2>Visitantes</h2></div>
                                <ul class="list-unstyled latest-list">
                                    <li style="color:#fff">
                                        Hoy: 152                  </li>
                                    <li style="color:#fff">
                                        Último mes: 4.273                  </li>
                                    <li style="color:#fff">
                                        Desde el principio: 18.084                  </li>
                                </ul>
                            </div>
                        </div><!--/col-md-3-->
                        <!-- End Latest -->
                        <!-- Link List -->
                        <div class="col-md-3 col-sm-4  md-margin-bottom-40">
                            <div class="headline"><h2>Enlaces de Interés</h2></div>
                            <ul class="list-unstyled latest-list">
                                <li><a href="javascript:;">Sitio Web-Departamento de Sistemas</a></li>
                                <li><a href="http://biblioteca.ufps.edu.co" target="_blank">Biblioteca Eduardo Cote Lamus</a></li>
                                <li><a href="http://200.93.148.47/bienestar/" target="_blank">Vicerrectoría de Bienestar Universitario</a></li>
                                <li><a href="./index.php?id=27">Cronograma del Comité Curricular</a></li>
                                <li><a href="http://php.net/" target="_blank">Recursos PHP</a></li>
                                <li><a href="https://www.facebook.com/IngSistUFPS/?fref=ts">Facebook</a></li>
                                <li><a href="http://200.93.148.29/">Ir a versión Anterior</a></li>
                            </ul>
                        </div><!--/col-md-3-->
                        <!-- End Link List -->
                        <!-- Address -->
                        <div class="col-md-3 col-sm-4  map-img md-margin-bottom-40">
                            <div class="headline" style="border-bottom: #272727;"><h2>Contactos</h2></div>
                            <address class="md-margin-bottom-40">
                                Avenida Gran Colombia No. 12E-96 Barrio Colsag,<br> 
                                San José de Cúcuta - Colombia<br>
                                Teléfono (057)(7) 5776655<br> 
                                Correo: oficinadeprensa@ufps.edu.co<br>
                            </address>
                        </div><!--/col-md-3-->
                        <!-- End Address -->
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9">
                            <p>
                                2018 © All Rights Reserved.                        
                            </p>
                            <p>Desarrollado por: <a href="#">Jefferson Bahamon - Farid Peñaranda - Daniel Gomez - Luis Sandoval - Mauricio Peñaranda - Sergio Villamizar</a></p>
                        </div>
                        <!-- Social Links -->
                        <div class="col-md-3">
                            <ul class="list-inline dark-social pull-right space-bottom-0">
                                <li>
                                    <a href="https://www.facebook.com/UFPS-C%C3%BAcuta-553833261409690" target="_blank"><i class="fa fa-facebook" style="color:#fff;"></i></a>
                                </li>
                                <li>
                                    <a href="https://twitter.com/UFPSCUCUTA" target="_blank"><i class="fa fa-twitter" style="color:#fff;"></i></a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/channel/UCgPz-qqaAk4lbHfr0XH3k2" target="_blank"><i class="fa fa-youtube" style="color:#fff;"></i></a>
                                </li>
                                <li>
                                    <a href="https://www.instagram.com/ufpscucuta/" target="_blank"><i class="fa fa-instagram" style="color:#fff;"></i></a>
                                </li>
                            </ul>
                        </div>
                        <!-- End Social Links -->
                    </div>
                </div>
            </div>
        </footer>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
