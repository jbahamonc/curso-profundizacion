<%-- 
    Document   : registroInvestigadores
    Created on : 10-nov-2018, 18:25:45
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
                <h2 class="info-box-text"><b>Registro de Integrantes</b></h2>
                <span class="info-box-number">A continuación podra registrar la información de los participantes de un gripo de investigación o semillero.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Formulario de Registros</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <form>
                        <div class="col-xs-12 col-md-6">
                            <div class="row">
                                <div class="form-group col-xs-12 col-md-4">
                                    <label>Tipo de Identificación (*)</label>
                                    <select class="form-control">
                                        <option disabled selected>Seleccione</option>
                                        <option>C.C</option>
                                        <option>T.I</option>
                                    </select>
                                </div>
                                <div class="form-group col-xs-12 col-md-8">
                                    <label>Identificación (*)</label>
                                    <input type="number" class="form-control">
                                </div>				                
                                <div class="form-group col-xs-12">
                                    <label>Nombre completo (*)</label>
                                    <input type="text" class="form-control">
                                </div> 
                                <div class="form-group col-xs-12 col-md-6">
                                    <label>Telefono</label>
                                    <input type="number" class="form-control">
                                </div>    
                                <div class="form-group col-xs-12 col-md-6">
                                    <label>Celular (*)</label>
                                    <input type="number" class="form-control">
                                </div>   
                                <div class="form-group col-xs-12">
                                    <label>Email (*)</label>
                                    <input type="email" class="form-control">
                                </div>  
                                <div class="form-group col-xs-12">
                                    <label>Vincular a (*)</label>
                                    <select class="form-control">
                                        <option disabled selected>Seleccione</option>
                                        <option value="0">Grupo de Investigación</option>
                                        <option value="1">Semillero de Investigación</option>
                                    </select>
                                </div>
                                <div class="form-group col-xs-12">
                                    <label>Tipo Invetigador (*)</label>
                                    <select class="form-control" id="select-investigador">
                                        <option disabled selected>Seleccione</option>
                                        <option value="0">Docente Investigador</option>
                                        <option value="1">Joven Investigador</option>
                                        <option value="2">Investigador Externo</option>
                                        <option value="3">Par Académico</option>
                                        <option value="4">Estudiante</option>
                                    </select>
                                </div>

                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="alert alert-info alert-dismissible" id="alert-state-inv">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <h4><i class="icon fa fa-info"></i> Importante!</h4>
                                Una vez seleccione el <i>tipo de Investigador</i>, se desplegaran los campos para el registro de la información adicional.
                            </div>
                            <div class="row">
                                <div id="fields-teacher" class="hidden">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <label>Código (*)</label>
                                        <input type="number" class="form-control">
                                    </div>					                
                                    <div class="form-group col-xs-12 col-md-6">
                                        <label>Dedicación (*)</label>
                                        <select class="form-control">
                                            <option>Seleccione</option>
                                            <option>T.C</option>
                                            <option>Catedra</option>
                                            <option>Ocasional</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label>Departamento al que pertenece (*)</label>
                                        <select class="form-control">
                                            <option>Seleccione</option>
                                            <option>option 1</option>
                                            <option>option 2</option>
                                            <option>option 3</option>
                                            <option>option 4</option>
                                            <option>option 5</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label>Estudios (*) </label>
                                        <button type="button" data-toggle="modal" data-target="#modal" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                                        <select class="js-add-studies" data-placeholder="Ingrese los Estudios Realizados" name="estudios[]" multiple style="width: 100%;">
                                            <select>	                  	
                                                </div>
                                                </div>
                                                <div id="fields-junior" class="hidden">
                                                    <div class="form-group col-xs-12">
                                                        <label>Modalidad (*)</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="form-group col-xs-12">
                                                        <label>Tutor (*)</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="form-group col-xs-12">
                                                        <label>Propuesta Desarrollada (*)</label>
                                                        <textarea class="form-control" rows="3"></textarea>
                                                    </div>
                                                    <div class="form-group col-xs-12">
                                                        <label>Perido de la Beca-Pasantia (*)</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div id="fields-external" class="hidden">
                                                    <div class="form-group col-xs-12">
                                                        <label>Institucion o Empresa</label>
                                                        <input type="email" class="form-control">
                                                    </div>        
                                                    <div class="form-group col-xs-12">
                                                        <label>Estudios</label>
                                                        <select class="form-control">
                                                            <option>Seleccione</option>
                                                            <option>Pregrado</option>
                                                            <option>Especialización</option>
                                                            <option>Magister</option>
                                                            <option>Doctorado</option>
                                                        </select>
                                                    </div>	
                                                </div>
                                                <div id="fields-par" class="hidden">
                                                    <div class="form-group col-xs-12">
                                                        <label>Institucion o Empresa</label>
                                                        <input type="email" class="form-control">
                                                    </div>  
                                                </div>
                                                <div id="fields-student" class="hidden">
                                                    <div class="form-group col-xs-12">
                                                        <label>Programa Académico (*)</label>
                                                        <select class="form-control">
                                                            <option>Seleccione</option>
                                                            <option>option 2</option>
                                                            <option>option 3</option>
                                                            <option>option 4</option>
                                                            <option>option 5</option>
                                                        </select>
                                                    </div>  
                                                </div>
                                                </div>
                                                </div>		                
                                                <div class="form-group col-xs-12 text-right">
                                                    <a href="infoGrupo.jsp" class="btn bg-red btn-flat btn-lg">REGISTRAR INTEGRANTE</a>
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
                                                                    <h4 class="modal-title">Formulario de Registro de Estudios</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="form-group">
                                                                        <label>Título Obtenido (*)</label>
                                                                        <input type="text" class="form-control" id="study">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Universidad (*)</label>
                                                                        <input type="text" class="form-control" id="university">
                                                                    </div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                                    <button type="button" id="btn-add-studies" class="btn btn-primary">Guardar</button>
                                                                </div>
                                                            </form>
                                                        </div><!-- /.modal-content -->
                                                    </div><!-- /.modal-dialog -->
                                                </div><!-- /.modal -->
                                                <jsp:include page="../inc/footer.jsp"/>
