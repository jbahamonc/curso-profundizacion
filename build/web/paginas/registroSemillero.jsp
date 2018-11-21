<%-- 
    Document   : registroSemillero
    Created on : 10-nov-2018, 17:39:23
    Author     : fasap
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <div class="info-box p-rel">
            <span class="info-box-icon"><i class="fa fa-book"></i></span>
            <div class="info-box-content">
                <h2 class="info-box-text"><b>Registro de Semilleros de Investigación</b></h2>
                <span class="info-box-number">A continuación podra registrar la información del semillero de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Formulario de Registro</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <p>
                    <span class="label label-danger">IMPORTANTE: Todos los campos marcados con asterisco (*) son obligatorios</span>                    
                </p>
                <div class="row">
                    <form id="form-register-semillero">
                        <input type="hidden" value="1" name="operacion"/>
                        <div class="form-group col-xs-12 col-md-8">
                            <label>Nombre del Semillero (*)</label>
                            <input type="text" class="form-control" name="nombre" required>
                        </div>				                
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Siglas (*)</label>
                            <input type="text" class="form-control" name="sigla" required>
                        </div> 
                        <div class="form-group col-xs-12 col-md-8">
                            <label>Ubicación (*)</label>
                            <input type="text" class="form-control" name="ubicacion" required>
                        </div>    
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Fecha de Creación (*)</label>
                            <input type="date" class="form-control" name="fechaCreacion" required>
                        </div>  	                 
                         <%  
                            JSONObject directores = (JSONObject)session.getAttribute("directores");
                            JSONArray listaDirectores = directores.getJSONArray("docente");
                        %>
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Director(es) del Grupo (*)</label>
                            <select required class="form-control" name="director">
                                <option selected disabled>Seleccione un director</option>
                                <% for (int i = 0; i < listaDirectores.length(); i++) {
                                    JSONObject director = listaDirectores.getJSONObject(i); 
                                %>
                                <option value="<%=director.getInt("id")%>"><%=director.getString("nombre")%></option>
                                <% } %>
                            </select>
                        </div>
                        <%  
                            JSONObject lineasInvestigacion = (JSONObject)session.getAttribute("lineasInvestigacion");
                            JSONArray listaLineasInvestigacion = lineasInvestigacion.getJSONArray("lineasInvestigacion");
                        %>
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Linea de Investigación (*)</label>
                            <select required class="form-control" name="lineaInvestigacion">
                                <option selected disabled>Seleccione Linea de Investigación</option>
                                <% for (int i = 0; i < listaLineasInvestigacion.length(); i++) {
                                    JSONObject lineaInvestigacion = listaLineasInvestigacion.getJSONObject(i); 
                                %>
                                <option value="<%=lineaInvestigacion.getInt("id")%>"><%=lineaInvestigacion.getString("nombre")%></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="form-group col-xs-12">
                            <label>Descripción</label>
                            <textarea required class="form-control" rows="3" name="descripcion"></textarea>
                        </div> 
                        <div class="form-group col-xs-12 text-right">
                            <a type="button" class="btn bg-red btn-flat btn-lg" id="btn-save-semillero">REGISTRAR SEMILLERO</a>
                        </div>                	                                      
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionSemillero.js"></script>