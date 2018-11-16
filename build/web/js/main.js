$(document).ready(function() {
    // To make Pace works on Ajax calls
    $(document).ajaxStart(function () {
        Pace.restart()
    })

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
    
    // JS del select de estudiantes en registro de participación en direccion del plan de accion
    var $js5 = $('.js-estudiantes-plan').select2();
    var nombreEst = $("#nombre-estudiante")
    var programa = $("#programa-estudiante")
    $("#btn-add-estudiante").on("click", function () {    	
    	var newOption = new Option(nombreEst.val()+" - "+programa.val(), 1, true, true);
    	$js5.append(newOption).trigger('change');
    	nombreEst.val("")
    	nombreEst.focus()
    	programa.val("")
    })
    
    // JS del select de responsables en registro de actividades del grupo de investigación
    var $js6 = $('.js-estudiantes-plan').select2();
    var nombreResp = $("#nombre-responsable")
    $("#btn-add-responsable").on("click", function () {    	
    	var newOption = new Option(nombreResp.val(), 1, true, true);
    	$js6.append(newOption).trigger('change');
    	nombreResp.val("")
    	nombreResp.focus()
    })
    
    // JS del select de responsables del evento en registro de productos 
    var $js7 = $('.js-organizadores-evt').select2();
    var nombreRespEvt = $("#nombre-responsable-evt")
    $("#btn-add-responsable-evt").on("click", function () {    	
    	var newOption = new Option(nombreRespEvt.val(), 1, true, true);
    	$js7.append(newOption).trigger('change');
    	nombreRespEvt.val("")
    	nombreRespEvt.focus()
    })
    
    // JS del select de instituciones patrocinadoras del evento en registro de productos 
    var $js7 = $('.js-inst-patrocinadoras').select2();
    var instRespo = $("#inst-patrocinadora")
    $("#btn-add-inst-patrocinadora").on("click", function () {    	
    	var newOption = new Option(instRespo.val(), 1, true, true);
    	$js7.append(newOption).trigger('change');
    	instRespo.val("")
    	instRespo.focus()
    })
    
    // JS del select de instituciones promotoras del evento en registro del plan de accion 
    var $js8 = $('.js-inst-promo').select2();    
    $("#btn-add-inst-promo").on("click", function () { 
        var instPromo = $("#nombre-inst-promo")
    	var newOption = new Option(instPromo.val(), 1, true, true);
    	$js8.append(newOption).trigger('change');
    	instPromo.val("")
    	instPromo.focus()
    })
    
    // JS del select de entidades participante del evento en registro del plan de accion 
    var $js9 = $('.js-entidades').select2();    
    $("#btn-add-entidad").on("click", function () { 
        var instEntidad = $("#nombre-entidad")
    	var newOption = new Option(instEntidad.val(), 1, true, true);
    	$js9.append(newOption).trigger('change');
    	instEntidad.val("")
    	instEntidad.focus()
    })

    // Evento que se dispara cuando se selecciona algun tipo de producto, con el fin de mostrar campos adicionales
    // dependiento del tipo de producto
    $("#select-tipo-producto").on("change", function () {
    	var tipo = $("#select-tipo-producto option:selected").text()    
        tipo = tipo.toLowerCase()
        tipo = quitaAcentos(tipo)
    	$("form .active").removeClass('active').addClass('hidden')
    	if ( tipo === "libro") {
            $("#fields-book").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == "capitulo") {
            $("#fields-chapter").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == "articulo") {
            $("#fields-article").removeClass('hidden').addClass('active')
    	}
    	else if ( tipo == "trabajo de grado") {
            $("#fields-project").removeClass('hidden').addClass('active')
    	}
        else if ( tipo == "evento cientifico") {
            $("#fields-ponencia").removeClass('hidden').addClass('active')
    	}
        else if ( tipo == "software") {
            $("#fields-software").removeClass('hidden').addClass('active')
    	}
        else {
            $("#box-empty").removeClass('hidden').addClass('active')
        }

    })
    
    // Funcion que quita los acentos del str
    function quitaAcentos(str){ 
        for (var i=0;i<str.length;i++){ 
            //Sustituye "á é í ó ú" 
            if (str.charAt(i)=="á") str = str.replace(/á/,"a"); 
            if (str.charAt(i)=="é") str = str.replace(/é/,"e"); 
            if (str.charAt(i)=="í") str = str.replace(/í/,"i"); 
            if (str.charAt(i)=="ó") str = str.replace(/ó/,"o"); 
            if (str.charAt(i)=="ú") str = str.replace(/ú/,"u"); 
        } 
        return str; 
    } 

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
        form.find("#info-basic-event").addClass("hidden")
        form.find("#info-resource-event").removeClass("hidden")
        form.find("#btn-back-event").removeClass("hidden")
        $(this).text("Finalizar")
    })
    
    // Evento que se dispara cuando se hace un retroceso para ver la info del evento del grupo
    $("#btn-back-event").on("click", function () {
        var form = $("#form-events")
        form.find("#info-basic-event").removeClass("hidden")
        form.find("#info-resource-event").addClass("hidden")
        form.find("#btn-save-event").text("Siguiente")
        $(this).addClass("hidden")
    })
    
    // Evento que se dispara cuando se guarda una capacitacion del semillero
    $("#btn-save-capacity").on("click", function () {
        // Nota: recorrer todos los campos y validar
        var form = $("#form-capacity")
        form.find("#fields-capacity").addClass("hidden")
        form.find("#fields-capacity-resource").removeClass("hidden")
        form.find("#btn-back-capacity").removeClass("hidden")
        $(this).text("Finalizar")
    })
    
    // Evento que se dispara cuando se hace un retroceso para ver la info de la capacitación del semillero
    $("#btn-back-capacity").on("click", function () {
        var form = $("#form-capacity")
        form.find("#fields-capacity").removeClass("hidden")
        form.find("#fields-capacity-resource").addClass("hidden")
        form.find("#btn-save-capacity").text("Siguiente")
        $(this).addClass("hidden")
    })
    
    // Evento que se dispara cuando se consulta la productividad de un grupo en consultas
    $("#btn-consult-productivity").on("click", function() {
        $("#data-productivity").removeClass("hidden")
        $("#data-productivity-empty").addClass("hidden")
    })
    
    // Evento que se dispara cuando se registra un plan de accion de un grupo
    $("#btn-save-action-plan").on("click", function() {
        $(".box-data-action").removeClass("hidden")
        $("#info-empty-projects, #info-empty-events, #info-empty-activitys").addClass("hidden")
    })
    
    // Evento que se dispara cuando se registra un plan de accion de un semillero
    $("#btn-save-action-plan-semillero").on("click", function() {
        $(".box-data-action").removeClass("hidden")
        $("#info-empty-projects-semillero, #info-empty-events-semillero, #info-empty-activitys-semillero").addClass("hidden")
    })
} );