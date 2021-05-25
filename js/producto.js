//Array con toda la info y array filtrado de campus norte
let dataDress = [];
let coloresDisponibles = [];
let materialesDisponibles = [];
let tallasDisponibles = [];

let selectHead = document.getElementById('nombre_vestido');
let selectSKU = document.getElementById('sku');
let selectColeccion = document.getElementById('coleccion');
let selectZoomFig = document.getElementById('zoom-fig');
let selectZoomImg = document.getElementById('zoom-img');
let selectThumb1 = document.getElementById('thumb-gal-01');
let selectThumb2 = document.getElementById('thumb-gal-02');
let selectSelectorColores = document.getElementById('selector-colores');
let selectInfoCorte = document.getElementById('infoCorte');
let selectInfoMaterial = document.getElementById('infoMaterial');
let selectInfoTallas = document.getElementById('infoTallas')
let selectColoresTable = document.getElementById('infoColor');
let selectCaracteristicas = document.getElementById('infoCaracteristicas');
let selectCaida = document.getElementById('infoCaida');

//Promesa para traer los datos, poblar el primer campus y crear el arreglo de Norteños
fetch('https://xochimaco.com/b879e89b97f4/single-prod.php', {
        /*method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: 'tk=ptk'*/
    })
        .then(response => response.json())
        .then(data => {
            dataDress = data;
        })
        .then(() => {
            tallasDisponibles = dataDress.Tallas;
            materialesDisponibles = dataDress.Material;
            coloresDisponibles = dataDress.Color;
            selectHead.innerHTML = dataDress.Nombre;
            selectSKU.innerHTML = dataDress.SKU;
            selectColeccion.innerHTML = dataDress.Coleccion;
            selectThumb1.src = dataDress.fotos.frente.original;
            selectThumb2.src = dataDress.fotos.vuelta.original;
            selectZoomFig.style.backgroundImage = `url(${dataDress.fotos.frente.original}`;
            selectZoomImg.src = dataDress.fotos.frente.original;
            selectCaracteristicas.innerHTML = dataDress.Caracteristicas;
            selectInfoCorte.innerHTML = dataDress.Corte;
            selectCaida.innerHTML = dataDress.Caida;
            
            for(i = 0; i < coloresDisponibles.length; i++){
                selectSelectorColores.innerHTML += `<button class="unselected" id="${coloresDisponibles[i].idHTML}" style="background-color:${coloresDisponibles[i].hexa}"></button>`;
                selectColoresTable.innerHTML += coloresDisponibles[i].nombre;
            }

            for(i = 0; i < materialesDisponibles.length; i++){
                selectInfoMaterial.innerHTML += materialesDisponibles[i].tela1 + ', ' + materialesDisponibles[i].tela2;
            }

            for(i = 0; i < tallasDisponibles.length; i++){
                selectInfoTallas.innerHTML += tallasDisponibles[i].talla1 + ', ' + tallasDisponibles[i].talla2 + ', ' + tallasDisponibles[i].talla3;
            }
        })
        
     


// ------------- ZOOM FUNCTION ----------------//
function zoom(e){
  var zoomer = e.currentTarget;
  e.offsetX ? offsetX = e.offsetX : offsetX = e.touches[0].pageX
  e.offsetY ? offsetY = e.offsetY : offsetX = e.touches[0].pageX
  x = offsetX/zoomer.offsetWidth*100
  y = offsetY/zoomer.offsetHeight*100
  zoomer.style.backgroundPosition = x + '% ' + y + '%';
}

//Ruta del link
var menu_link = jQuery('#image-wrapper img');

//Acción sustituir clases
menu_link.click(function() {
  var esta_d = jQuery(this).hasClass('it_selected');
  var liga_ficha = jQuery(this).attr('src');
  menu_link.removeClass("it_selected");
  menu_link.addClass("it_vinculo");       
  jQuery(this).addClass("it_selected");

  if( esta_d == false ){
    jQuery('.zoom').css('background-image', 'url('+liga_ficha+')');
    jQuery('.zoom img').attr('src', liga_ficha)
    
  }

});