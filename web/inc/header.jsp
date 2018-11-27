<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Curso de profundizacion</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/select2.min.css">	
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/skin-red-light.min.css">
        <link rel="stylesheet" href="../css/AdminLTE.min.css">	
        <link rel="stylesheet" href="../css/pace.min.css">
        <link rel="stylesheet" href="../css/daterangepicker.css">
        <link rel="stylesheet" href="../css/mdtoast.css">
        <link rel="stylesheet" href="../css/admin.css">
    </head>
    <body id="con" class="hold-transition skin-red-light sidebar-mini fixed">
        <div class="wrapper">
            <!-- NAVBAR -->
            <header class="main-header">
                <!-- Logo -->
                <a href="./" class="logo">
                    <span class="logo-mini">
                        <b>INV.</b>
                    </span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg">INVESTIGADOR</b></span>
                </a>
                <!-- Header Navbar -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- User Account Menu -->
                            <li class="dropdown user user-menu">
                                <!-- Menu Toggle Button -->
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <!-- The user image in the navbar-->
                                    <img src="../img/avatar5.png" class="user-image" alt="User Image">
                                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                    <span class="hidden-xs" style="text-transform: capitalize;">NOMBRE</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- The user image in the menu -->
                                    <li class="user-header">
                                        <img src="../img/avatar5.png" class="img-circle" alt="User Image">
                                            <p style="text-transform: capitalize;">
                                                NOMBRE
                                                <small>Administrador</small>
                                            </p>
		                    	</li>
			                    <!-- Menu Footer-->
			                    <li class="user-footer">
			                      	<div class="pull-right">
			                        	<a href="../index.jsp" class="btn btn-default btn-flat">Cerrar Sesion</a>
			                      	</div>
			                    </li>
		                	</ul>
		            	</li>
		          	</ul>
		        </div>
	      	</nav>
	    </header>
	    <!-- /END NAVBAR -->
	    <!-- SIDEBAR!-->
	    <aside class="main-sidebar">
	      	<section class="sidebar">
		        <div class="user-panel">
		            <div class="pull-left image">
		                <img src="../img/avatar5.png" class="img-circle" alt="User Image">
		            </div>
		            <div class="pull-left info">
		                <p style="text-transform: capitalize;">Nombre</p>
		                <!-- Status -->
		                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
		            </div>
		        </div>
	        	<!-- Sidebar Menu -->
	        	<ul class="sidebar-menu tree" data-widget="tree">
                            <li class="header">MENÚ PRINCIPAL</li>
                            <li>
		                <a href="index.jsp"><i class="fa fa-home"></i> <span>home</span></a>
		            </li>
                            <% 
                                JSONObject sesion = (JSONObject)session.getAttribute("usuario_sesion");
                                if (!sesion.getString("exito").equals("1")) {   
                                    response.sendError(403, "Usted no esta autorizado");
                                } else {
                                    String rol = sesion.getJSONObject("usuario").getString("Rol");
                                    if (rol.equals("director grupo")) {
                            %>                            
                                    <li class="treeview">
                                        <a href="#">
                                            <i class="fa fa-users"></i>
                                            <span>Gestión de Grupos</span>
                                            <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                                        </a>
                                        <ul class="treeview-menu" style="display: none;">
                                            <li><a href="" id="link-reg-groups"><i class="fa fa-circle-o"></i>Registro</a></li>
                                            <li><a href="" id="link-consult-groups"><i class="fa fa-circle-o"></i>Ver Grupos</a></li>
                                            <li><a href="procesar/gestionGrupos.jsp?operacion=7"><i class="fa fa-circle-o"></i><span>Categorias</span></a></li>
                                        </ul>
                                        <script>
                                            document.getElementById("link-reg-groups").href = "procesar/gestionGrupos.jsp?operacion=4&token="+localStorage.getItem("token")
                                            document.getElementById("link-consult-groups").href = "procesar/gestionGrupos.jsp?operacion=3&token="+localStorage.getItem("token")
                                        </script>
                                    </li>
                                <% } else if (rol.equals("director semillero")) {%>
                                    <li class="treeview">
                                        <a href="#">
                                            <i class="fa fa-users"></i>
                                            <span>Semilleros</span>
                                            <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                                        </a>
                                        <ul class="treeview-menu" style="display: none;">
                                            <li><a href="" id="link-listar-semilleros"><i class="fa fa-circle-o"></i>Ver Semilleros</a></li>
                                        </ul>
                                         <script>
                                            document.getElementById("link-listar-semilleros").href = "procesar/gestionSemillero.jsp?operacion=2&token="+localStorage.getItem("token")
                                        </script>
                                    </li>     
                                    <% } else if (rol.equals("administrador")) {%>
                                        <li class="treeview">
                                            <a href="#">
                                                <i class="fa fa-list"></i>
                                                <span>Gestión de Categorias</span>
                                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                                            </a>
                                            <ul class="treeview-menu" style="display: none;">
                                                <li>
                                                    <a href="categoriaDedicacion.jsp"><i class="fa fa-circle-o"></i> <span>Categorias Dedicación</span></a>
                                                </li>
                                                <li>
                                                    <a href="categoriaDocente.jsp"><i class="fa fa-circle-o"></i> <span>Categoria Formación</span></a>
                                                </li>
                                                <li>
                                                    <a href="categoriaInvestigador.jsp"><i class="fa fa-circle-o"></i> <span>Categoria Investigador</span></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="treeview">
                                            <a href="#">
                                                <i class="fa fa-file-o"></i>
                                                <span>Gestión de Tipologías</span>
                                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                                            </a>
                                            <ul class="treeview-menu" style="display: none;">
                                                <li>
                                                    <a href="tipologiasProducto.jsp"><i class="fa fa-circle-o"></i> <span>Tipologías</span></a>
                                                </li>
                                                <li>
                                                    <a href="subtipologiaProducto.jsp"><i class="fa fa-circle-o"></i> <span>Subtipologías</span></a>
                                                </li>
                                                <li>
                                                    <a href="tiposProducto.jsp"><i class="fa fa-circle-o"></i> <span>Tipo de Productos</span></a>
                                                </li>
                                                <li>
                                                    <a href="categoriaProductos.jsp"><i class="fa fa-circle-o"></i> <span>Categorias</span></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="treeview">
                                            <a href="#">
                                                <i class="fa fa-search"></i>
                                                <span>Consultas</span>
                                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                                            </a>
                                            <ul class="treeview-menu" style="display: none;">
                                                <li>
                                                    <a href="produccionTipologia.jsp"><i class="fa fa-circle-o"></i> <span>Filtro de Tipologías</span></a>
                                                </li>
                                                <li>
                                                    <a href="produccionGrupo.jsp"><i class="fa fa-circle-o"></i> <span>Producción Grupos</span></a>
                                                </li>
                                                <li>
                                                    <a href="produccionSemillero.jsp"><i class="fa fa-circle-o"></i> <span>Producción Semilleros</span></a>
                                                </li>
                                                <li>
                                                    <a href="produccionInvestigador.jsp"><i class="fa fa-circle-o"></i> <span>Producción Investigador</span></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="treeview">
                                            <a href="#">
                                                <i class="fa fa-university"></i>
                                                <span>Gestión Universitaria</span>
                                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                                            </a>
                                            <ul class="treeview-menu" style="display: none;">
                                                <li>
                                                    <a href="procesar/gestionFacultad.jsp?operacion=3"><i class="fa fa-circle-o"></i> <span>Facultades</span></a>
                                                </li>
                                                <li>
                                                    <a href="programasAcademicos.jsp"><i class="fa fa-circle-o"></i> <span>Programas</span></a>
                                                </li>
                                                <li>
                                                    <a href="departamentos.jsp"><i class="fa fa-circle-o"></i> <span>Departamentos</span></a>
                                                </li>
                                            </ul>
                                        </li>
                                    <% } %>
		            <% } %>
		        </ul>
	      	</section>
	    </aside>
	    <!-- /END SIDEBAR -->