<%-- 
    Document   : lineasInvestigacionSemillero
    Created on : 10-nov-2018, 19:03:43
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
                <h2 class="info-box-text"><b>Gestion de Lineas de Investigación</b></h2>
                <span class="info-box-number">A continuación podra gestionar las lineas de investigación pertenecientes al semillero de invetigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Listado de Lineas de Investigación</h3>
                    </div>
                    <div class="box-body">
                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th width="200">Nombre</th>
                                    <th width="200">Lider de la Linea</th>
                                    <th>Linea de Vinculación</th>
                                    <th>Descripción</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Ingenieria de Software</td>
                                    <td>Nombre del Responsable</td>
                                    <td>Grupo de Investigacion en Desarrollo de Ingeniería de Sistemas</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam alias aut suscipit doloremque eos optio, dolorem provident consequuntur iusto praesentium totam blanditiis, iure voluptas porro nulla at id laudantium incidunt?</td>
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
                    <div class="form-group">
                        <label>Nombre (*)</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Lider de la Linea (*)</label>
                        <select class="form-control">
                            <option value="" selected disabled> Seleccione</option>
                            <option>option 1</option>
                            <option>option 2</option>
                            <option>option 3</option>
                            <option>option 4</option>
                            <option>option 5</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Linea a la que pertenece (*)</label>
                        <select class="form-control">
                            <option value="" selected disabled> Seleccione</option>
                            <option>Linea 1</option>
                            <option>Linea 2</option>
                            <option>Linea 3</option>
                            <option>Linea 4</option>
                            <option>Linea 5</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Descripción (*)</label>
                        <textarea class="form-control" rows="3"></textarea>
                    </div>	        		
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>