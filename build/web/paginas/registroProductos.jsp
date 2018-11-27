<%-- 
    Document   : registroProductos
    Created on : 10-nov-2018, 18:54:11
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
            Registro de Productos
            <small>A continuación podra registrar los productos asociados a un proyecto.</small>
        </h1>
    </section>
    <section class="content">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Formulario de Registro</h3>              	
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <form id="form-products">
                        <input type="hidden" value="6" name="operacion">
                        <div class="col xs-12 col-md-6">
                            <div class="form-group">
                                <label>Nombre del Producto (*)</label>
                                <input type="text" class="form-control" name="nombreProducto" required="">
                            </div>	
                            <div class="form-group">
                                <label>Tipología (*)</label>
                                <select class="form-control" id="select-tipologia" name="tipologia" required>
                                    <option selected="" disabled="">Seleccione</option>
                                    <% 
                                        JSONArray data = (JSONArray)session.getAttribute("tipologia1");
                                        for (int i = 0; i < data.length(); i++) {
                                            JSONObject obj = data.getJSONObject(i);                                            
                                    %>
                                    <option value="<%= obj.getInt("id") %>"><%= obj.getString("nombre") %></option>
                                    <% } %>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Subtipología (*)</label>
                                <select class="form-control" id="select-subtipologia" nam="subtipologia" required>
                                    <option selected="" disabled="">Seleccione</option>
                                </select>
                            </div>	
                            <div class="form-group">
                                <label>Tipo de Producto (*)</label>
                                <select class="form-control" id="select-tipoProducto" name="idTipoProducto" required>
                                    <option selected="" disabled="">Seleccione</option>
                                </select>
                            </div> 
                            <div class="form-group">
                                <label>Categoria (*)</label>
                                <select class="form-control" id="select-catProducto" name="catProducto" required="">
                                    <option selected="" disabled="">Seleccione</option>
                                </select>
                            </div> 			                      
                            <div class="form-group">
                                <label>Descripción (*)</label>
                                <textarea class="form-control" rows="3" name="descProducto" required></textarea>
                            </div>			                
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="alert alert-info alert-dismissible" id="alert-state">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <h4><i class="icon fa fa-info"></i> Importante!</h4>
                                Una vez seleccione el tipo de producto, se desplegaran los campos para el registro de la información adicional.
                            </div>
                            <div id="fields-book" class="hidden">
                                <div class="form-group">
                                    <label>Titulo (*)</label>
                                    <input type="text" class="form-control" name="tituloLibro" required="">
                                </div>
                                <div class="form-group">
                                    <label>ISBN (*)</label>
                                    <input type="text" class="form-control" name="isbn" required="">
                                </div>
                                <div class="form-group">
                                    <label>Fecha de Publicación (*)</label>
                                    <input type="date" class="form-control" name="fechaPublicacion" required="">
                                </div>
                                <div class="form-group">
                                    <label>Autor (*)</label>
                                    <input type="text" class="form-control" name="autoresLibro" required>
                                </div>
                                <div class="form-group">
                                    <label>Editorial (*)</label>
                                    <input type="text" class="form-control" name="editorialLibro" required="">
                                </div>
                                <div class="form-group">
                                    <label>Lugar de Publicación (*)</label>
                                    <input type="text" class="form-control" name="lugarPubliLibro" required="">
                                </div>
                                <div class="form-group">
                                    <label>Certifición de la Entidad (*)</label>
                                    <input type="text" class="form-control" name="certEntidadLibro" required="">
                                </div>
                                <div class="form-group">
                                    <label>Curriculo (*)</label>
                                    <input type="text" class="form-control" name="curriculoLibro">
                                </div>
                                <div class="form-group">
                                    <label>Tipo de Desarrollo (*)</label>
                                    <select class="form-control" name="tipoDesarrolloLibro">
                                        <option disabled="" selected>Seleccione</option>
                                        <option value="1">Tecnológico</option>
                                        <option value="2">Innovación</option>
                                    </select>
                                </div>
                            </div>
                            <div id="fields-chapter" class="hidden">
                                <div class="form-group">
                                    <label>Titulo del Libro (*)</label>
                                    <input type="text" class="form-control" name="tituloLibro" required>
                                </div>
                                <div class="form-group">
                                    <label>Titulo del Capítulo (*)</label>
                                    <input type="text" class="form-control" name="tituloCapitulo" required>
                                </div>
                                <div class="form-group">
                                    <label>ISBN Libro (*)</label>
                                    <input type="text" class="form-control" name="isbn" required>
                                </div>
                                <div class="form-group">
                                    <label>Fecha de Publicación (*)</label>
                                    <input type="date" class="form-control" name="fechaPubli" required="">
                                </div>
                                <div class="form-group">
                                    <label>Autor (*)</label>
                                    <input type="text" class="form-control" name="autor" required="">
                                </div>
                                <div class="form-group">
                                    <label>Editorial (*)</label>
                                    <input type="text" class="form-control" name="editorial" required>
                                </div>
                                <div class="form-group">
                                    <label>Lugar de Publicación (*)</label>
                                    <input type="text" class="form-control" name="lugarPubli" required="">
                                </div>
                                <div class="form-group">
                                    <label>Certificación de la Entidad (*)</label>
                                    <input type="text" class="form-control" name="certEntidad" required>
                                </div>
                                <div class="form-group">
                                    <label>Curriculo del Capítulo (*)</label>
                                    <input type="text" class="form-control" name="curriculo" required>
                                </div>
                                <div class="form-group">
                                    <label>Tipo de Desarrollo (*)</label>
                                    <select class="form-control" name="tipoDesarrollo" required="">
                                        <option disabled="" selected>Seleccione</option>
                                        <option value="1">Tecnológico</option>
                                        <option value="2">Innovación</option>
                                    </select>
                                </div>
                            </div>
                            <div id="fields-article" class="hidden">
                                <div class="form-group">
                                    <label>Nombre de la Revista (*)</label>
                                    <input type="text" class="form-control" name="nombreRevista" required="">
                                </div>
                                <div class="form-group">
                                    <label>Titulo del Artículo (*)</label>
                                    <input type="text" class="form-control" name="tituloArticulo" required="">
                                </div>
                                <div class="form-group">
                                    <label>Fecha de Publicación (*)</label>
                                    <input type="month" class="form-control" name="fechaPubliArt"  required="">
                                </div>
                                <div class="form-group">
                                    <label>ISSN (*)</label>
                                    <input type="text" class="form-control" name="issn" required="">
                                </div>            
                                <div class="form-group">
                                    <label>Volumen (*)</label>
                                    <input type="text" class="form-control" name="volumen" required="">
                                </div>
                                <div class="form-group">
                                    <label>Número (*)</label>
                                    <input type="text" class="form-control" name="numeroArticulo" required="">
                                </div>
                                <div class="form-group">
                                    <label>Página Inicial (*)</label>
                                    <input type="number" class="form-control" name="pageIni" required="">
                                </div>
                                <div class="form-group">
                                    <label>Página Final (*)</label>
                                    <input type="number" class="form-control" name="pageFin" required="">
                                </div>
                                <div class="form-group">
                                    <label>Página Web (*)</label>
                                    <input type="url" class="form-control" name="website" required="">
                                </div>
                                <div class="form-group">
                                    <label>DOI (*)</label>
                                    <input type="text" class="form-control" name="doi" required="">
                                </div>
                                <div class="form-group">
                                    <label>Tipo de Referencia (*)</label>
                                    <select class="form-control" name="tipoArti" required="">
                                        <option selected="" disabled="">Seleccione</option>
                                        <option value="1">Electronico</option>
                                        <option value="2">Impreso</option>
                                    </select>
                                </div>
                            </div>
                            <div id="fields-project" class="hidden">
                                <div class="form-group">
                                    <label>Titulo del Trabajo (*)</label>
                                    <input type="text" class="form-control" name="tituloGrado" required>
                                </div>
                                <div class="form-group">
                                    <label>Año (*)</label>
                                    <input type="month" class="form-control" name="anioGrado" required="">
                                </div>
                                <div class="form-group">
                                    <label>Institución (*)</label>
                                    <input type="text" class="form-control" name="institucionGrado" required>
                                </div>    
                                <div class="form-group">
                                    <label>Reconocimientos (*)</label>
                                    <input type="text" class="form-control" name="reconocimientos" required="">
                                </div>
                            </div>
                            <div id="fields-software" class="hidden">
                                <div class="form-group">
                                    <label>Numero de Registro DNDA (*)</label>
                                    <input type="text" class="form-control" name="dnda" required="">
                                </div>
                                <div class="form-group">
                                    <label>Año de Obtención (*)</label>
                                    <input type="month" class="form-control" name="anioObtencio">
                                </div>
                                <div class="form-group">
                                    <label>Descripción del Analisis (*)</label>
                                    <textarea class="form-control" row="3" name="analisis" required=""></textarea>
                                </div>            
                                <div class="form-group">
                                    <label>Descripción del Diseño (*)</label>
                                    <textarea class="form-control" row="3" name="diseño" required=""></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Descripción de la Implementación (*)</label>
                                    <textarea class="form-control" row="3" name="implementacion" required=""></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Descripción de la Validación (*)</label>
                                    <textarea class="form-control" row="3" name="validacion" required=""></textarea>
                                </div>
                            </div>
                            <div id="fields-ponencia" class="hidden">
                                <div class="row">
                                    <div class="form-group col-xs-12">
                                        <label>Nombre del Evento (*)</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <label>Fecha de Inicio (*)</label>
                                        <input type="date" class="form-control">
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <label>Fecha de Finalización (*)</label>
                                        <input type="date" class="form-control">
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label>Organizadores del Evento (*)</label>
                                        <button type="button" data-toggle="modal" data-target="#modal" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                                        <select class="js-organizadores-evt" data-placeholder="Ingrese los Organizadores" name="responsables-evento[]" multiple style="width: 100%;"></select>
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label>Instituciones Patrocinadoras (*)</label>
                                        <button type="button" data-toggle="modal" data-target="#modal-instituciones" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                                        <select class="js-inst-patrocinadoras" data-placeholder="Ingrese las Instituciones Patrocinadoras" name="inst-patrocinadoras[]" multiple style="width: 100%;"></select>
                                    </div>
                                </div>
                            </div>
                            <div id="box-empty" class="hidden">
                                <div class="text-center">
                                    <img src="../img/sad.png" alt="">
                                    <h3>Lo sentimos!</h3>
                                    <p>EL tipo de producto no es válido, o no esta funcional en el sistema.</p>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <br><br>
                        <div class="form-group col-xs-12 text-right">
                            <button type="button" class="btn bg-red btn-flat btn-lg" id="btn-save-product">REGISTRAR PRODUCTO</button>
                        </div>  			                          				                                      
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /END CONTENT WRAPPER -->

<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nombre (*)</label>
                        <input id="nombre-responsable-evt" class="form-control"></input>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-responsable-evt" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal -->
<div class="modal fade" id="modal-instituciones" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Institución (*)</label>
                        <input id="inst-patrocinadora" class="form-control"></input>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-inst-patrocinadora" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionProductos.js"></script>

</body>
</html>