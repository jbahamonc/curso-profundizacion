<%-- 
    Document   : planAccionGrupo
    Created on : 10-nov-2018, 18:17:24
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
                <h2 class="info-box-text"><b>Gestión de Planes de Acción</b></h2>
                <span class="info-box-number">A continuación podra gestionar los planes de acción del grupo de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Listado de Planes de Acción</h3>
                    </div>            
                    <div class="box-body">
                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th width="200">Año</th>
                                    <th width="200">Semestre</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2018</td>
                                    <td>1</td>
                                    <td class="text-center">
                                        <a href="infoPlanAccionGrupo.jsp" type="button" class="btn btn-success btn-xs">
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
</div>
</section>
</div>
<a href="registroPlanDeAccionGrupo.jsp" class="btn btn-danger pull-right btn-fixed add-person" title="Nuevo Plan de Acción">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>
