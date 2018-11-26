<%-- 
    Document   : infoSemillero
    Created on : 10-nov-2018, 18:34:23
    Author     : fasap
--%>

<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Información Básica
            <small>A continuación se visualiza la información del semillero de investigación.</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 col-md-5">
                <div class="box box-widget widget-user-2">
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header bg-purple">
                        <div class="widget-user-image">
                            <img class="img-circle" src="../img/semillero-icon.png" alt="User Avatar">
                        </div>
                        <!-- /.widget-user-image -->
                        <%
                            JSONObject semillero = (JSONObject) session.getAttribute("semillero");
                            JSONObject grupo = semillero.getJSONObject("grupo-investigacion");
                        %>
                        <h3 class="widget-user-username"><%=semillero.getString("nombre").toUpperCase()%></h3>
                        <h5 class="widget-user-desc"><%=semillero.getString("sigla").toUpperCase()%></h5>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-stacked">
                            <li><a>Código: <span class="pull-right"><b><%=semillero.getString("codigo").toUpperCase()%></b></span></a></li>
                            <li><a>Ubicación: <span class="pull-right"><b><%=semillero.getString("ubicacion").toUpperCase()%></b></span></a></li>
                            <li><a>Fecha de Creación: <span class="pull-right"><b><%=semillero.getString("fecha-creacion")%></b></span></a></li>
                            <li><a>Correo: <span class="pull-right"><b><%=semillero.getString("correo")%></b></span></a></li>
                            <li><a>Grupo al que pertenece: <span class="pull-right"><b><%=grupo.getString("nombre")%></b></span></a></li>	                
                        </ul>		              
                    </div>
                    <div class="box-footer no-padding">
                        <a href="registroSemillero.jsp" class="btn btn-block">EDITAR SEMILLERO</a>
                    </div>
                </div>
                <% JSONObject director = semillero.getJSONObject("director");%>
                <div class="box box-purple">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="../img/avatar5.png" alt="User profile picture">
                        <h3 class="profile-username text-center"><%=director.getString("nombre")%></h3>
                        <p class="text-muted text-center">Director del Semillero</p>

                        <!--ul class="list-group list-group-unbordered">
                            <li class="list-group-item">
                                <b>Departamento</b> <a class="pull-right"><%--=director.getString("departamento")--%></a>
                            </li>
                            <li class="list-group-item">
                                <b>Contacto</b> <a class="pull-right"><%--=director.getString("contacto")--%></a>
                            </li>
                            <li class="list-group-item">
                                <b>Email</b> <a class="pull-right"><%--=director.getString("email")--%></a>
                            </li>
                            <li class="list-group-item">
                                <b>Vinculación</b> <a class="pull-right"><%--=director.getString("vinculacion")--%></a>
                            </li>
                        </ul-->
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <% JSONObject lineaInvestigacion = semillero.getJSONObject("linea-investigacion");%>
            <div class="col-md-7 col-xs-12">
                <div class="box box-purple">
                    <div class="box-header with-border">
                        <h3 class="box-title">Información Adicional</h3>
                    </div>
                    <div class="box-body">
                        <!--strong><i class="fa fa-file-text-o margin-r-5"></i> Descripción</strong>
                        <p class="text-muted">
                            <%--=semillero.getString("descripcion")--%>
                        </p>
                        <hr-->
                        <strong><i class="fa fa-file-text-o margin-r-5"></i>Linea de Investigación</strong>
                        <p class="text-muted"><%=lineaInvestigacion.getString("nombre").toUpperCase()%></p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-purple">
                            <div class="inner">
                                <h3></h3>
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
                        <div class="small-box bg-purple">
                            <div class="inner">
                                <h3></h3>
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
<aside class="control-sidebar bg-purple" id="semillero">
    <div class="tab-content">
        <h4 class="control-sidebar-heading">Opciones del Semillero</h4>
        <ul class="control-sidebar-menu">
            <li>
                <a href="participantesSemillero.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Integrantes del Semillero</h4>
                </a>
            </li>
            <li>
                <a href="lineasInvestigacionSemillero.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Lineas de Investigación</h4>
                </a>
            </li>
            <li>
                <a href="proyectos.jsp">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Proyectos</h4>
                </a>
            </li>
            <li>
                <a href="" id="link-plan-accion-semillero">
                    <h4 class="control-sidebar-subheading" style="margin: 0">Plan de Acción</h4>
                </a>
            </li>
        </ul>
    </div>
</aside>
<!-- The sidebar's background -->
<div class="control-sidebar-bg bg-purple"></div>
<script type="text/javascript">
    document.getElementById("link-plan-accion-semillero").href = "procesar/gestionPlanAccionSemillero.jsp?operacion=1&token=" + localStorage.getItem("token")
</script>
<a href="#" data-toggle="control-sidebar" style="z-index: 1001" class="btn bg-purple pull-right btn-fixed" title="Agregar Nuevo Personal">
    <i class="fa fa-bars" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>
