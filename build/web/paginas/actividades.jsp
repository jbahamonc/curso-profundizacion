<%-- 
    Document   : actividades
    Created on : 10-nov-2018, 16:55:07
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- CONTENT WRAPPER -->
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <div class="info-box p-rel">
            <span class="info-box-icon"><i class="fa fa-book"></i></span>
            <div class="info-box-content">
                <h2 class="info-box-text"><b>Gestión de Actividades</b></h2>
                <span class="info-box-number">A continuación podra gestionar las actividades del grupo de investigación o semilleros de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Listado de Actividades</h3>
            </div>
            <div class="box-body">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nombre de la Actividad</th>
                            <th>Fecha de Realización</th>
                            <th>Responsables</th>
                            <th>Producto</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Uso de un repositorio digital como un recurso de comunicación que integra tecnologías de información  mediante una estrategia de visibilidad e impacto de la producción</td>
                            <td>Febrero 2018 – Noviembre 2018</td>
                            <td>Oscar A. Gallardo Perez - Milton Jesus Vera C - Judith del Pilar Rodriguez T</td>
                            <td>Envío de Articulo para publicación  Journal Physic ConferenCes</td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-xs">
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<a href="" data-toggle="modal" data-target="#modal" class="btn btn-danger pull-right btn-fixed" title="Agregar Nuevo Personal">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
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
                    <div class="alert alert-warning alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4><i class="icon fa fa-warning"></i> Importante!</h4>
                        Las Actividadedes de Investigación corresponden a Espacios de socialización, Foros, Reuniones, Elaboración de documentos, entre otros.
                    </div>
                    <div class="form-group col-xs-12">
                        <label>Nombre de la Actividad (*)</label>
                        <input type="text" class="form-control">
                    </div>			                
                    <div class="form-group col-xs-12">
                        <label>Responsables(s) (*)</label>
                        <button type="button" data-toggle="modal" data-target="#modal-responsables" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                        <select class="js-estudiantes-plan" data-placeholder="Ingrese los estudiantes" name="responsables-actividad[]" multiple style="width: 100%;"></select>	                  	
                            
                    </div>			                		
                    <div class="form-group col-xs-12">
                        <label>Producto (*)</label>
                        <input type="text" class="form-control">
                    </div>      
                    <div class="clearfix"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal -->
<div class="modal fade" id="modal-responsables" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Agregar Responsables</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group col-xs-12">
                        <label>Nombre del Responsable (*)</label>
                        <input type="text" class="form-control" id="nombre-responsable">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btn-add-responsable">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>