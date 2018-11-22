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
        var overlay = $(".overlay")
        overlay.removeClass('hidden')
        if ( form.valid() ) {
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
                        localStorage.setItem('dataPlan', {'anio' : '2018', 'semestre' : '2'})
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
            form = form.serializeArray()
            form.push('token', token)
            form.push('anio', localStorage.getItem('dataPlan').anio)
            form.push('semestre', localStorage.getItem('dataPlan').semestre)
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp',
                type    : 'POST',
                data    : $.param(form),
                success : function ( response ) {
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        myToast.hide()   
                        $.mdtoast('El proyecto se ha vinculado', {
                            duration  : 5000                
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

