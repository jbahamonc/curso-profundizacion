<%-- 
    Document   : registroPlanDeAccionGrupo
    Created on : 10-nov-2018, 18:28:54
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Registro del Plan de Acción
            <small>A continuación podra registrar la información del plan de acción del grupo de investigación.</small>
        </h1>      
    </section>
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
                                <button type="button" class="btn bg-red btn-flat" id="btn-save-action-plan">REGISTRAR PLAN DE ACCIÓN</button>
                            </div>	                				                                      
                        </form>
                    </div>                    
                </div>
                <h2 class="page-header">
                    Información del Plan de Acción Anterior
                    <small>Vincule los proyectos, eventos y actividades del plan de acción anterior.</small>
                </h2>  
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Listado de Proyectos</h3>
                    </div>        	
                    <div class="box-body">
                        <div class="text-center" id="info-empty-projects">
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
                        <h3 class="box-title">Listado de Eventos</h3>
                    </div>        	
                    <div class="box-body">
                        <div class="text-center" id="info-empty-events">
                            <img src="../img/sad.png" alt="">
                            <h4><b>No hay información!</b></h4>
                            <p>No se ha cargado ninguna información en este panel.</p>
                        </div>
                        <div id="" class="hidden box-data-action">          
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="product-img">
                                        <img src="../img/date.svg" alt="Project Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="eventosGrupo.jsp" class="product-title">
                                            EIISI 2018
                                        </a>
                                        <span class="product-description">
                                            Internacional
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
                        <div class="text-center " id="info-empty-activitys">
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
                        <h3 class="box-title">Registro de Información de Lineas de Investigación</h3>
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
                            <div class="hidden">
                                <div class="form-group col-xs-12">
                                    <label>Seleccione el Objetivo (*)</label>
                                    <select name="" id="" class="form-control">
                                        <option value="" selected="" disabled="">Seleccione</option>
                                        <option value="">Descripción del objetivo</option>
                                        <option value="">Descripción del objetivo</option>
                                        <option value="">Descripción del objetivo</option>
                                        <option value="">Descripción del objetivo</option>
                                        <option value="">Descripción del objetivo</option>
                                        <option value="">Descripción del objetivo</option>
                                    </select>
                                </div>	
                                <div class="form-group col-xs-12">
                                    <label>Actividad del Objetivo Específico(*) </label>
                                    <input type="text" class="form-control">	                  	
                                </div>		                
                                <div class="form-group col-xs-12 col-md-6">
                                    <label>Fecha de Inicio (*)</label>
                                    <input type="month" class="form-control">
                                </div>	
                                <div class="form-group col-xs-12 col-md-6">
                                    <label>Fecha de Terminación (*)</label>
                                    <input type="month" class="form-control">
                                </div>
                                <div class="form-group col-xs-12">
                                    <label>Responsables de la Actividad (*)</label>
                                    <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables[]" multiple style="width: 100%;">
                                        <option value="AL">Judith del Pilar Rodriguez Tenjo</option>
                                        <option value="WY">Oscar Alberto Gallardo Perez</option>
                                        <option value="WY">Jessica Lorena Pabón</option>
                                        <option value="WY">Gladys Adriana Espinel</option>
                                        <option value="WY">Milton Vera Contreras</option>
                                    </select>
                                </div>
                                <div class="form-group col-xs-12">
                                    <label>Producto (*)</label>
                                    <input type="text" class="form-control">
                                </div>	
                            </div>
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" disabled class="btn bg-red btn-flat">CARGAR DATOS</button>
                            </div>	                				                                      
                        </form>
                    </div>
                </div>
                <div class="box collapsed-box hidden">
                    <div class="box-header with-border">
                        <h3 class="box-title">Registro de Participación en Dirección</h3>
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
                                <label>Seleccione el Proyecto (*)</label>
                                <select name="" id="" class="form-control">
                                    <option value="" selected="" disabled="">Seleccione</option>
                                    <option value="">Nombre del proyecto</option>
                                    <option value="">Nombre del proyecto</option>
                                    <option value="">Nombre del proyecto</option>
                                </select>
                            </div>                               
                            <div class="form-group col-xs-12">
                                <label>Institución (*)</label>
                                <input type="text" class="form-control">
                            </div>            	
                            <div class="form-group col-xs-12 text-right">
                                <a href="" class="btn bg-red btn-flat">CARGAR DATOS</a>
                            </div>	                				                                      
                        </form>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Organización de Eventos de Investigación /Científicos</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>        	
                    <div class="box-body">
                        <form>
                            <div class="form-group col-xs-12">
                                <label>Nombre del Evento (*)</label>
                                <input type="text" class="form-control">
                            </div> 
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Caracter del Evento (*)</label>
                                <select name="" id="" class="form-control">
                                    <option value="" selected="" disabled="">Seleccione</option>
                                    <option value="">Local</option>
                                    <option value="">Regional</option>
                                    <option value="">Nacional</option>
                                    <option value="">Internacional</option>
                                </select>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Responsables del Evento (*)</label>
                                <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables[]" multiple style="width: 100%;">
                                    <option value="AL">Judith del Pilar Rodriguez Tenjo</option>
                                    <option value="WY">Oscar Alberto Gallardo Perez</option>
                                    <option value="WY">Jessica Lorena Pabón</option>
                                    <option value="WY">Gladys Adriana Espinel</option>
                                    <option value="WY">Milton Vera Contreras</option>
                                </select>
                            </div>   
                            <div class="clearfix"></div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Inicio (*)</label>
                                <input type="month" class="form-control">
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Finalización (*)</label>
                                <input type="month" class="form-control">
                            </div>
                            <div class="form-group col-xs-12">
                                <label>Instituciones Promotoras (*)</label>
                                <button type="button" data-toggle="modal" data-target="#modal-promotoras" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                                <select class="js-inst-promo" data-placeholder="Ingrese los Organizadores" name="responsables-evento[]" multiple style="width: 100%;"></select>
                            </div>
                            <div class="form-group col-xs-12">
                                <label>Entidades Participante (*)</label>
                                <button type="button" data-toggle="modal" data-target="#modal-entidad" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                                <select class="js-entidades" data-placeholder="Ingrese las Entidades Participantes" name="entidades[]" multiple style="width: 100%;"></select>
                            </div>
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" disabled class="btn bg-red btn-flat">CARGAR DATOS</button>
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
                        <form>
                            <div class="form-group col-xs-12">
                                <label>Nombre de la Actividad (*)</label>
                                <input type="text" class="form-control">
                            </div> 
                            <div class="form-group col-xs-12">
                                <label>Responsables de la Actividad (*)</label>
                                <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables[]" multiple style="width: 100%;">
                                    <option value="AL">Judith del Pilar Rodriguez Tenjo</option>
                                    <option value="WY">Oscar Alberto Gallardo Perez</option>
                                    <option value="WY">Jessica Lorena Pabón</option>
                                    <option value="WY">Gladys Adriana Espinel</option>
                                    <option value="WY">Milton Vera Contreras</option>
                                </select>
                            </div>  
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Inicio (*)</label>
                                <input type="month" class="form-control">
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <label>Fecha de Finalización (*)</label>
                                <input type="month" class="form-control">
                            </div>
                            <div class="form-group col-xs-12">
                                <label>Producto (*)</label>
                                <input type="text" class="form-control">
                            </div>           	
                            <div class="form-group col-xs-12 text-right">
                                <button type="button" disabled class="btn bg-red btn-flat">CARGAR DATOS</button>
                            </div>	                				                                      
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /END CONTENT WRAPPER -->

<!-- Modal instituciones promotoras -->
<div class="modal fade" id="modal-promotoras" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nombre de la Institución(*)</label>
                        <input id="nombre-inst-promo" class="form-control"></input>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-inst-promo" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal entidades participante -->
<div class="modal fade" id="modal-entidad" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nombre de la Entidad(*)</label>
                        <input id="nombre-entidad" class="form-control"></input>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-entidad" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

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

<!-- Modal Estudinates plan accion -->
<div class="modal fade" id="modal-estudiantes" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group col-xs-12">
                        <label>Nombre del Estudiante (*)</label>
                        <input type="text" class="form-control" id="nombre-estudiante">
                    </div>	      
                    <div class="form-group col-xs-12">
                        <label>Programa Académico (*)</label>
                        <input type="text" class="form-control" id="programa-estudiante">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-estudiante" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>