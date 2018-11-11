<%-- 
    Document   : registroGrupo
    Created on : 10-nov-2018, 17:00:42
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
                <h2 class="info-box-text"><b>Registro de Grupos de Investigacion</b></h2>
                <span class="info-box-number">A continuación podra registrar la información del grupo.</span>
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
                    <form>
                        <div class="form-group col-xs-12 col-md-8">
                            <label>Nombre del Grupo (*)</label>
                            <input type="text" class="form-control">
                        </div>				                
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Siglas (*)</label>
                            <input type="text" class="form-control">
                        </div> 
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Unidad Académica (*)</label>
                            <select class="form-control">
                                <option value="" selected disabled> Seleccione</option>
                                <option>option 1</option>
                                <option>option 2</option>
                                <option>option 3</option>
                                <option>option 4</option>
                                <option>option 5</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Ubicación (*)</label>
                            <input type="text" class="form-control">
                        </div>    
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Fecha de Creación (*)</label>
                            <input type="date" class="form-control">
                        </div>   
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Codigo GrupLav (*)</label>
                            <input type="text" class="form-control">
                        </div>  
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Clasificado Colciencias (*)</label>
                            <select class="form-control">
                                <option selected disabled>Seleccione</option>
                                <option>SI</option>
                                <option>NO</option>
                            </select>
                        </div>	
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Categoria (*)</label>
                            <select class="form-control">
                                <option selected disabled>Seleccione</option>
                                <option>SI</option>
                                <option>NO</option>
                            </select>
                        </div>		
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Grupo Reconocido por Colciencias sin Categoría (*)</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group col-xs-12 col-md-9">
                            <label>Director del Grupo (*)</label>
                            <select class="form-control">
                                <option selected disabled>Seleccione</option>
                                <option>Nombre</option>
                                <option>Nombre</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 text-right">
                            <a href="infoGrupo.jsp" class="btn bg-red btn-flat btn-lg">REGISTRAR GRUPO</a>
                        </div>                	                                      
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /END CONTENT WRAPPER -->
<jsp:include page="../inc/footer.jsp"/>