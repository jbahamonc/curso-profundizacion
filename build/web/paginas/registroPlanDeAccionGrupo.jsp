<%-- 
    Document   : registroPlanDeAccionGrupo
    Created on : 10-nov-2018, 18:28:54
    Author     : fasap
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Registro del Plan de Acción
            <small>A continuación podra registrar la información del plan de acción del grupo de investigación.</small>
        </h1>      
    </section>
    <section class="content">        
        <div class="row">
            <div class="col-xs-12 col-md-6">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Formulario de Registro</h3>
                    </div>        	
                    <div class="box-body">
                        <form id="form-plan-action-group">
                            <input type="hidden" value="3" name="operacion">
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Año (*)</label>
                                <select name="anio" class="form-control" required>
                                    <option selected disabled>Seleccione</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                    <option value="2020">2020</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                    <option value="2023">2023</option>
                                </select>
                            </div>				                
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Semestre (*)</label>
                                <select class="form-control" name="semestre" required>
                                    <option selected disabled>Seleccione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>	
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" class="btn bg-red btn-block btn-flat" id="btn-save-action-plan">REGISTRAR PLAN DE ACCIÓN</button>
                            </div>	                				                                      
                        </form>
                    </div>                    
                </div>
                <h2 class="page-header">
                    Información del Plan de Acción Anterior
                    <small>Vincule los proyectos, eventos y actividades del plan de acción anterior.</small>
                </h2>  
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Listado de Proyectos</h3>
                    </div>        	
                    <div class="box-body">
                        <div class="text-center info-empty">
                            <img src="../img/sad.png" alt="">
                            <h4><b>No hay información!</b></h4>
                            <p>No se ha cargado ninguna información en este panel.</p>
                        </div>
                        <div class="box-data-action" id="">
                            <ul class="products-list product-list-in-box" id="ulProjects"></ul>
                        </div>
                    </div>     
                    <div class="overlay hidden" style="display: flex;align-items: center;justify-content: center;background: rgba(255, 255, 255, 0.91);">
                        <div class="text-center">
                            <img src="../img/loader.gif" alt="" class="fa">
                            <p>Cargando Información...</p>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Listado de Eventos</h3>
                    </div>        	
                    <div class="box-body">
                        <div class="text-center" id="info-empty-events">
                            <img src="../img/sad.png" alt="">
                            <h4><b>No hay información!</b></h4>
                            <p>No se ha cargado ninguna información en este panel.</p>
                        </div>
                        <div class="hidden box-data-action">          
                            <ul class="products-list product-list-in-box" id="ulEvents"></ul>                           
                        </div>
                    </div>  
                    <div class="overlay hidden" style="display: flex;align-items: center;justify-content: center;background: rgba(255, 255, 255, 0.91);">
                        <div class="text-center">
                            <img src="../img/loader.gif" alt="" class="fa">
                            <p>Cargando Información...</p>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Listado de Actividades</h3>
                    </div>        	
                    <div class="box-body">
                        <div class="text-center " id="info-empty-activitys">
                            <img src="../img/sad.png" alt="">
                            <h4><b>No hay información!</b></h4>
                            <p>No se ha cargado ninguna información en este panel.</p>
                        </div>
                        <div class="hidden box-data-action">    
                            <ul class="products-list product-list-in-box" id="ulActivitys"></ul>
                        </div>
                    </div> 
                    <div class="overlay hidden" style="display: flex;align-items: center;justify-content: center;background: rgba(255, 255, 255, 0.91);">
                        <div class="text-center">
                            <img src="../img/loader.gif" alt="" class="fa">
                            <p>Cargando Información...</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-6">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Vinculación de Proyectos al Plan de Acción</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>        	
                    <div class="box-body">
                        <form id="form-project-news-plan">
                            <input type="hidden" value="4" name="operacion">
                            <div class="form-group col-xs-12">
                                <label>Seleccione el Proyecto a Vincular (*)</label>
                                <select name="proyecto" id="" class="form-control" required>
                                    <option  selected="" disabled="">Seleccione</option>
                                    <%
                                        JSONObject data = (JSONObject)session.getAttribute("data");
                                        JSONArray proyectos = data.getJSONArray("proyectoNuevo");
                                        for (int i = 0; i < proyectos.length(); i++) {
                                            JSONObject obj = proyectos.getJSONObject(i);
                                    %>
                                        <option value="<%= obj.getInt("id")%>"><%= obj.getString("titulo")%></option>
                                    <% } %> 
                                </select>
                            </div>
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" disabled class="btn bg-red btn-flat button-plans" id="btn-add-project-plan-group">Vincular</button>
                            </div>	                				                                      
                        </form>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Organización de Eventos de Investigación /Científicos</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>        	
                    <div class="box-body">
                        <form id="form-reg-events-plan">
                            <input type="hidden" value="5" name="operacion">
                            <div class="form-group col-xs-12">
                                <label>Nombre del Evento (*)</label>
                                <input type="text" class="form-control" name="nombreEvento" required>
                            </div> 
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Caracter del Evento (*)</label>
                                <select name="caracterEvento" id="" class="form-control" required>
                                    <option selected="" disabled="">Seleccione</option>
                                    <option value="1">Local</option>
                                    <option value="2">Regional</option>
                                    <option value="3">Nacional</option>
                                    <option value="4">Internacional</option>
                                </select>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Responsables del Evento (*)</label>
                                <select required class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables" multiple style="width: 100%;">
                                    <%
                                        JSONArray res = data.getJSONArray("integrante");
                                        for (int i = 0; i < res.length(); i++) {
                                            JSONObject obj = res.getJSONObject(i);
                                    %>
                                        <option value="<%= obj.getString("nombre")%>"><%= obj.getString("nombre")%></option>
                                    <% } %>
                                </select>
                            </div>   
                            <div class="clearfix"></div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Inicio (*)</label>
                                <input type="month" class="form-control" name="fechaIni" required>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Finalización (*)</label>
                                <input type="month" class="form-control" name="fechFin" required>
                            </div>
                            <div class="form-group col-xs-12">
                                <label>Instituciones Promotoras (*)</label>
                                <button type="button" data-toggle="modal" data-target="#modal-promotoras" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                                <select required class="js-inst-promo" data-placeholder="Ingrese los Organizadores" name="intPromotoras" multiple style="width: 100%;"></select>
                            </div>
                            <div class="form-group col-xs-12">
                                <label>Entidades Participante (*)</label>
                                <button type="button" data-toggle="modal" data-target="#modal-entidad" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                                <select required class="js-entidades" data-placeholder="Ingrese las Entidades Participantes" name="entidades" multiple style="width: 100%;"></select>
                            </div>
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" disabled class="btn bg-red btn-flat button-plans" id="btn-save-events-plan">Registrar</button>
                            </div>	                				                                      
                        </form>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Otras Actividades de Investigación</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>        	
                    <div class="box-body">
                        <form id="form-reg-act-plan">
                            <input type="hidden" value="6" name="operacion">
                            <div class="form-group col-xs-12">
                                <label>Nombre de la Actividad (*)</label>
                                <input type="text" class="form-control" name="actividad" required>
                            </div> 
                            <div class="form-group col-xs-12">
                                <label>Responsables de la Actividad (*)</label>
                                <select required class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="respAct" multiple style="width: 100%;">
                                    <% 
                                        JSONArray inte = data.getJSONArray("integrante");
                                        for (int i = 0; i < inte.length(); i++) {
                                            JSONObject obj1 = inte.getJSONObject(i);
                                    %>
                                        <option value="<%= obj1.getString("nombre")%>"><%= obj1.getString("nombre")%></option>
                                    <% } %>
                                </select>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Inicio (*)</label>
                                <input type="month" class="form-control" name="fechaInicio" required>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Finalización (*)</label>
                                <input type="month" class="form-control" name="fechaFinal" required>
                            </div>
                            <div class="form-group col-xs-12">
                                <label>Producto (*)</label>
                                <input type="text" class="form-control" name="producto" required>
                            </div>           	
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" disabled class="btn bg-red btn-flat button-plans" id="btn-save-act-plan">Registrar</button>
                            </div>	                				                                      
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /END CONTENT WRAPPER -->

<!-- Modal instituciones promotoras -->
<div class="modal fade" id="modal-promotoras" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nombre de la Institución(*)</label>
                        <input id="nombre-inst-promo" class="form-control"></input>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-inst-promo" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal entidades participante -->
<div class="modal fade" id="modal-entidad" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nombre de la Entidad(*)</label>
                        <input id="nombre-entidad" class="form-control"></input>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-entidad" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionPlanAccionGrupo.js"></script>

</body>
</html>