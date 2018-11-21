<%-- 
    Document   : semillerosInvestigacion
    Created on : 10-nov-2018, 17:42:25
    Author     : fasap
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <div class="info-box p-rel">
            <span class="info-box-icon"><i class="fa fa-book"></i></span>
            <div class="info-box-content">
                <h2 class="info-box-text"><b>Gestión de Semilleros de Investigación</b></h2>
                <span class="info-box-number">A continuación podra gestionar los semilleros de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box box-warning">
            <div class="box-header">
                <h3 class="box-title">Listado de Semilleros Registrados</h3>
            </div>
            <div class="box-body">
                <table id="tablaSemillero" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Nombre del Semillero</th>
                            <th>Siglas</th>
                            <th>Fecha de Creación</th>
                            <th>Tutor(es)</th>
                            <th>Ubicación</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            JSONObject semilleros = (JSONObject)session.getAttribute("semilleros");
                            JSONArray listaSemilleros = semilleros.getJSONArray("semilleros");
                            for (int i = 0; i < listaSemilleros.length(); i++) {
                                JSONObject semillero = listaSemilleros.getJSONObject(i);%>
                        %>
                        <tr>
                            <td><%=semillero.getString("nombreSemillero")%></td>
                            <td><%=semillero.getString("sigla")%></td>
                            <td><%=semillero.getString("fechaCreacion")%></td>
                            <td><%=semillero.getString("directores")%></td>
                            <td><%=semillero.getString("ubicacion")%></td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-xs" id="btn-eli-semillero" data-id="<%=semillero.getInt("id")%>">
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                </button>
                                 <a href="procesar/gestionSemillero.jsp?id=<%= semillero.getInt("id") %>&operacion=5&token=<%= session.getAttribute("token") %>" class="btn btn-success btn-xs">
                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                </a>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<a href="registroSemillero.jsp" class="btn btn-danger pull-right btn-fixed add-person" title="Nuevo Grupo de Investigación">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>
