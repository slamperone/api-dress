<?php 

///diana-di-giorno/menu.json
///diana-di-giorno/vestidos.php?id=0&escote=2&color=5
header('Content-Type: application/json');

$vista  = array(
	'id' => '0001',
	'Nombre' => 'Jane',
	'SKU' => "4147",
	'Color' => array( 
		array(
			'id' => '32423',
			'nombre' => 'Oro / Palo de Rosa',
			'hexa' => '#d3b498',
			'rgb' => '212,180,150', ),
		),
	'fotos' =>  array(
		'frente' => array(
				'id' => '00001',
				'color' => 'Oro, Palo de Rosa',
				'alt' => 'Vestido de quinceañera dorado, modelo Jane',
				'hexdress' => '#d3b498',
				'thumb' => 'https://xochimaco.com/b879e89b97f4/nina-resens/img/prod-img/4147_B_thumb.jpg',
				'original' => 'https://xochimaco.com/b879e89b97f4/nina-resens/img/prod-img/4147_B.jpg', ),
		'vuelta' => array(
				'id' => '00001',
				'color' => 'Oro, Palo de Rosa',
				'alt' => 'Vestido de quinceañera dorado, modelo Jane',
				'hexdress' => '#d3b498',
				'thumb' => 'https://xochimaco.com/b879e89b97f4/nina-resens/img/prod-img/4147_F_thumb.jpg',
				'original' => 'https://xochimaco.com/b879e89b97f4/nina-resens/img/prod-img/4147_F.jpg', ),
		),
	'Coleccion' => "MODERNA",
	'Piezas' => 2,
	'Corte' => 'Princesa (amplio)',
	'Escote' => 'Strapless',
	'Manga' => 'Mangas Desmontables',
	'Material' => array(
		'x',
		'x',
		'x' 
	),
	'Caida' => array(
		'x',
		'',
		'' 
	),	
	'Tallas' => array(
		28,
		29,
		30 
	),
	'Extras' => array(
		'',
		'',
		'',
		'' 
	),		
	'Relacionado' => array(
		array(
			'id' => '0001',
			'url' => 'Oro, Palo de Rosa',
			'alt' => '#d3b498',
			'original' => 'https://xochimaco.com/b879e89b97f4/nina-resens/img/prod-img/4147_B_thumb.jpg', 
		),
		array(
			'id' => '0001',
			'nombre' => 'Oro, Palo de Rosa',
			'thumb1' => '#d3b498',
			'thumb2' => 'https://xochimaco.com/b879e89b97f4/nina-resens/img/prod-img/4147_B_thumb.jpg', ),
		),


);

//echo "<pre>";
//print_r($vista);
//echo "</pre>";

//json_encode($vista)
$json_string = json_encode($vista, JSON_PRETTY_PRINT);

echo $json_string;





 ?>

