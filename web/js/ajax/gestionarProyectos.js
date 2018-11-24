
$(function () {
    
    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';
    
    $("#tipo-proyecto").on("change", function () {
        var tipoProyecto = $("#tipo-proyecto :selected").text().toLowerCase()
        if ( tipoProyecto === "finu") {
            $("#num-contrato").removeClass("hidden")
        }
        else {
            $("#num-contrato").addClass("hidden")
        }
    })
    
    $("#btn-save-project").on("click", function () {
        var form = $("#form-save-project")
        var state = form.valid()
        if ( state ) {
            var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
            myToast.show()
            form = form.serializeArray()
            form.push( 'token', localStorage.getItem('token'))
            $.ajax({
                url      : '../paginas/procesar/gestionProyecto.jsp',
                type     : 'POST',
                data     : $.param(form),
                success  : function ( response ) {
                    console.log(response)
                    var json = JSON.parse( response )
                    myToast.hide()
                    if ( json.status == 200) {
                        document.location.href = "../paginas/procesar/gestionProyecto.jsp?id="+json.id+"&operacion=4&token="+localStorage.getItem("token")
                        
                    } else {
                        $.mdtoast('Ocurrido un error en el servidor, no se registro la información', {
                            duration  : 5000                
                        });
                    }                    
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son requeridos', {
                duration  : 5000                
            });
        }
    })
    
    $(".btn-finish-project").on("click", function (e) {
        var myToast = $.mdtoast('Eliminación en proceso...', { duration: 1000000, init: true });
        myToast.show()
        var btn = $(e.currentTarget)
        var project = btn.data("project")
        $.ajax({
            url     : '../paginas/procesar/gestionProyecto.jsp?id_proyecto='+project+"&operacion=5&token="+localStorage.getItem("token"),
            type    : 'GET',
            success : function ( response ) {
//                console.log(response)
                var json = JSON.parse(response)
                if ( json.status == 200 ) {
                    myToast.hide()
                    $.mdtoast('El cierre del proyecto ha sido realizado', {
                        duration  : 5000                
                    });
                } else {
                    $.mdtoast('Ocurrio un error durante el proceso de cierre', {
                        duration  : 5000                
                    });
                }
            }
        })
    })
})


