<?php
header('Content-Type: application/json'); 
$vestidos  = \ProcessWire\wire('pages')->get($page->id)->children();

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
			

			$coleccion=array(
				'id'=>$page->id,
				'title'=>$page->title
			);



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
 
			 $items[]=array( 
							'id' => $item->id,
							'name' => $item->name,
							'nombre' => $item->title,
							'coleccion' => $coleccion,
							'material' => $materiales,
							'escote' => $escote,
							'corte' =>$corte,
							'tallas' => $tallas,
							'colores' => $colores,
						 );
		}
		print  json_encode($items, JSON_PRETTY_PRINT);
 

?>