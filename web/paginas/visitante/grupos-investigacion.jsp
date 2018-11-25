<%-- 
    Document   : home
    Created on : 24/11/2018, 04:35:45 PM
    Author     : jeferson
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
        <title>Portal de Calidad | Programa Ingenieria de Sistemas</title>
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/AdminLTE.min.css" >
        <link rel="stylesheet" href="../../css/font-awesome.min.css">
        <link rel="stylesheet" href="../../css/main.css">
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
                                <li><a href="../login.jsp"><i class="fa fa-sign-in"></i> Login</a></li>
                            </ul>
                        </div>
                    </div><!--/end  
                </div><!--/end container-->
            </div>
            <!-- End Topbar blog -->
        </div>
        <div class="bg-img-ufps">
            <div class="parallax">
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-xs-5">
                        <a href="./">
                            <img id="logo-header" src="../../img/logo_ufps.png" alt="Logo Programa de Ingeniería de Sistemas" style="max-height:180px;">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar bg-nav-ufps" style="border-radius: 0;">
            <div class="container">
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="../../">Inicio </a></li>
                        <li><a href="grupos-investigacion.jsp">Grupos de Investigación </a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="container" style="background-color: #FFF;">
            <h2>Listado de Grupos de Investigación</h2>
            <table class="table"> 
                <caption>A continuacion podra visualizar los grupos de investigación, asi como sus proyectos asociados.</caption> 
                <thead> 
                    <tr> 
                        <th>#</th> 
                        <th>Nombre del Grupo</th> 
                        <th>Fecha de Creación</th> 
                        <th>Codigo</th> 
                        <th>Director</th> 
                        <th>Categoria</th> 
                        <th>Acciones</th> 
                    </tr> 
                </thead> 
                <tbody> 
                    <% 
                        JSONObject grupos = (JSONObject)session.getAttribute("grupos");
                        JSONArray lista = grupos.getJSONArray("grupos");
                        if ( grupos != null ) {
                            for (int i = 0; i < lista.length(); i++) {
                                JSONObject obj = lista.getJSONObject(i);
                    %>
                    <tr> 
                        <th scope="row"><%= i + 1 %></th> 
                        <td><%= obj.getString("nombre") %></td> 
                        <td><%= obj.getString("fecha_creacion") %></td> 
                        <td><%= obj.getString("codigo_colciencias") %></td> 
                        <td><%= obj.getString("nombreDirector") %></td> 
                        <td><%= obj.getString("nombre_categoria") %></td> 
                        <td>
                            <a href="../procesar/gestionProyecto.jsp?id=<%=obj.getInt("id")%>&operacion=6" class="btn btn-success btn-xs">
                                <i class="fa fa-eye" aria-hidden="true"></i>
                            </a>
                        </td>
                    </tr>    
                    <%      }
                        }
                    %>
                </tbody> 
            </table>
        </div>
    </main>
    <footer>
        <div class="footer-cont">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 col-sm-4 md-margin-bottom-40">
                      <div class="footer-main">
                        <a href="http://ingsistemas@ufps.edu.co"><img width="200" id="logo-footer" class="img-responsive" src="../../img/logo_ingsistemas_vertical_invertido.png" alt="Logo Pie de Página"></a>
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
                    Programa de Ingeniería de Sistemas de la Universidad Francisco de Paula Santander<br>Acreditación de alta calidad según resolución No. 15757 del Ministerio de Educación Nacional<br>Avenida Gran Colombia No. 12E-96 Barrio Colsag, Cúcuta, Colombia<br>Teléfono (57) 7 5776655 Extensiones 201 y 203<br>Correo electrónico: ingsistemas@ufps.edu.co              </address>
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
        <script src="../js/jquery.min.js"></script>
       <script src="../js/bootstrap.min.js"></script>
       <script src="../js/dataTables.bootstrap.min.js"></script>
    </body>
</html>
