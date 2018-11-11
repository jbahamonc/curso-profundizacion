<%-- 
    Document   : eventosGrupo
    Created on : 10-nov-2018, 18:13:57
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
                <h2 class="info-box-text"><b>Gestión de Eventos</b></h2>
                <span class="info-box-number">A continuación podra gestionar los eventos del grupo de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Listado de Eventos</h3>
            </div>
            <div class="box-body">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nombre del Evento</th>
                            <th>Caracter del Evento</th>
                            <th>Responsables</th>
                            <th>Fecha de Realización</th>
                            <th>Instituciones Promotoras</th>
                            <th>Entidades Participantes</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>EIISI 2018</td>
                            <td>Internacional</td>
                            <td>UFPS - UDES - UNILIBRE - UNISIMON - UFPSO</td>
                            <td>Septiembre 2018</td>
                            <td>UFPS - UDES - UNILIBRE - UNISIMON - UFPSO</td>
                            <td>Universidades - Empresas - Sector de Ingeniería</td>
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
            <form action="" id="form-events">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div id="info-basic-event">
                        <div class="form-group col-xs-12">
                            <label>Nombre del Evento (*)</label>
                            <input type="text" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12">
                            <label>Caracter del Evento (*)</label>
                            <select name="" id="" class="form-control">
                                <option value="" selected="" disabled="">Seleccione</option>
                                <option value="">Local</option>
                                <option value="">Regional</option>
                                <option value="">Nacional</option>
                                <option value="">Internacional</option>
                            </select>
                        </div>	
                        <div class="form-group col-xs-12">
                            <label>Responsables (*)</label>
                            <input type="text" class="form-control">
                        </div>		
                        <div class="form-group col-xs-12">
                            <label>Institución Promotora (*)</label>
                            <input type="text" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12">
                            <label>Entidades Participantes (*)</label>
                            <input type="text" class="form-control">
                        </div>   
                    </div>
                    <div id="info-resource-event" class="hidden">
                        <div class="form-group col-xs-12">
                            <label>Nombre de la Evidencia</label>
                            <input type="text" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12">
                            <label>Descripción </label>
                            <input type="text" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12">
                            <label for="exampleInputFile">Archivos</label>
                            <input type="file" id="exampleInputFile" multiple>
                            <p class="help-block">Seleccione todos los archivos de la evidencia.</p>
                        </div>
                    </div>     		
                </div>
                <div class="clearfix"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btn-save-event">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>
