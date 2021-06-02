<?php 
 
$vestidos  = wire('pages')->find('template=producto_vestido, producto_activo=1');

 

		foreach ($vestidos as $item) {

		 	$colores=array();
		 	foreach($item->producto_color as $color){
		 		$colores[]=array('id'=>$color->id,'title'=>$color->title);
		 	}

 

			$tallas=array();
		 	foreach($item->producto_talla as $talla){
		 		$tallas[]=array('id'=>$talla->id,'title'=>$talla->title);
		 	}
			

			$coleccion=array(
				'id'=>$item->producto_coleccion->id,
				'title'=>$item->producto_coleccion->title
			);
 
			 $items[]=array( 
							'id' => $item->id,
							'nombre' => $item->title,
							'coleccion' => $coleccion,
							'material' => $item->producto_material,
							'escote' => $item->producto_escote,
							'corte' => $item->producto_corte,
							'tallas' => $tallas,
							'colores' => $colores,
						 );
		}
		print  json_encode($items );
