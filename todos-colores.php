<?php 

///get todos los cortes
header('Content-Type: application/json');

$color  = array(	

		array(
			'id' => '0111',
			'nombre' => 'Ivory',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/rectangle.svg',
			'hexadec' => '#F67C39',
			'alt_atribute' => 'Este color es el chido si estas prieta y culera', 
		),
		array(
			'id' => '0111',
			'nombre' => 'Esmeralda',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/rectangle.svg',
			'hexadec' => '#2CFF3E',
			'alt_atribute' => 'Este color es el chido si estas prieta y culera', 
		),
		array(
			'id' => '0111',
			'nombre' => 'Rosa pastel',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/rectangle.svg',
			'hexadec' => '#F526F7',
			'alt_atribute' => 'Este color es el chido si estas prieta y culera', 
		),		


);



$json_string = json_encode($color, JSON_PRETTY_PRINT);

print $json_string;





 ?>

