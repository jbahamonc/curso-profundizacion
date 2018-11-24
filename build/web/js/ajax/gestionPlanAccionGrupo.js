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
                                                p.nombre +
                                            '</a>'+
                                            '<span class="product-description">'+
                                                'Fecha de Inicio:'+ p.fecha +
                                                '<button class="btn btn-xs btn-success pull-right">VINCULAR</button>'
                                            '</span>'+
                                        '</div>'+
                                    '</li>'
                            }
                            ulProjects.html(html)
                        } 
                        infoEmpty[0].addClass("hidden")
                        overlay[0].addClass("hidden")
                        
                        var ulEvents = $("#ulEvents")
                        ulEvents.empty()
                        if ( json.eventos.length > 0 ) {
                            for (var p of json.eventos) {
                                html += '<li class="item">'+
                                        '<div class="product-img">'+
                                            '<img src="../img/date.svg" alt="Project Image">'+
                                        '</div>'+
                                        '<div class="product-info">'+
                                            '<a href="infoProyecto.jsp" class="product-title">'+
                                                p.nombre +
                                            '</a>'+
                                            '<span class="product-description">'+
                                                p.caracter +
                                                '<button class="btn btn-xs btn-success pull-right">VINCULAR</button>'
                                            '</span>'+
                                        '</div>'+
                                    '</li>'
                            }
                            ulEvents.html(html)
                        } 
                        infoEmpty[1].addClass("hidden")
                        overlay[1].addClass("hidden")
                        
                        var ulActivitys = $("#ulActivitys")
                        ulActivitys.empty()
                        if ( json.actividades.length > 0 ) {
                            for (var p of json.actividades) {
                                html += '<li class="item">'+
                                        '<div class="product-img">'+
                                            '<img src="../img/activitys.svg" alt="Project Image">'+
                                        '</div>'+
                                        '<div class="product-info">'+
                                            '<a href="infoProyecto.jsp" class="product-title">'+
                                                p.nombre +
                                            '</a>'+
                                            '<span class="product-description">'+
                                                'Fecha de Inicio: '+p.caracter +
                                                '<button class="btn btn-xs btn-success pull-right">VINCULAR</button>'
                                            '</span>'+
                                        '</div>'+
                                    '</li>'
                            }
                            ulActivitys.html(html)
                        } 
                        infoEmpty[2].addClass("hidden")
                        overlay[2].addClass("hidden")
                        
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
            data.push('token', token)
            data.push('anio', plan.anio)
            data.push('semestre', plan.semestre)
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(data),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        myToast.hide()   
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
            data.push('token', token)
            data.push('anio', plan.anio)
            data.push('semestre', plan.semestre)
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(data),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        myToast.hide()   
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
})

