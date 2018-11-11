$(document).ready(function() {
    // To make Pace works on Ajax calls
    $(document).ajaxStart(function () {
        Pace.restart()
    })
    /*$('.ajax').click(function () {
        $.ajax({
            url: '#', success: function (result) {
                $('.ajax-content').html('<hr>Ajax Request Completed !')
            }
        })
    })*/

    $('#example').DataTable();
    //Date range picker
    $('#date-realization').daterangepicker({
        opens : 'left',
        drops : 'up',
        dateFormat : 'dd/mm/yy'
    })

    $('.js-example-basic-multiple1').select2();

    var $js2 = $('.js-example-basic-multiple2').select2();
    var objDiv = $("#obj_esp")
    $("#btn-add-objective").on("click", function () {
    	var newOption = new Option(objDiv.val(), 1, true, true);
    	$js2.append(newOption).trigger('change');
    	objDiv.val("")
    	objDiv.focus()
    })

    // JS para directores en plan de accion
    var $js3 = $('.js-directores').select2();
    var objDirector = $("#director")
    var rol = $("#rol-director")
    $("#btn-add-director").on("click", function () {
    	
    	var newOption = new Option(objDirector.val()+"-"+rol.val().toUpperCase(), 1, true, true);
    	$js3.append(newOption).trigger('change');
    	objDirector.val("")
    	objDirector.focus()
    })

    // JS para registro de estudios a inv. docentes
    var $js4 = $('.js-add-studies').select2();
    var study = $("#study")
    var university = $("#university")
    $("#btn-add-studies").on("click", function () {
    	
    	var newOption = new Option(study.val()+" - "+university.val(), 1, true, true);
    	$js4.append(newOption).trigger('change');
    	study.val("")
    	study.focus()
    	university.val("")
    })

    // Evento que se dispara cuando se selecciona algun tipo de producto, con el fin de mostrar campos adicionales
    // dependiento del tipo de producto
    $("#select-tipo-producto").on("change", function () {
    	var tipo = $(this).val()
    	$("form .active").removeClass('active').addClass('hidden')
    	if ( tipo == 0) {
    		$("#fields-book").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 1) {
    		$("#fields-chapter").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 2) {
    		$("#fields-article").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 3) {
    		$("#fields-project").removeClass('hidden').addClass('active')
    	}

    })

    // Evento que se dispara cuando se selecciona algun tipo de investigador, con el fin de mostrar campos adicionales
    // dependiento del tipo de investigador
    $("#select-investigador").on("change", function () {
    	var tipo = $(this).val()
    	$("form .active").removeClass('active').addClass('hidden')
    	if ( tipo == 0) {
    		$("#fields-teacher").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 1) {
    		$("#fields-junior").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 2) {
    		$("#fields-external").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 3) {
    		$("#fields-par").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 4) {
    		$("#fields-student").removeClass('hidden').addClass('active')
    	}
    })

    // Evento que se dispara cuando se selecciona algun rol que ocupara el investigador, 
    // con el fin de mostrar campos adicionales dependiento del tipo de investigador
    $("#select-rol-investigador").on("change", function () {
    	var tipo = $(this).val()
    	$("form .active").removeClass('active').addClass('hidden')
    	if ( tipo == 0) {
    		$("#rol-responsable").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 1) {
    		$("#rol-cooinvestigador").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == 2) {
    		$("#rol-estudiante").removeClass('hidden').addClass('active')
    	}
    })

    // Evento que se dispara cuando se guarda un evento del grupo de investigacion
    $("#btn-save-event").on("click", function () {
        // Nota: recorrer todos los campos y validar
        var form = $("#form-events")
        var info_event = form.find("#info-basic-event").addClass("hidden")
        var info_resource = form.find("#info-resource-event").removeClass("hidden")
        $(this).text("Finalizar")

    })
    	
} );