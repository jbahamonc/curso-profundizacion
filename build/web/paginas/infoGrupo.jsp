<%-- 
    Document   : infoGrupo
    Created on : 10-nov-2018, 18:06:34
    Author     : fasap
--%>

<%@page import="org.json.JSONObject"%>
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
                        <%JSONObject json = (JSONObject)session.getAttribute("grupo"); %>
                        <h3 class="widget-user-username"><%= json.getString("nombre") %></h3>
                        <h5 class="widget-user-desc"><%= json.getString("sigla") %></h5>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-stacked">
                            <li><a>Unidad Académica: <span class="pull-right"><b><%= json.getString("unidad") %></b></span></a></li>
                            <li><a>Ubicación: <span class="pull-right"><b><%= json.getString("ubicacion") %></b></span></a></li>
                            <li><a>Fecha de Creación: <span class="pull-right"><b><%= json.getString("fecha_creacion") %></b></span></a></li>
                            <li><a>Código GrupLav: <span class="pull-right"><b><%= json.getString("codigo_colciencias") %></b></span></a></li>
                            <li><a>Clasificado Colciencias: <span class="pull-right badge bg-green"><b><%= json.getString("clasificado") %></b></span></a></li>
                            <li><a>Categoria: <span class="pull-right badge bg-green"><b><%= json.getString("id_categoria") %></b></span></a></li>
                            <li><a>Correo: <span class="pull-right badge bg-green"><b><%= json.getString("correo") %></b></span></a></li>		                
                        </ul>		              
                    </div>
                    <div class="box-footer no-padding">
                        <a href="procesar/gestionGrupo.jsp?id=<%= json.getString("id_grupo") %>&operacion=3&token=<%= json.getString("token") %>" class="btn btn-block">
                            EDITAR GRUPO
                        </a>
                    </div>
                </div>
                <% JSONObject director = json.getJSONObject("director"); %>
                <div class="box box-warning">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="../img/avatar5.png" alt="User profile picture">
                        <h3 class="profile-username text-center"><%= director.getString("nombre") %></h3>
                        <p class="text-muted text-center">Director de Grupo</p>
                        <ul class="list-group list-group-unbordered">
                            <li class="list-group-item">
                                <b>Departamento</b> <a class="pull-right"><%= director.getString("departamento") %></a>
                            </li>
                            <li class="list-group-item">
                                <b>Contacto</b> <a class="pull-right"><%= director.getString("telefono") %> - <%= director.getString("celular") %></a>
                            </li>
                            <li class="list-group-item">
                                <b>Email</b> <a class="pull-right"><%= director.getString("correo_electronico") %></a>
                            </li>
                            <li class="list-group-item">
                                <b>Vinculación</b> <a class="pull-right"><%= director.getString("nombreModalidad") %></a>
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
                                <h3><%= json.getString("proTerminados") %></h3>
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
                                <h3><%= json.getString("proEjecucion") %></h3>
                                <p>Proyectos en Ejecución</p>
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
