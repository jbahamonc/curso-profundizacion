<%-- 
    Document   : produccionTipologia
    Created on : 13/11/2018, 12:02:38 PM
    Author     : jeferson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <div class="info-box p-rel">
            <span class="info-box-icon"><i class="fa fa-search"></i></span>
            <div class="info-box-content">
                <h2 class="info-box-text"><b>Consulta de Productos por Tipologías</b></h2>
                <span class="info-box-number">Seleccione uno o varios filtros de búsqueda para ver los productos relacionados. </span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Filtro de Búsqueda</h3>
            </div>
            <div class="box-body">
                <p><span class="label label-danger">NOTA: Los campos marcados con asterisco (*) son obligatorios</span></p>
                <div class="row">
                    <form action="action">
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Nombre del Grupo (*)</label>
                            <select class="form-control" id="">
                                <option disabled selected>Seleccione</option>
                                <option value="0">Tipología 1</option>
                                <option value="1">Tipología 2</option>
                                <option value="2">Tipología 3</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Tipología (*)</label>
                            <select class="form-control" id="">
                                <option disabled selected>Seleccione</option>
                                <option value="0">Tipología 1</option>
                                <option value="1">Tipología 2</option>
                                <option value="2">Tipología 3</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Subtipología </label>
                            <select class="form-control" id="">
                                <option disabled selected>Seleccione</option>
                                <option value="0">Tipología 1</option>
                                <option value="1">Tipología 2</option>
                                <option value="2">Tipología 3</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Tipo de Producto </label>
                            <select class="form-control" id="">
                                <option disabled selected>Seleccione</option>
                                <option value="0">Tipología 1</option>
                                <option value="1">Tipología 2</option>
                                <option value="2">Tipología 3</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Categoria </label>
                            <select class="form-control" id="">
                                <option disabled selected>Seleccione</option>
                                <option value="0">Tipología 1</option>
                                <option value="1">Tipología 2</option>
                                <option value="2">Tipología 3</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 text-right">
                            <a href="" class="btn bg-red btn-flat">Buscar Productos</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Resultados de la Búsqueda</h3>
            </div>
            <div class="box-body">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nombre del Producto</th>
                            <th>Proyecto Vinculado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Prototipo software</td>
                            <td>Arquitectura de Información (AI) Como Marco De Trabajo Que Proporcione Un Enfoque Para El Diseño, Planificación, Implementación Y Gobierno De Una Arquitectura Empresarial De Información Para La Creación Del Repositorio Digital Que  Gestione La Producción Académica E Investigativa De Los Investigadores  De La Universidad Francisco De Paula Santander-Cúcuta</td>
                            <td class="text-center">
                                <a href="infoProducto.jsp" title="Ver Información del Producto" class="btn btn-info btn-xs">
                                    <i class="fa fa-info" aria-hidden="true"></i>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../inc/footer.jsp"/>
