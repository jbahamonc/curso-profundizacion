<%-- 
    Document   : proyectos
    Created on : 10-nov-2018, 18:12:49
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
                <h2 class="info-box-text"><b>Gestión de Proyectos</b></h2>
                <span class="info-box-number">A continuación podra gestionar los proyectos del grupo de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Listado</h3>
            </div>
            <div class="box-body">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th width="500">Titulo</th>
                            <th>Responsables</th>
                            <th>Linea de Investigación</th>
                            <th>Fecha de Inicio</th>
                            <th>Tiempo de Ejecución (Meses)</th>
                            <th>Costo Total</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Arquitectura de Información (AI) Como Marco De Trabajo Que Proporcione Un Enfoque Para El Diseño, Planificación, Implementación Y Gobierno De Una Arquitectura Empresarial De Información Para La Creación Del Repositorio Digital Que  Gestione La Producción Académica E Investigativa De Los Investigadores  De La Universidad Francisco De Paula Santander-Cúcuta</td>
                            <td>Judith del Pilar Rodríguez T <br>Oscar A. Gallardo Pérez <br>Jessica Lorena Pabón</td>
                            <td>INGENIERIA DE SOFTWARE</td>
                            <td>Marzo 2018</td>
                            <td>5</td>
                            <td>$ 400.000.000</td>
                            <td class="text-center">
                                <a href="infoProyecto.jsp" type="button" class="btn btn-success btn-xs">
                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<a href="registrarProyecto.jsp" class="btn btn-danger pull-right btn-fixed" title="Agregar Nuevo Personal">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>