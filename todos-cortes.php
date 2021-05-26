<?php 

///get todos los cortes
header('Content-Type: application/json');

$corte = array(	
		array(
			'id' => '0001',
			'nombre' => 'Recto',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/vestido-recto.svg',
			'alt_atribute' => 'Si estas chaparra y gorda te conviene este corte', 
		),
		array(
			'id' => '0021',
			'nombre' => 'Imperio',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/vestido-imperio.svg',
			'alt_atribute' => 'Si estas chaparra y gorda te conviene este corte', 
		),
		array(
			'id' => '0331',
			'nombre' => 'Sirena',
			'icon' => 'https://xochimaco.com/b879e89b97f4/diana-di-giorno/img/vestido-sirena.svg',
			'alt_atribute' => 'Si estas chaparra y gorda te conviene este corte', 
		),

);



$json_string = json_encode($corte, JSON_PRETTY_PRINT);

print $json_string;





 ?>

