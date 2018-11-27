$(function () {
    
    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';
    
    $(document).ajaxStart(function () {
        Pace.restart()
    })
    
    $("#productos").DataTable()

    $("#btn-save-product").on("click", function () {        
        var form = $("#form-products")
        if ( form.valid() ) {
            var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
            myToast.show()
            var data = form.serializeArray()
            data.push({'name': 'tipoProducto', 'value' : localStorage.getItem('tipoProducto')})
            console.log(data)
            $.ajax({
                url      : '../paginas/procesar/gestionProductos.jsp',
                type     : 'POST',
                data     : $.param(data),
                success  : function ( response ) {
                    myToast.hide()                    
                    var json = JSON.parse(response)
                    if ( json.status == 200 ) {
                        form[0].reset()
                        document.location.href = "../paginas/procesar/gestionProductos.jsp?operacion=1"
                    } else {
                        $.mdtoast('Ocurrio un error en el servidor', {
                            duration  : 5000                
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Todos los campos marcados con (*) son obligatorios', {
                duration  : 5000                
            });
        }
    })
    
    $("#select-tipologia").on("change", function () {
        var tipo = $("#select-tipologia :selected")
        var select = $("#select-subtipologia")
        $.ajax({
            url     : '../paginas/procesar/gestionProductos.jsp?id_tipo='+tipo.val()+'&operacion=3',
            type    : 'GET',
            success : function ( response ) {
                var data = JSON.parse(response)
//                console.log(data)
                if ( data.length > 0) {
                    var html = "<option selected disabled>Seleccione</option>"
                    select.empty()
                    for (var subTipo of data) {
                        html += "<option value="+subTipo.id+">"+subTipo.nombre.toUpperCase()+"</option>"
                    }
                    select.html(html)
                }
            }
        })
    })
    
    $("#select-subtipologia").on("change", function () {
        var tipo = $("#select-subtipologia :selected")
        var select = $("#select-tipoProducto")
        $.ajax({
            url     : '../paginas/procesar/gestionProductos.jsp?id_subtipo='+tipo.val()+'&operacion=4',
            type    : 'GET',
            success : function ( response ) {
                var data = JSON.parse(response)
//                console.log(data)
                if ( data.length > 0) {
                    var html = "<option selected disabled>Seleccione</option>"
                    select.empty()
                    for (var subTipo of data) {
                        html += "<option value="+subTipo.id+">"+subTipo.nombre.toUpperCase()+"</option>"
                    }
                    select.html(html)
                }
            }
        })
    })
    
    $("#select-tipoProducto").on("change", function () {
        var tipo = $("#select-tipoProducto :selected")
        var select = $("#select-catProducto")
        $.ajax({
            url     : '../paginas/procesar/gestionProductos.jsp?id_catTipo='+tipo.val()+'&operacion=5',
            type    : 'GET',
            success : function ( response ) {
                var data = JSON.parse(response)
//                console.log(data)
                if ( data.length > 0) {
                    var html = "<option selected disabled>Seleccione</option>"
                    select.empty()
                    for (var subTipo of data) {
                        html += "<option value="+subTipo.id+">"+subTipo.nombre.toUpperCase()+"</option>"
                    }
                    select.html(html)
                }
            }
        })
    })
    
})


