/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {

    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';
    jQuery.validator.messages.email = 'La direcci&oacute;n de correo es incorrecta.';
    
    // Init DataTable of Groups
    var semilleros = $('#semilleros').DataTable();

    
    var tablaSemillero = $('#tablaSemillero').DataTable();
    // Registrar semilleros
    $("#btn-save-semillero").on("click", function () {
        var form = $("#form-register-semillero")
        var state = form.valid()
        if (state) {
            var myToast = $.mdtoast("Registro en proceso...", {duration: 100000, init: true});
            myToast.show();
            var token = localStorage.getItem("token");
            form = form.serializeArray();
            form.push({token: token});
            $.ajax({
                url: '../paginas/procesar/gestionSemillero.jsp',
                type: 'POST',
                data: $.param(form),
                success: function (response) {
                    myToast.hide()
                    var res = JSON.parse(response)
                    if (res.status === 200) {
                        document.location.href = '../paginas/procesar/gestionSemillero?id=' + res.id + '&operacion=2&token=' + token;
                    } else {
                        $.mdtoast('Algo salió mal, error en el registro de datos!', {
                            duration: 5000
                        });
                    }

                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son requeridos', {
                duration: 5000
            });
        }
    })

//ELIMINAR UN SEMILLERO
     $(".btn-eli-semillero").on("click", function (e) {
        var myToast = $.mdtoast('Eliminando el semillero...', { duration: 1000000, init: true });
        myToast.show()
        var btn = $(e.currentTarget)
        $.ajax({
            url      : '../paginas/procesar/gestionSemillero.jsp?id='+btn.data("id")+"&operacion=3&token="+localStorage.getItem("token"),
            type     : 'GET',
//            dataType : 'json',
            success  : function ( response ) { 
                console.log(response)
                var json = JSON.parse( response )
                if ( json.status == 200 ) {                    
                    myToast.hide()
                    tablaSemillero.row(btn.parents("tr")).remove().draw()
                    $.mdtoast('El Semillero se ha eliminado', {
                        duration  : 4000                
                    });
                } else {
                    $.mdtoast('Lo sentimo!. Ocurrio un error en el sistema', {
                        duration  : 5000                
                    });
                }
                
            }
        })        
    })




})


