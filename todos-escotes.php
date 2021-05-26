<?php 

///get todos los cortes
header('Content-Type: application/json');

$escote  = array(	

		array(
			'id' => '0111',
			'nombre' => 'Barco',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/escote-barco.svg',
			'alt_atribute' => 'Este es el mejor tipod escote para viejas chichonas alv', 
		),
		array(
			'id' => '032',
			'nombre' => 'En V',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/escote-v.svg',
			'alt_atribute' => 'Este es el mejor tipod escote para viejas chichonas alv', 
		),
		array(
			'id' => '0555',
			'nombre' => 'Halter',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/escote-halter.svg',
			'alt_atribute' => 'Este es el mejor tipod escote para viejas chichonas alv', 
		),	



);



$json_string = json_encode($escote, JSON_PRETTY_PRINT);

print $json_string;





 ?>

