<%-- 
    Document   : registroSemillero
    Created on : 10-nov-2018, 17:39:23
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
                <div class="row">
                    <form id="form-register-semillero">
                        <input type="hidden" value="1" name="operacion"/>
                        <div class="form-group col-xs-12 col-md-8">
                            <label>Nombre del Semillero (*)</label>
                            <input type="text" class="form-control" name="nombre">
                        </div>				                
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Siglas (*)</label>
                            <input type="text" class="form-control" name="sigla">
                        </div> 
                        <div class="form-group col-xs-12 col-md-8">
                            <label>Ubicación (*)</label>
                            <input type="text" class="form-control" name="ubicacion">
                        </div>    
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Fecha de Creación (*)</label>
                            <input type="date" class="form-control" name="fechaCreacion">
                        </div>  	                 
                        
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Director(es) del Grupo (*)</label>
                            <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="directores" multiple style="width: 100%;">
                                <option value="AL">Judith del Pilar Rodriguez Tenjo</option>
                                <option value="WY">Oscar Alberto Gallardo Perez</option>
                                <option value="WY">Jessica Lorena Pabón</option>
                                <option value="WY">Gladys Adriana Espinel</option>
                                <option value="WY">Milton Vera Contreras</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Linea de Investigación (*)</label>
                            <select class="form-control" name="lineaInvestigacion">
                                <option selected disabled>Seleccione</option>
                                <option>Nombre de la Linea</option>
                                <option>Nombre de la Linea</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12">
                            <label>Descripción</label>
                            <textarea class="form-control" rows="3" name="descripcion"></textarea>
                        </div> 
                        <div class="form-group col-xs-12 text-right">
                            <a href="infoSemillero.jsp" class="btn bg-red btn-flat btn-lg" id="btn-save-semillero">REGISTRAR SEMILLERO</a>
                        </div>                	                                      
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionSemillero.js"></script>