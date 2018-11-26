<%-- 
    Document   : infoProyecto
    Created on : 10-nov-2018, 18:30:50
    Author     : fasap
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Información del Proyecto
            <small>A continuación podra visualizar la información basica del proyecto.</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 col-md-5">
                <div class="box box-widget widget-user-2">
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header bg-green">
                        <div class="widget-user-image">
                            <img class="img-circle" src="../img/project.png" alt="User Avatar">
                        </div>
                        <!-- /.widget-user-image -->
                        <% 
                            JSONArray data = (JSONArray)session.getAttribute("infoProject");
                            JSONObject info = data.getJSONObject(0);
                        %>
                        <h3 class="widget-user-username"><%= info.getString("titulo") %></h3>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-stacked">
                            <li><a>Linea de Investigación: <span class="pull-right"><b><%= info.getJSONObject("linea").getString("nombre") %></b></span></a></li>
                            <li><a>Tiempo de Ejecución: <span class="pull-right"><b>3 Meses</b></span></a></li>
                            <li><a>Tipo de Proyecto: <span class="pull-right"><b><%= info.getJSONObject("tipo").getString("nombre") %></b></span></a></li>
                            <li><a>Num. Contrato: 
                                    <span class="pull-right">
                                        <b><%= (info.getJSONObject("tipo").getString("nombre").equals("FINU"))? info.getString("n_contrato"):"-" %></b>
                                    </span>
                                </a>
                            </li>
                            <li><a>Fecha de Inicio: <span class="pull-right"><b><%= info.getString("fecha-inicio") %></b></span></a></li>
                            <li><a>Fecha de Finalización: <span class="pull-right"><b><%= info.getString("fecha-final") %></b></span></a></li>
                            <li><a>Costo Total: <span class="pull-right"><b>$ <%= info.getLong("costoTotal") %></b></span></a></li>
                            <li>
                                <a>Estado del Proyecto: 
                                    <span class="pull-right badge <%= (info.getInt("estado") == 1)? "bg-green":"bg-red" %>">
                                        <b><%= (info.getInt("estado") == 1)? "En Ejecición":"Finalizado" %></b>
                                    </span>
                                </a>
                            </li>
                        </ul>		              
                    </div>
                    <div class="box-footer no-padding hidden">
                        <a href="registrarProyecto.jsp" class="btn btn-block btn-flat btn-success">Editar Proyecto</a>
                    </div>
                </div>
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Responsables del Proyecto</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <ul class="products-list product-list-in-box">
                            <li class="item">
                                <div class="product-img">
                                    <img src="../img/avatar5.png" alt="Product Image">
                                </div>
                                <div class="product-info">
                                    <a href="#" class="product-title">Nombre del Investigador
                                        <span class="label label-success pull-right">GIDIS</span></a>
                                    <span class="product-description">correo@algo.com</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- /.box-body -->
                </div>		        
            </div>
            <div class="col xs-12 col-md-7">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Información de Objetivos</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="box-body">
                        <strong><i class="fa fa-file-text-o margin-r-5"></i> Objetivo General</strong>
                        <p class="text-muted">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quam vero, voluptatibus quaerat minus blanditiis! Odio quo, ratione, magnam quia fuga quae earum! Voluptate totam iure expedita blanditiis nesciunt recusandae.
                        </p>
                        <hr>
                        <strong><i class="fa fa-file-text-o margin-r-5"></i>Objetivos Específicos</strong>
                        <ul>
                            <li class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
                            <li class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
                            <li class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
                            <li class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
                        </ul>
                    </div>
                </div>
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Información de Resultados</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="box-body">
                        <strong><i class="fa fa-file-text-o margin-r-5"></i> Resultados Esperados</strong>
                        <p class="text-muted">
                            <%= info.getString("resultados-esperados") %>
                        </p>
                        <hr>
                        <strong><i class="fa fa-file-text-o margin-r-5"></i>Resultados Obtenidos</strong>
                        <p class="text-muted">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error quam vero, voluptatibus quaerat minus blanditiis! Odio quo, ratione, magnam quia fuga quae earum! Voluptate totam iure expedita blanditiis nesciunt recusandae.
                        </p>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
        </div>
    </section>
</div>
<!-- The Right Sidebar -->
<aside class="control-sidebar  bg-green">
    <div class="tab-content bg-green">
        <h4 class="control-sidebar-heading">Opciones del Proyecto</h4>
        <ul class="control-sidebar-menu">
            <li>
                <a href="procesar/gestionProductos.jsp?operacion=1">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Productos</h4>
                </a>
            </li>
            <li>
                <a href="integrantesProyecto.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Integrantes</h4>
                </a>
            </li>
            <li>
                <a href="infoFinanciacionProyecto.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Financiación</h4>
                </a>
            </li>
            <li>
                <a href="gestionActividadesProyecto.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Gestión de Actividades</h4>
                </a>
            </li>
        </ul>
    </div>
</aside>
<!-- The sidebar's background -->
<div class="control-sidebar-bg bg-green"></div>
<a href="#" data-toggle="control-sidebar" style="z-index: 1001" class="btn bg-green pull-right btn-fixed" title="Agregar Nuevo Personal">
    <i class="fa fa-bars" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>