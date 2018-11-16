<%-- 
    Document   : registroPlanDeAccionSemillero
    Created on : 10-nov-2018, 19:11:04
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Registro del Plan de Acción
            <small>A continuación podra registrar la información del plan de acción del semillero de investigación.</small>
        </h1>      
    </section>
    <div class="pad margin no-print" >
        <div class="callout callout-warning" style="margin-bottom: 0!important;">
            <h4><i class="fa fa-info"></i> Nota</h4>
            <p>Consideraciones establecidas para el registro del Plan de Acción.</p>
            <hr>
            <ul class="text-justify">
                <li>Se debe registrar la información por cada proyecto de investigación que el semillero espera desarrollar y que se encuentre asociado a la línea de investigación.</li>
                <li>Los productos de investigación deben ser acorde con los enunciados en el Acuerdo Nº 056 de 2012, artículo 25: artículo publicado o remitido a una revista indexada o avalada por la UFPS, ponencia, software, prototipo, diseño industrial, procesos o técnicas, libros, capítulos de libro.</li>
            </ul>
        </div>
    </div>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 col-md-6">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Formulario de Registro</h3>
                    </div>        	
                    <div class="box-body">
                        <form>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Año</label>
                                <select name="" id="" class="form-control">
                                    <option value="">2018</option>
                                    <option value="">2019</option>
                                    <option value="">2020</option>
                                    <option value="">2021</option>
                                    <option value="">2022</option>
                                    <option value="">2023</option>
                                </select>
                            </div>				                
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Semestre</label>
                                <select class="form-control">
                                    <option>Seleccione</option>
                                    <option>1</option>
                                    <option>2</option>
                                </select>
                            </div>	
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" class="btn bg-red btn-flat" id="btn-save-action-plan-semillero">REGISTRAR PLAN DE ACCIÓN</button>
                            </div>	                				                                      
                        </form>
                    </div>
                </div>
                <h2 class="page-header">
                    Información del Plan de Acción Anterior
                    <small>Vincule los proyectos, capacitaciones y actividades del plan de acción anterior.</small>
                </h2>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Listado de Proyectos</h3>
                    </div>        	
                    <div class="box-body">
                        <div class="text-center" id="info-empty-projects-semillero">
                            <img src="../img/sad.png" alt="">
                            <h4><b>No hay información!</b></h4>
                            <p>No se ha cargado ninguna información en este panel.</p>
                        </div>
                        <div class="hidden box-data-action" id="">
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="product-img">
                                        <img src="../img/project.svg" alt="Project Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="infoProyecto.jsp" class="product-title">
                                            Arquitectura de Información (AI) Como Marco De Trabajo Que Proporcione Un Enfoque Para El Diseño, Planificación, Implementación Y Gobierno De Una Arquitectura Empresarial De Información Para La Creación Del Repositorio Digital Que  Gestione La Producción Académica E Investigativa De Los Investigadores  De La Universidad Francisco De Paula Santander-Cúcuta
                                        </a>
                                        <span class="product-description">
                                            Fecha de Inicio: 23/02/2018
                                            <button class="btn btn-xs btn-success pull-right">VINCULAR</button>
                                        </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                            </ul>
                        </div>
                    </div>                    
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Listado de Capacitaciones</h3>
                    </div>        	
                    <div class="box-body">
                        <div class="text-center " id="info-empty-activitys-semillero">
                            <img src="../img/sad.png" alt="">
                            <h4><b>No hay información!</b></h4>
                            <p>No se ha cargado ninguna información en este panel.</p>
                        </div>
                        <div id="" class="hidden box-data-action">    
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="product-img">
                                        <img src="../img/teacher.svg" alt="Project Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="" class="product-title">
                                            Caracterización de la dirección de proyectos de tecnología en las  pequeñas y medianas empresas
                                        </a>
                                        <span class="product-description">
                                            Fecha de Inicio: 23/02/2018
                                            <button class="btn btn-xs btn-success pull-right">VINCULAR</button>
                                        </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                            </ul>
                        </div>
                    </div>                    
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Listado de Actividades</h3>
                    </div>        	
                    <div class="box-body">
                        <div class="text-center " id="info-empty-activitys-semillero">
                            <img src="../img/sad.png" alt="">
                            <h4><b>No hay información!</b></h4>
                            <p>No se ha cargado ninguna información en este panel.</p>
                        </div>
                        <div id="" class="hidden box-data-action">    
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="product-img">
                                        <img src="../img/activitys.svg" alt="Project Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="eventosGrupo.jsp" class="product-title">
                                            Caracterización de la dirección de proyectos de tecnología en las  pequeñas y medianas empresas
                                        </a>
                                        <span class="product-description">
                                            Fecha de Inicio: 23/02/2018
                                            <button class="btn btn-xs btn-success pull-right">VINCULAR</button>
                                        </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                            </ul>
                        </div>
                    </div>                    
                </div>
            </div>
            <div class="col-xs-12 col-md-6">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Registro de Información por Lineas de Investigación</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>        	
                    <div class="box-body">
                        <form>
                            <div class="form-group col-xs-12">
                                <label>Seleccione la Linea de Investigación (*)</label>
                                <select name="" id="" class="form-control">
                                    <option value="" selected="" disabled="">Seleccione</option>
                                    <option value="">Linea de Investigación</option>
                                    <option value="">Linea de Investigación</option>
                                    <option value="">Linea de Investigación</option>
                                    <option value="">Linea de Investigación</option>
                                    <option value="">Linea de Investigación</option>
                                    <option value="">Linea de Investigación</option>
                                </select>
                            </div>
                            <div class="form-group col-xs-12">
                                <label>Seleccione el Proyecto a Ejecutar (*)</label>
                                <select name="" id="" class="form-control">
                                    <option value="" selected="" disabled="">Seleccione</option>
                                    <option value="">Nombre Proyecto</option>
                                    <option value="">Nombre Proyecto</option>
                                    <option value="">Nombre Proyecto</option>
                                    <option value="">Nombre Proyecto</option>
                                    <option value="">Nombre Proyecto</option>
                                    <option value="">Nombre Proyecto</option>
                                </select>
                            </div>                            	
                            <div class="form-group col-xs-12 text-right">
                                <a href="" class="btn bg-red btn-flat">CARGAR DATOS</a>
                            </div>	                				                                      
                        </form>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Registrar Capacitaciones</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>        	
                    <div class="box-body">
                        <form action="" id="form-capacity">
                            <div id="fields-capacity">
                                <div class="form-group col-xs-12">
                                    <label>Linea de Investigación (*)</label>
                                    <select class="form-control">
                                        <option disabled="" selected="">Seleccione</option>
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
                                <div class="form-group col-xs-12 col-md-6">
                                    <label>Fecha de Realización (*)</label>
                                    <input type="month" class="form-control">
                                </div>
                                <div class="form-group col-xs-12 col-md-6">
                                    <label>Numero de Asistentes (*)</label>
                                    <input type="number" class="form-control">
                                </div>
                                <div class="form-group col-xs-12">
                                    <label>Responsables (*)</label>
                                    <select class="js-example-basic-multiple1 select2-hidden-accessible" data-placeholder="Seleccione uno o varios investigadores" name="capacitores[]" multiple="" style="width: 100%;" tabindex="-1" aria-hidden="true">
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
                                    <input type="file" id="exampleInputFile" multiple="">
                                    <p class="help-block">Seleccione todos los archivos de la evidencia.</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" class="btn hidden btn-flat" id="btn-back-capacity">Atras</button>
                                <button type="button" class="btn btn-danger btn-flat" id="btn-save-capacity">Siguiente</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Otras Actividades de Investigación</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>        	
                    <div class="box-body">
                        <div class="alert alert-warning alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4><i class="icon fa fa-warning"></i> Importante!</h4>
                            Las Actividadedes de Investigación corresponden a Espacios de socialización, Foros, Reuniones, Elaboración de documentos, entre otros.
                        </div>
                        <form>
                            <div class="form-group col-xs-12">
                                <label>Nombre de la Actividad (*)</label>
                                <input type="text" class="form-control">
                            </div>	
                            <div class="form-group col-xs-12">
                                <label>Responsables (*)</label>
                                <select class="js-example-basic-multiple1 select2-hidden-accessible" data-placeholder="Seleccione uno o varios investigadores" name="capacitores[]" multiple="" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                    <option value="AL">Judith del Pilar Rodriguez Tenjo</option>
                                    <option value="WY">Oscar Alberto Gallardo Perez</option>
                                    <option value="WY">Jessica Lorena Pabón</option>
                                    <option value="WY">Gladys Adriana Espinel</option>
                                    <option value="WY">Milton Vera Contreras</option>
                                </select>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Realización (*)</label>
                                <input type="month" class="form-control">
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Producto (*)</label>
                                <select class="form-control" name="" >
                                    <option disabled>Seleccione</option>
                                    <option value="AL">Tipo Producto</option>
                                    <option value="AL">Tipo Producto</option>
                                    <option value="AL">Tipo Producto</option>
                                    <option value="AL">Tipo Producto</option>
                                </select>
                            </div>           	
                            <div class="form-group col-xs-12 text-right">
                                <a href="" class="btn bg-red btn-flat">CARGAR DATOS</a>
                            </div>	                				                                      
                        </form>
                    </div>
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
                        <label>Descripción de la Actividad (*)</label>
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
<!-- Modal Directores -->
<div class="modal fade" id="modal-directores" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group col-xs-12">
                        <label>Seleccione la Linea de Investigación (*)</label>
                        <select name="" id="director" class="form-control">
                            <option value="" selected="" disabled="">Seleccione</option>
                            <option value="Nombre Director">Nombre Director</option>
                            <option value="Nombre Director">Nombre Director</option>
                            <option value="Nombre Director">Nombre Director</option>
                            <option value="Nombre Director">Nombre Director</option>
                            <option value="Nombre Director">Nombre Director</option>
                            <option value="Nombre Director">Nombre Director</option>
                        </select>
                    </div>	      
                    <div class="form-group col-xs-12">
                        <label>Rol (*)</label>
                        <input type="text" class="form-control" id="rol-director">
                    </div>	  		
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-director" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>
