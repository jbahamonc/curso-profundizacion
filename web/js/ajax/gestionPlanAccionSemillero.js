/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {

    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';

    $(document).ajaxStart(function () {
        Pace.restart()
    })

    var token = localStorage.getItem("token")

    // Evento que se dispara cuando se registra un plan de accion de un semillero
    $("#btn-save-action-plan-semillero").on("click", function () {
        var myToast = $.mdtoast('Registro en proceso...', {duration: 1000000, init: true});
        myToast.show()
        var form = $("#form-plan-action-semillero")
        var overlay = $(".overlay")
        overlay.removeClass('hidden')
        if (form.valid()) {
            form = form.serializeArray()
            console.log(form)
            form.push({'token': token})
            $.ajax({
                url: '../paginas/procesar/gestionPlanAccionSemillero.jsp',
                type: 'POST',
                data: $.param(form),
                success: function (response) {
                    var json = JSON.parse(response)
                    var infoEmpty = $(".info-empty")
                    myToast.hide()
                    if (json.status == 200) {
                        var buttons = $(".button-plans")
                        buttons.removeAttr('disabled')
                        localStorage.setItem('dataPlan', JSON.stringify({'anio': form[1].value, 'semestre': form[2].value}))
                        $.mdtoast('La información ha sido registrada', {
                            duration: 4000
                        });
                        var html = ""
                        var ulProjects = $("#ulProjects")
                        ulProjects.empty()
                        if (json.proyectos.length > 0) {
                            for (var p of json.proyectos) {
                                html += '<li class="item">'+
                                        '<div class="product-img">'+
                                            '<img src="../img/project.svg" alt="Project Image">'+
                                        '</div>'+
                                        '<div class="product-info">'+
                                            '<a href="infoProyecto.jsp" class="product-title">'+
                                                p.titulo +
                                            '</a>'+
                                            '<span class="product-description">'+
                                                '<button class="btn btn-xs btn-success pull-right btn-add-projectOld-plan" data-id='+p.id+'>VINCULAR</button>'
                                            '</span>'+
                                        '</div>'+
                                    '</li>'
                            }
                            ulProjects.html(html)
                            infoEmpty.first().addClass("hidden")
                        }                         
                        overlay.first().addClass("hidden")

                        var ulCapacitaciones = $("#ulCapacity")
                        ulCapacitaciones.empty()
                        if (json.capacitaciones.length > 0) {
                            for (var c of json.capacitaciones) {
                               html += '<li class="item">'+
                                        '<div class="product-img">'+
                                            '<img src="../img/date.svg" alt="Project Image">'+
                                        '</div>'+
                                        '<div class="product-info">'+
                                            '<a href="infoProyecto.jsp" class="product-title">'+
                                                c.nombre +
                                            '</a>'+
                                            '<span class="product-description">'+
                                                '<button class="btn btn-xs btn-success pull-right btn-add-evtOld-plan" data-id='+e.id+'>VINCULAR</button>'
                                            '</span>'+
                                        '</div>'+
                                    '</li>'
                            }
                             ulCapacitaciones.html(html)
                            infoEmpty.eq(1).addClass("hidden")
                        }                         
                        overlay.eq(1).addClass("hidden")

                        var ulActivitys = $("#ulActivitys")
                        ulActivitys.empty()
                        if (json.actividades.length > 0) {
                            for (var a of json.actividades) {
                               html += '<li class="item">'+
                                        '<div class="product-img">'+
                                            '<img src="../img/activitys.svg" alt="Project Image">'+
                                        '</div>'+
                                        '<div class="product-info">'+
                                            '<a href="infoProyecto.jsp" class="product-title">'+
                                                a.nombre +
                                            '</a>'+
                                            '<span class="product-description">'+
                                                '<button class="btn btn-xs btn-success pull-right btn-add-actOld-plan" data-id='+a.id+'>VINCULAR</button>'
                                            '</span>'+
                                        '</div>'+
                                    '</li>'
                            }
                            ulActivitys.html(html)
                            infoEmpty.last().addClass("hidden")
                        }                         
                        overlay.last().addClass("hidden")

                    } else {
                        overlay.addClass("hidden")
                        $.mdtoast('Ocurrio un error y no se pudo registrar la información', {
                            duration: 5000
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration: 4000
            });
        }
    })

    // Vincular proyecto del plan de accion anterior al nuevo
    $("body").on("click", ".btn-add-projectOld-plan", function (e) {
        var btn = $(e.currentTarget)        
        vincularProyecto(btn.data("id"), 1, btn)
    })
    
    // Vincular proyectos nuevos al plan de accion nuevo
    $("#form-project-news-plan-semillero").on("click", function () {
        var select = $("#proyecto :selected")
        vincularProyecto(select.val(), 2, select)
    })
    
    function vincularProyecto(id, from, node) {
        var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
        myToast.show()   
        var dataPlan = JSON.parse(localStorage.getItem("dataPlan"))
        $.ajax({
            url     : '../paginas/procesar/gestionPlanAccionSemillero.jsp?id='+id+"&anio="+dataPlan.anio+"&semestre="+dataPlan.semestre+"&operacion=7",
            type    : 'GET',
            success : function ( response ) {
                var json = JSON.parse(response)
                if ( json.status == 200 ) {
                    myToast.hide()  
                    if ( from == 1 ) node.addClass("hidden")
                    $.mdtoast('El proyecto ha sido vinculado', {
                        duration  : 3000                
                    });
                } else {
                    res = false
                    $.mdtoast('Ocurrio un error al guardar la información', {
                        duration  : 5000                
                    });
                }
            }
        })
    }

    // Evento para registrar actividades en el plan de accion
    $("#btn-save-act-plan-semillero").on("click", function () {
        var myToast = $.mdtoast('Registro en proceso...', {duration: 1000000, init: true});
        myToast.show()
        var form = $("#form-reg-act-plan-semillero")
        if (form.valid()) {
            var plan = JSON.parse(localStorage.getItem('dataPlan'))
            var data = form.serializeArray()
            data.push({'token': token})
            data.push({'name' : 'anio', 'value' : plan.anio})
            data.push({'name' : 'semestre', 'value' : plan.semestre})
            $.ajax({
                url: '../paginas/procesar/gestionPlanAccionSemillero.jsp',
                type: 'POST',
                data: $.param(data),
                success: function (response) {
                    var json = JSON.parse(response)
                    if (json.status == 200) {
                        myToast.hide()
                        form[0].reset()
                        $(".js-example-basic-multiple1").val(null).trigger("change")
                        $.mdtoast('La actividad ha sido vinculada al plan de acción', {
                            duration: 3000
                        });
                    } else {
                        $.mdtoast('Ocurrio un error al guardar la información', {
                            duration: 5000
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration: 5000
            });
        }
    })

    // Evento para registrar capacitaciones en el plan de accion
    $("#btn-save-capacity").on("click", function () {
        var myToast = $.mdtoast('Registro en proceso...', {duration: 1000000, init: true});
        myToast.show()
        var form = $("#form-capacity")
        if (form.valid()) {
            var plan = JSON.parse(localStorage.getItem('dataPlan'))
            var data = form.serializeArray()
            data.push({'token': token})
            data.push({'name' : 'anio', 'value' : plan.anio})
            data.push({'name' : 'semestre', 'value' : plan.semestre})
            $.ajax({
                url: '../paginas/procesar/gestionPlanAccionSemillero.jsp',
                type: 'POST',
                data: $.param(data),
                success: function (response) {
                    var json = JSON.parse(response)
                    if (json.status == 200) {
                        myToast.hide()
                        form[0].reset()
                        $(".js-example-basic-multiple1").val(null).trigger("change")
                        $.mdtoast('La capacitacion ha sido vinculado al plan de acción', {
                            duration: 3000
                        });
                    } else {
                        $.mdtoast('Ocurrio un error al guardar la información', {
                            duration: 5000
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration: 5000
            });
        }
    })
    
    // Vincular actividades del plan de accion anteriores al nuevo
    $("body").on("click", ".btn-add-actOld-plan", function (e) {
        var myToast = $.mdtoast('Vinculación en proceso...', { duration: 1000000, init: true });
        myToast.show()   
        var dataPlan = JSON.parse(localStorage.getItem("dataPlan"))
        var btn = $(e.currentTarget)        
        $.ajax({
            url     : '../paginas/procesar/gestionPlanAccionSemillero.jsp?id='+btn.data("id")+"&anio="+dataPlan.anio+"&semestre="+dataPlan.semestre+"&operacion=8",
            type    : 'GET',
            success : function ( response ) {
                var json = JSON.parse(response)
                if ( json.status == 200 ) {
                    myToast.hide()  
                    btn.addClass("hidden")
                    $.mdtoast('La actividad ha sido vinculado al plan de acción', {
                        duration  : 3000                
                    });
                } else {
                    res = false
                    $.mdtoast('Ocurrio un error al guardar la información', {
                        duration  : 5000                
                    });
                }
            }
        })
    })
    
    // Vincular eventos del plan de accion anteriores al nuevo
    $("body").on("click", ".btn-add-evtOld-plan", function (e) {
        var myToast = $.mdtoast('Vinculación en proceso...', { duration: 1000000, init: true });
        myToast.show()   
        var dataPlan = JSON.parse(localStorage.getItem("dataPlan"))
        var btn = $(e.currentTarget)        
        $.ajax({
            url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp?id='+btn.data("id")+"&anio="+dataPlan.anio+"&semestre="+dataPlan.semestre+"&operacion=9",
            type    : 'GET',
            success : function ( response ) {
                var json = JSON.parse(response)
                if ( json.status == 200 ) {
                    myToast.hide()  
                    btn.addClass("hidden")
                    $.mdtoast('La capacitación ha sido vinculado al plan de acción', {
                        duration  : 3000                
                    });
                } else {
                    res = false
                    $.mdtoast('Ocurrio un error al guardar la información', {
                        duration  : 5000                
                    });
                }
            }
        })
    })
})


