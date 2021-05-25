/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
/*+++++++++++++++++++++++++++++++++++++++     Validar Formulario   +++++++++++++++++++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

function errorForm(idElementForm, textoAlerta){
    let elemento = idElementForm;
    let textoInterno = textoAlerta;
    let elementoId = document.getElementById(elemento);
    elementoId.classList.add('error');
    elementoId.classList.remove('validado');
    elementoId.classList.remove('sinvalidar');
    errorId = 'error-'+String(elemento);
    let tieneError = document.getElementById(errorId);
    if(!tieneError){
        const parrafo = document.createElement("p");
        const contParrafo = document.createTextNode(textoInterno);
        parrafo.appendChild(contParrafo);
        parrafo.classList.add('textoError');
        parrafo.id = 'error-'+String(elemento)
        //Depende de estructura de HTML
        elementoId.parentNode.appendChild(parrafo);
    }
}
//----- Función de remover error ------//
function validadoForm(idElementForm){
    let elemento = idElementForm;
    let elementoId = document.getElementById(elemento);
    elementoId.classList.remove('error');
    elementoId.classList.add('validado');
    elementoId.classList.remove('sinvalidar');
    errorId = 'error-'+String(elemento);
    let tieneError = document.getElementById(errorId);
    if(tieneError){
        tieneError.remove();
    }
}
//----Prevenir la entrada de letras en el teléfono------//
function isNumberKey(evt) {
    let charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57)){
        return false;
    } else {
        return true;
  }
}

//----Listar Todos los elementos del formulario y validar uno por uno------//

//---- Teléfono ----//
function validarTelefono(idEl){
    const idElemento = idEl;
    let telefono = document.getElementById(idElemento).value;
    if( telefono == null || telefono.length == 0 || /^\s+$/.test(telefono) || isNaN(telefono) ) {
        validadoForm(idElemento);
        errorForm(idElemento, 'Ingresa tu número telefónico');
        return false;
    } else if(telefono.length > 0 && telefono.length < 10){
        validadoForm(idElemento);
        errorForm(idElemento, 'El teléfono debe contener al menos 10 dígitos');
        return false;
    } else {
        validadoForm(idElemento);
    }
}

//---- Nombre ----//
function validarNombre(idEl){
    const idElemento = idEl;
    let valorelemento = document.getElementById(idElemento).value;
    if( valorelemento == null || valorelemento.length == 0 || /^\s+$/.test(valorelemento) ) {
        errorForm(idElemento, 'Por favor agrega tu nombre');
        return false;
    } else {
        validadoForm(idElemento);
    }
}

//---- Correo ----//
function validarCorreo(idEl){
    const idCorreo = idEl;
    let correo = document.getElementById(idCorreo).value;
    if( correo == null || correo.length == 0 || !(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(correo)) ) {
        errorForm(idCorreo, 'Ingresa un correo válido');
        return false;
    } else {
        validadoForm(idCorreo);
    }
}

//------  Función de validar todo el formulario  ---------//
function validacion(e){
    event.preventDefault(e);
    let formulario = document.getElementById('formulario');
    let tieneError;
    let sinvalidar;

    let camposForm = formulario.getElementsByTagName('input');
    for(i=0; i<camposForm.length; i++){
        if(camposForm[i].classList.contains('error')){
            tieneError = true;
        }
        if(camposForm[i].classList.contains('sinvalidar')){
            sinvalidar = true
        }
    }

    // Validar si hay selects dentro del formulario
    let selectForm = formulario.getElementsByTagName('select');
    for(i=0; i<selectForm.length; i++){
        if(selectForm[i].classList.contains('error')){
            tieneError = true;
        }
        if(selectForm[i].classList.contains('sinvalidar')){
            sinvalidar = true
        }
    }
    
    if( tieneError || sinvalidar ){
        validarTelefono('telefono');
        validarCorreo('email');
        validarNombre('nombre');
        return false;
    } else {
        //---- AQUÍ SE PUEDEN AGREGAR LAS ACCIONES PARA ENVIAR EL FORMULARIO ---//
        document.getElementById('formulario').submit();
        // Cargar un loader mientras se envia //
        const loader = '<div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div>';
        setTimeout(function(){ 
            formulario.innerHTML = loader; 
        }, 50);
    }   
}
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
/*+++++++++++++++++++++++++++++++++++++++        Tabs Catalogo     +++++++++++++++++++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/


jQuery(function(e) {


    //Variable con la ruta
    var menu_link = jQuery('#menutabs01 li a');
    
    //acción sustituir clases
    menu_link.click(function() {
        var esta_d = jQuery(this).hasClass('it_selected');
        var liga_ficha = jQuery(this).attr('rel');
        menu_link.removeClass("it_selected");
        menu_link.addClass("it_vinculo");       
        jQuery(this).addClass("it_selected");

        if( esta_d == false ){
            todas_fichas = jQuery('#fichatabs01 li');
            jQuery(todas_fichas).fadeOut(200);
            jQuery(liga_ficha).fadeIn(500);
        }

        return false;
    });

    //--------------Selector opciones------------//

    var img_selected = $('#test img, #test div');
    
    //acción sustituir clases
    img_selected.click(function() {
        var esta = $(this).hasClass('selected');
        img_selected.removeClass("selected");
        img_selected.addClass("unselected");       
        $(this).addClass("selected");

        if( esta == false ){
            img_selected.removeClass("selected");
            img_selected.addClass("unselected");       
            $(this).addClass("selected");
        }

        return false;
    });

    //--------------Cambio colores------------//

    var color_selected = $('.colores button');
    
    //acción sustituir clases
    color_selected.click(function() {
        var esta = $(this).hasClass('selected');
        color_selected.removeClass("selected");
        color_selected.addClass("unselected");       
        $(this).addClass("selected");

        if( esta == false ){
            color_selected.removeClass("selected");
            color_selected.addClass("unselected");       
            $(this).addClass("selected");
        }

        return false;
    });

    $('#blue-button').click(function(){
        $('body').removeClass('gold blue pink black').addClass('blue');
    });
    
    $('#gold-button').click(function(){
        $('body').removeClass('gold blue pink black').addClass('gold');
    });

    $('#pink-button').click(function(){
        $('body').removeClass('gold blue pink black').addClass('pink');
    });

    //--------------Abrir buscador------------//
    
    $('#search-box').click(function(){
        $('#overlay-buscar').fadeIn(300);
        $('.cerrar-modal, #overlay-buscar').click(function(){
            $('#overlay-buscar').fadeOut(300);
        });
    });

    $('.modal-buscar').on('click', function(){
        return false;
    });

    //--------------Abrir menú------------//
    
    (function () {
        $(".menu_anvorguesa").click(function () {
          $(this).toggleClass("cross");
            $('#menu-container, .overlay-black').toggleClass("open");
            $('.overlay-black').toggle();
        });
    }).call(this);

});
