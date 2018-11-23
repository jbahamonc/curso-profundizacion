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

    $("#btn-eli-semillero").on("click", function () {
        var id = $(this).data("id")
        console.log(id)
        $.ajax({
            url: '../paginas/procesar/gestionSemillero.jsp',
            type: 'POST',
            data: {id: id, operacion: 3},
            success: function (response) {
                console.log(response)
                if (response.status == 200) {
                    $.mdtoast('El semillero se ha eliminado', {
                        duration: 5000
                    });
                } else {
                    $.mdtoast('Algo salió mal, error al eliminar el semillero!', {
                            duration: 5000
                        });
                }
            }

        })

    })




})


