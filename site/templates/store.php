<?php
header('Content-Type: application/json'); 
$colecciones  = $page->children('template=coleccion');
$items_vestidos=[];
$items_colecciones=[];
 
 if(count($colecciones)>0){
 	foreach ($colecciones as $coleccion) {
 		$items_colecciones[] =array(
 			'id'=>$coleccion->id,
 			'name'=>$coleccion->name,
 			'title'=>$coleccion->title,
 			'numProductos'=>$coleccion->numChildren
 		);

 		$vestidos = $coleccion->children();
        foreach($vestidos as $vestido){

         	$vestido_coleccion=array(
						'id'=>$coleccion->id,
						'title'=>$coleccion->title
					);
					
         foreach ($vestidos as $item) {


		 	$colores=array();
		 	foreach($item->producto_color as $color){
		 		$colores[]=array(
		 			'id'=>$color->id,
		 			'title'=>$color->title,
		 			'color_hex'=>$color->option_color_hex
		 		);
		 	}

  
			$tallas=array();
		 	foreach($item->producto_talla as $talla){
		 		$tallas[]=array('id'=>$talla->id,'title'=>$talla->title);
		 	}
			



			
			$corte = array('id'=> $item->producto_corte->id,
						'title'=> $item->producto_corte->title);

			$materiales=array();
		 	foreach($item->producto_materiales as $material){
		 		$materiales[]=array('id'=>$material->id,'title'=>$material->title);
		 	}

			$escote_image='';
			if($item->producto_escote->option_image!=null){
				$escote_image= $item->producto_escote->option_image->url;
			}
			$escote = array('id'=> $item->producto_escote->id,
						'title'=> $item->producto_escote->title,
						'icon'=>$escote_image);
 
				$items_vestidos[]=array( 
								'id' => $item->id,
								'nombre' => $item->title,
								'coleccion' => $vestido_coleccion,
								'material' => $materiales,
								'escote' => $escote,
								'corte' =>$corte,
								'tallas' => $tallas,
								'colores' => $colores,
							 );
			}
        }
 	}


$store_config =  array(
	'store_facebook'=>$page->store_facebook,
	'store_twitter'=>$page->store_twitter,
	'store_instagram'=>$page->store_instagram,
	'store_desc'=>$page->store_desc,
	'store_url'=>$page->store_url,
	'store_metatags'=>$page->store_metatags
);



$items_distribuidores  = $pages->find('template=distribuidor');
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
  		
 

$output_json = array('store_config'=>$store_config,
					 'store_vestidos'=>$items_vestidos,
					 'store_colecciones'=>$items_colecciones,
					 'store_distribuidores'=>$distribuidores
					 );
 print  json_encode($output_json, JSON_PRETTY_PRINT);

  	


 }
?>