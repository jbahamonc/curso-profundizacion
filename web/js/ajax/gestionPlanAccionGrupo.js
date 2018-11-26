$(function () {
    
    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';
    
    $(document).ajaxStart(function () {
        Pace.restart()
    })
    
    var token = localStorage.getItem("token")
   
    // Evento que se dispara cuando se registra un plan de accion de un grupo
    $("#btn-save-action-plan").on("click", function() {
        var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
        myToast.show()
        var form = $("#form-plan-action-group")         
        if ( form.valid() ) {
            var overlay = $(".overlay")
            overlay.removeClass('hidden')
            form = form.serializeArray()
            form.push({ 'token' : token })
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(form),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    var infoEmpty = $(".info-empty")
                    myToast.hide()
                    if (json.status == 200) {
                        var buttons = $(".button-plans")
                        buttons.removeAttr('disabled')
                        localStorage.setItem('dataPlan', JSON.stringify({'anio' : form[1].value, 'semestre' : form[2].value}))                        
                        $.mdtoast('La información ha sido registrada', {
                            duration  : 4000                
                        });
                        var html = ""
                        var ulProjects = $("#ulProjects")
                        ulProjects.empty()
                        if ( json.proyectos.length > 0 ) {
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
                        
                        var ulEvents = $("#ulEvents")
                        ulEvents.empty()
                        if ( json.eventos.length > 0 ) {
                            html = ""
                            for (var e of json.eventos) {
                                html += '<li class="item">'+
                                        '<div class="product-img">'+
                                            '<img src="../img/date.svg" alt="Project Image">'+
                                        '</div>'+
                                        '<div class="product-info">'+
                                            '<a href="infoProyecto.jsp" class="product-title">'+
                                                e.nombre +
                                            '</a>'+
                                            '<span class="product-description">'+
                                                '<button class="btn btn-xs btn-success pull-right" data-id='+e.id+'>VINCULAR</button>'
                                            '</span>'+
                                        '</div>'+
                                    '</li>'
                            }
                            ulEvents.html(html)
                            infoEmpty.eq(1).addClass("hidden")
                        }                         
                        overlay.eq(1).addClass("hidden")
//                        
                        var ulActivitys = $("#ulActivitys")
                        ulActivitys.empty()
                        if ( json.actividades.length > 0 ) {
                            html = ""
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
                            duration  : 5000                
                        });                        
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration  : 4000                
            });
        }        
    })
    
    // Evento para agregar proyectos al plan de accion
    $("#btn-add-project-plan-group").on("click", function () {
        var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
        myToast.show()
        var form = $("#form-project-news-plan")
        if ( form.valid() ) {
            var plan = JSON.parse(localStorage.getItem('dataPlan'))
            form = form.serializeArray()
            form.push('token', token)
            form.push('anio', plan.anio)
            form.push('semestre', plan.semestre)
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(form),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        myToast.hide()   
                        $.mdtoast('El proyecto se ha vinculado', {
                            duration  : 3000                
                        });
                    } else {
                        $.mdtoast('Ocurrio un error al guardar la información', {
                            duration  : 5000                
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration  : 5000                
            }); 
        }
    })
    
    // Evento para registrar actividades en el plan de accion
    $("#btn-save-act-plan").on("click", function () {
        var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
        myToast.show()
        var form = $("#form-reg-act-plan")
        if ( form.valid() ) {
            var plan = JSON.parse(localStorage.getItem('dataPlan'))
            var data = form.serializeArray()
            data.push({'token': token})
            data.push({'name' : 'anio', 'value' : plan.anio})
            data.push({'name' : 'semestre', 'value' : plan.semestre})
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(data),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        myToast.hide()   
                        form[0].reset()
                        $(".js-example-basic-multiple1").val(null).trigger("change")
                        $.mdtoast('La actividad ha sido vinculada al plan de acción', {
                            duration  : 3000                
                        });
                    } else {
                        $.mdtoast('Ocurrio un error al guardar la información', {
                            duration  : 5000                
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration  : 5000                
            }); 
        }
    })   
    
    // Evento para registrar eventos en el plan de accion
    $("#btn-save-events-plan").on("click", function () {
        var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
        myToast.show()
        var form = $("#form-reg-events-plan")
        if ( form.valid() ) {
            var plan = JSON.parse(localStorage.getItem('dataPlan'))            
            var data = form.serializeArray()
            data.push({'token': token})
            data.push({'name' : 'anio', 'value' : plan.anio})
            data.push({'name' : 'semestre', 'value' : plan.semestre})
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(data),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        myToast.hide()  
                        form[0].reset()
                        $(".js-inst-promo, .js-entidades, .js-example-basic-multiple1").val(null).trigger("change")
                        $.mdtoast('El evento ha sido vinculado al plan de acción', {
                            duration  : 3000                
                        });
                    } else {
                        $.mdtoast('Ocurrio un error al guardar la información', {
                            duration  : 5000                
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration  : 5000                
            }); 
        }
    })
    
    // Abrir modal para el regsitro de avances de actividades
    var modal
    $("#modal").on("show.bs.modal", function (e) {
        var btn = $(e.relatedTarget)
        modal = $(this)
        modal.find("#anio").val(btn.data("anio"))
        modal.find("#semestre").val(btn.data("semestre"))        
    })
    
    // Registrar el % de avance de las actividades del plan de accion
    $("#btn-avance-act-plan").on("click", function () {
        var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
        myToast.show()        
        var form = $("#form-avance-act-plan")
        if ( form.valid() ) {
            var data = form.serializeArray()
            data.push('token', token)
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(data),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        modal.modal('hide')
                        myToast.hide()   
                        $.mdtoast('El avance de la actividad se ha registrado', {
                            duration  : 3000                
                        });
                    } else {
                        $.mdtoast('Ocurrio un error al guardar la información', {
                            duration  : 5000                
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration  : 5000                
            }); 
        }
    })
    
    // Abrir modal para el regsitro de avances de eventos
    $("#modal-evt").on("show.bs.modal", function (e) {
        var btn = $(e.relatedTarget)
        modal = $(this)
        modal.find("#anio").val(btn.data("anio"))
        modal.find("#semestre").val(btn.data("semestre"))        
    })
    
    // Registrar el % de avance de los eventos del plan de accion
    $("#btn-avance-evt-plan").on("click", function () {
        var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
        myToast.show()        
        var form = $("#form-avance-evt-plan")
        if ( form.valid() ) {
            var data = form.serializeArray()
            data.push('token', token)
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(data),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        modal.modal('hide')
                        myToast.hide()   
                        $.mdtoast('El avance del evento se ha registrado', {
                            duration  : 3000                
                        });
                    } else {
                        $.mdtoast('Ocurrio un error al guardar la información', {
                            duration  : 5000                
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son obligatorios', {
                duration  : 5000                
            }); 
        }
    })
    
    // Vincular proyecto del plan de accion anterior al nuevo
    $("body").on("click", ".btn-add-projectOld-plan", function (e) {
        var btn = $(e.currentTarget)        
        vincularProyecto(btn.data("id"), 1, btn)
    })
    
    // Vincular proyectos nuevos al plan de accion nuevo
    $("#btn-add-project-plan-group").on("click", function () {
        var select = $("#select-project-news :selected")
        vincularProyecto(select.val(), 2, select)
    })
    
    function vincularProyecto(id, from, node) {
        var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
        myToast.show()   
        var dataPlan = JSON.parse(localStorage.getItem("dataPlan"))
        $.ajax({
            url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp?id='+id+"&anio="+dataPlan.anio+"&semestre="+dataPlan.semestre+"&operacion=10",
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
    
    // Vincular actividades del plan de accion anteriores al nuevo
    $("body").on("click", ".btn-add-actOld-plan", function (e) {
        var myToast = $.mdtoast('Vinculación en proceso...', { duration: 1000000, init: true });
        myToast.show()   
        var dataPlan = JSON.parse(localStorage.getItem("dataPlan"))
        var btn = $(e.currentTarget)        
        $.ajax({
            url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp?id='+btn.data("id")+"&anio="+dataPlan.anio+"&semestre="+dataPlan.semestre+"&operacion=11",
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
})

