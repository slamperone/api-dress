<?php 

header('Content-Type: application/json');

$vestidos  = array(	
	array(
		'tipo' => array(
			'id' => '0001',
			'nombre' => 'Recto',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/vestido-recto.svg',
			'alt_atribute' => 'Si estas chaparra y gorda te conviene este corte', 
		),
		'escote' => array(
			'id' => '0111',
			'nombre' => 'Barco',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/escote-barco.svg',
			'alt_atribute' => 'Este es el mejor tipod escote para viejas chichonas alv', 
		),
		'color' => array(
			'id' => '0111',
			'nombre' => 'Ivory',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/rectangle.svg',
			'hexadec' => '#F67C39',
			'alt_atribute' => 'Este color es el chido si estas prieta y culera', 
		),
	),
	array(
		'tipo' => 		array(
			'id' => '0021',
			'nombre' => 'Imperio',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/vestido-imperio.svg',
			'alt_atribute' => 'Si estas chaparra y gorda te conviene este corte', 
		),
		'escote' => array(
			'id' => '032',
			'nombre' => 'En V',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/escote-v.svg',
			'alt_atribute' => 'Este es el mejor tipod escote para viejas chichonas alv', 
		),
		'color' => array(
			'id' => '0111',
			'nombre' => 'Esmeralda',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/rectangle.svg',
			'hexadec' => '#2CFF3E',
			'alt_atribute' => 'Este color es el chido si estas prieta y culera', 
		),
	),

	array(
		'tipo' => array(
			'id' => '0331',
			'nombre' => 'Sirena',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/vestido-sirena.svg',
			'alt_atribute' => 'Si estas chaparra y gorda te conviene este corte', 
		),
		'escote' => array(
			'id' => '0555',
			'nombre' => 'Halter',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/escote-halter.svg',
			'alt_atribute' => 'Este es el mejor tipod escote para viejas chichonas alv', 
		),	
		'color' => array(
			'id' => '0111',
			'nombre' => 'Rosa pastel',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/rectangle.svg',
			'hexadec' => '#F526F7',
			'alt_atribute' => 'Este color es el chido si estas prieta y culera', 
		),
	),	
);	

$json_string = json_encode($vestidos, JSON_PRETTY_PRINT);

print $json_string;





 ?>

