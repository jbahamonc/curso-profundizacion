<%-- 
    Document   : gruposInvestigacion
    Created on : 10-nov-2018, 17:30:16
    Author     : fasap
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <div class="info-box p-rel">
            <span class="info-box-icon"><i class="fa fa-book"></i></span>
            <div class="info-box-content">
                <h2 class="info-box-text"><b>Registro de grupos de Investigación</b></h2>
                <span class="info-box-number">A continuación podra registrar la información del grupo de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box box-warning">
            <div class="box-header">
                <h3 class="box-title">Listado de Grupos Registrados</h3>
            </div>
            <div class="box-body">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Nombre del Grupo</th>
                            <th>Fecha de Creación</th>
                            <th>Código</th>
                            <th>Director</th>
                            <th>Categoria</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            JSONArray grupos = (JSONArray)session.getAttribute("grupos");
                            for (int i = 0; i < grupos.length(); i++) {
                                JSONObject obj = grupos.getJSONObject(i);
                        %>
                        <tr>
                            <td><%= obj.getString("nombre") %></td>
                            <td><%= obj.getString("fecha_creacion") %>0</td>
                            <td><%= obj.getString("codigo") %></td>
                            <td><%= obj.getString("director") %></td>
                            <td><%= obj.getString("grupo") %></td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-xs" data-id="<%= obj.getString("id") %>" id="btn-del-group">
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                </button>
                                <a href="prosesar/gestionGrupo.jsp?id=<%= obj.getString("id") %>&operacion=2&token=session.getAttributr('token')" class="btn btn-success btn-xs">
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
<a href="registroGrupo.jsp" class="btn btn-danger pull-right btn-fixed add-person" title="Nuevo Grupo de Investigación">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionGrupo.js"></script>

</body>
</html>
