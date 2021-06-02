<?php
header('Content-Type: application/json'); 
$items_distribuidores  = $page->children();
$distribuidores=[];
  		
if(count($items_distribuidores)>0){
	foreach ($items_distribuidores as $item) {
  			 $distribuidores[]=array( 
							'id' => $item->id,
							'name' => $item->name,
							'nombre' => $item->title,
							'email' => $item->dist_email,
							'telefono' =>  $item->dist_phone,
							'telefono1' =>  $item->dist_phone_1,
							'contacto' => $item->dist_contacto,
							'sucursal' =>  $item->dist_sucursal,
							'whatsapp' =>  $item->dist_whatsapp,
							'estado' =>  $item->dist_estado,
							'ciudad' =>  $item->dist_ciudad,
							'clasificacion' =>  $item->dist_clasificacion,
						 );
		}
}
  		

 print  json_encode($distribuidores, JSON_PRETTY_PRINT);
 

?>