<%-- 
    Document   : capacitacionesSemillero
    Created on : 10-nov-2018, 19:05:20
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <div class="info-box p-rel">
            <span class="info-box-icon"><i class="fa fa-book"></i></span>
            <div class="info-box-content">
                <h2 class="info-box-text"><b>Gestión de Capacitaciones</b></h2>
                <span class="info-box-number">A continuación podra gestionar las capacitaciones de los semilleros de investigación.</span>
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
                            <th>Nombre de la Capacitación</th>
                            <th>Objetivo</th>
                            <th>Fecha de Realización</th>
                            <th>Responsables</th>
                            <th># de Asistentes</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Uso de un repositorio digital como un recurso de comunicación que integra tecnologías de información  mediante una estrategia de visibilidad e impacto de la producción</td>
                            <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem praesentium voluptatum vitae consectetur fugiat eius incidunt nihil atque repudiandae commodi laudantium corporis culpa similique odio est, sunt earum. Autem, quis.</td>
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
            <form action="" id="form-capacity">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div id="fields-capacity">
                        <div class="form-group col-xs-12">
                            <label>Linea de Investigación (*)</label>
                            <select class="form-control">
                                <option disabled selected>Seleccione</option>
                                <option value="0">Nombre de la linea</option>
                                <option value="1">Nombre de la linea</option>
                            </select>
                        </div> 
                        <div class="form-group col-xs-12">
                            <label>Nombre de la Capacitación (*)</label>
                            <input type="text" class="form-control">
                        </div>			                
                        <div class="form-group col-xs-12">
                            <label>Objetivo (*)</label>
                            <input type="text" class="form-control">
                        </div>			                		
                        <div class="form-group col-xs-12">
                            <label>Responsables (*)</label>
                            <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="capacitores[]" multiple style="width: 100%;">
                                <option value="AL">Judith del Pilar Rodriguez Tenjo</option>
                                <option value="WY">Oscar Alberto Gallardo Perez</option>
                                <option value="WY">Jessica Lorena Pabón</option>
                                <option value="WY">Gladys Adriana Espinel</option>
                                <option value="WY">Milton Vera Contreras</option>
                            </select>
                        </div>     
                        <div class="clearfix"></div>
                    </div>
                    <div id="fields-capacity-resource" class="hidden">
                        <div class="form-group col-xs-12">
                            <label>Nombre de la Evidencia (*)</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="exampleInputFile">Archivos</label>
                            <input type="file" id="exampleInputFile" multiple>
                            <p class="help-block">Seleccione todos los archivos de la evidencia.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary hidden" id="btn-back-capacity">Atras</button>
                    <button type="button" class="btn btn-primary" id="btn-save-capacity">Siguiente</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>