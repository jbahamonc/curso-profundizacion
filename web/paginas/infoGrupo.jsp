<%-- 
    Document   : infoGrupo
    Created on : 10-nov-2018, 18:06:34
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Información Básica
            <small>A continuación se visualiza la información del grupo de investigación.</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 col-md-5">
                <div class="box box-widget widget-user-2">
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header bg-yellow">
                        <div class="widget-user-image">
                            <img class="img-circle" src="../img/team.png" alt="User Avatar">
                        </div>
                        <!-- /.widget-user-image -->
                        <h3 class="widget-user-username">Grupo de Investigación Desarrollo de Ingeniería del Software</h3>
                        <h5 class="widget-user-desc">GIDIS</h5>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-stacked">
                            <li><a>Unidad Académica: <span class="pull-right"><b>lorem ipsum dolor sit mep</b></span></a></li>
                            <li><a>Ubicación: <span class="pull-right"><b>lorem ipsum dolor sit mep</b></span></a></li>
                            <li><a>Fecha de Creación: <span class="pull-right"><b>02/02/2000</b></span></a></li>
                            <li><a>Código GrupLav: <span class="pull-right"><b>COL0199156</b></span></a></li>
                            <li><a>Clasificado Colciencias: <span class="pull-right badge bg-green"><b>SI</b></span></a></li>
                            <li><a>Categoria: <span class="pull-right badge bg-green"><b>A1</b></span></a></li>
                            <li><a>Grupo Reconocido por Colciencias sin Categoría: <span class="pull-right badge bg-green"><b>A1</b></span></a></li>		                
                        </ul>		              
                    </div>
                    <div class="box-footer no-padding">
                        <a href="registroGrupo.jsp" class="btn btn-block">EDITAR GRUPO</a>
                    </div>
                </div>
                <div class="box box-warning">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="../img/avatar5.png" alt="User profile picture">
                        <h3 class="profile-username text-center">Judith del Pilar Rodriguez Tenjo</h3>
                        <p class="text-muted text-center">Director de Grupo</p>

                        <ul class="list-group list-group-unbordered">
                            <li class="list-group-item">
                                <b>Departamento</b> <a class="pull-right">Lorem ipsum dolor sit mep</a>
                            </li>
                            <li class="list-group-item">
                                <b>Contacto</b> <a class="pull-right">34324232 - 23443434</a>
                            </li>
                            <li class="list-group-item">
                                <b>Email</b> <a class="pull-right">contacto@gidis.ufps.edu.co</a>
                            </li>
                            <li class="list-group-item">
                                <b>Vinculación</b> <a class="pull-right">T.C</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <div class="col-md-7 col-xs-12">
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3>0</h3>
                                <p>Proyectos Terminados</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">Ver Todos <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3>0</h3>

                                <p>Proyectos en Ejecución</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">Ver Todos <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3>0</h3>

                                <p>Proyectos de Grado Terminados</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">Ver Todos <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3>0</h3>
                                <p>Proyectos de Grado en Ejecución</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">Ver Todos <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>		        
            </div>
        </div>
    </section>
</div>
<!-- The Right Sidebar -->
<aside class="control-sidebar  bg-yellow">
    <div class="tab-content ">
        <h4 class="control-sidebar-heading">Opciones del Grupo</h4>
        <ul class="control-sidebar-menu">
            <li>
                <a href="investigadores.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Integrantes del Grupo</h4>
                </a>
            </li>
            <li>
                <a href="lineasInvestigacion.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Lineas de Investigación</h4>
                </a>
            </li>
            <li>
                <a href="proyectos.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Proyectos</h4>
                </a>
            </li>
            <li>
                <a href="eventosGrupo.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Eventos</h4>
                </a>
            </li>
            <li>
                <a href="actividades.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Actividades</h4>
                </a>
            </li>
            <li>
                <a href="gruposAsociados.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Grupos Asociados</h4>
                </a>
            </li>
            <li>
                <a href="planAccionGrupo.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Plan de Acción</h4>
                </a>
            </li>
        </ul>
    </div>
</aside>
<!-- The sidebar's background -->
<div class="control-sidebar-bg bg-yellow"></div>
<a href="#" data-toggle="control-sidebar" style="z-index: 1001" class="btn bg-yellow pull-right btn-fixed" title="Menú">
    <i class="fa fa-bars" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>
