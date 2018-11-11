<%-- 
    Document   : gruposAsociados
    Created on : 10-nov-2018, 18:16:10
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
                <h2 class="info-box-text"><b>Gestión de Grupos Asociados</b></h2>
                <span class="info-box-number">A continuación podra gestionar los grupos asociados al grupo de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Listado de Grupos</h3>
                    </div>
                    <div class="box-body">
                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nombre del Grupo</th>
                                    <th>Siglas</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>GRUPO DE INVESTIGACIÓN Y DESARROLLO EN MICROELECTRÓNICA APLICADA</td>
                                    <td>GIDMA</td>
                                    <td class="text-center">
                                        <a href="" type="button" class="btn btn-danger btn-xs">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </a>
                                        <a href="infoGrupo.jsp" type="button" class="btn btn-success btn-xs">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </a>
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
<a href="" data-toggle="modal" data-target="#modal" class="btn btn-danger pull-right btn-fixed" title="Vincular Nuevo Integrante">
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
                        <label>Seleccione el Grupo de Investigación (*)</label>
                        <select class="form-control" id="select-rol-investigador">
                            <option disabled selected>Seleccione</option>
                            <option value="0">Grupo 1</option>
                            <option value="1">Grupo 2</option>
                            <option value="2">Grupo 3</option>
                        </select>
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
