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
            form = form.serializeArray()
            form.push({ 'token' : token })
            $.ajax({
                url     : '../paginas/procesar/gestionPlanAccionGrupo.jsp?',
                type    : 'POST',
                data    : $.param(form),
                success : function ( response ) {
                    console.log(response)
                    var json = JSON.parse(response)
                    myToast.hide()
                    if (json.status == 200) {
                        $.mdtoast('La información ha sido regitrada', {
                            duration  : 5000                
                        });
                    } else {
                        $.mdtoast('Ocurrio un error y no se pudo registrar la información', {
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
        
        $(".box-data-action").removeClass("hidden")
        $("#info-empty-projects, #info-empty-events, #info-empty-activitys").addClass("hidden")
        
    })
})

