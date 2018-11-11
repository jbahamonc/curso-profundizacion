<%-- 
    Document   : registroProductos
    Created on : 10-nov-2018, 18:54:11
    Author     : fasap
--%>

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
                    <form>
                        <div class="col xs-12 col-md-6">
                            <div class="form-group">
                                <label>Nombre del Producto (*)</label>
                                <input type="text" class="form-control">
                            </div>	
                            <div class="form-group">
                                <label>Tipología (*)</label>
                                <select class="form-control">
                                    <option selected="" disabled="">Seleccione</option>
                                    <option>Tipologia 1</option>
                                    <option>Tipologia 2</option>
                                    <option>Tipologia 3</option>
                                    <option>Tipologia 4</option>
                                    <option>Tipologia 5</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Subtipología (*)</label>
                                <select class="form-control">
                                    <option selected="" disabled="">Seleccione</option>
                                    <option>Tipologia 1</option>
                                    <option>Tipologia 2</option>
                                    <option>Tipologia 3</option>
                                    <option>Tipologia 4</option>
                                    <option>Tipologia 5</option>
                                </select>
                            </div>	
                            <div class="form-group">
                                <label>Tipo de Producto (*)</label>
                                <select class="form-control" id="select-tipo-producto">
                                    <option selected="" disabled="">Seleccione</option>
                                    <option value="0">Libro</option>
                                    <option value="1">Capítulo</option>
                                    <option value="2">Artículo</option>
                                    <option value="3">Trabajo de Grado</option>
                                </select>
                            </div> 
                            <div class="form-group">
                                <label>Categoria (*)</label>
                                <select class="form-control">
                                    <option selected="" disabled="">Seleccione</option>
                                    <option>Categoria 1</option>
                                    <option>Categoria 2</option>
                                    <option>Categoria 3</option>
                                    <option>Categoria 4</option>
                                    <option>Categoria 5</option>
                                </select>
                            </div> 			                      
                            <div class="form-group">
                                <label>Descripción (*)</label>
                                <textarea class="form-control" rows="3"></textarea>
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
                                    <label>ISBN (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Fecha de Publicación (*)</label>
                                    <input type="date" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Autor (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Editorial (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Lugar de Publicación (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Certifición de la Entidad (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Curriculo (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Tipo de Desarrollo (*)</label>
                                    <select class="form-control">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                        <option>option 5</option>
                                    </select>
                                </div>
                            </div>
                            <div id="fields-chapter" class="hidden">
                                <div class="form-group">
                                    <label>Titulo del Libro (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Titulo del Capítulo (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>ISBN Libro (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Fecha de Publicación (*)</label>
                                    <input type="date" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Autor (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Editorial (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Lugar de Publicación (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Certificación de la Entidad (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Curriculo del Capítulo (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Tipo de Desarrollo (*)</label>
                                    <select class="form-control">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                        <option>option 5</option>
                                    </select>
                                </div>
                            </div>
                            <div id="fields-article" class="hidden">
                                <div class="form-group">
                                    <label>Titulo del Artículo (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Autor (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Fecha de Publicación (*)</label>
                                    <input type="month" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>ISSN (*)</label>
                                    <input type="text" class="form-control">
                                </div>            
                                <div class="form-group">
                                    <label>Volumen (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Número (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Página Inicial (*)</label>
                                    <input type="number" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Página Final (*)</label>
                                    <input type="number" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Página Web (*)</label>
                                    <input type="url" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>DOI (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Tipo de Referencia (*)</label>
                                    <select class="form-control">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                        <option>option 5</option>
                                    </select>
                                </div>
                            </div>
                            <div id="fields-project" class="hidden">
                                <div class="form-group">
                                    <label>Titulo del Trabajo (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Autor (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Año (*)</label>
                                    <input type="month" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Institución (*)</label>
                                    <input type="text" class="form-control">
                                </div>            
                                <div class="form-group">
                                    <label>Director (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Coodirector (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Reconocimientos (*)</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Tipo de Trabajo de Grado (*)</label>
                                    <select class="form-control">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                        <option>option 5</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <br><br>
                        <div class="form-group col-xs-12 text-right">
                            <a href="productosProyecto.jsp" class="btn bg-red btn-flat btn-lg">REGISTRAR PRODUCTO</a>
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
                        <label>Objetivo Especifico (*)</label>
                        <textarea id="obj_esp" class="form-control" rows="3"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-objective" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>