<?php
header('Content-Type: application/json'); 
$vestido  =  $page;
$coleccion = $page->parent();


		$colores=array();
		 	foreach($vestido->producto_color as $color){
		 		$colores[]=array(
		 			'id'=>$color->id,
		 			'title'=>$color->title,
		 			'color_hex'=>$color->option_color_hex
		 		);
		 	}

	$coleccion=array(
				'id'=>$coleccion->id,
				'title'=>$coleccion->title
			);
    $corte = array('id'=> $vestido->producto_corte->id,
						'title'=>$vestido->producto_corte->title);
    
    $caidas=array();
		 	foreach($vestido->producto_caida as $caida){
		 		$caidas[]=array('id'=>$caida->id,'title'=>$caida->title);
		 	}
    
    $mangas=array();
		 	foreach($vestido->producto_mangas as $manga){
		 		$mangas[]=array('id'=>$manga->id,'title'=>$manga->title);
		 	}

    $extras=array();
		 	foreach($vestido->producto_extras as $extra){
		 		$extras[]=array('id'=>$extra->id,'title'=>$extra->title);
		 	}

    $tallas=array();
		 	foreach($vestido->producto_talla as $talla){
		 		$tallas[]=array('id'=>$vestido->id,'title'=>$vestido->title);
		 	}


	$materiales=array();
		 	foreach($vestido->producto_materiales as $material){
		 		$materiales[]=array('id'=>$material->id,'title'=>$material->title);
		 	}

	$escote_image='';
			if($vestido->producto_escote->option_image!=null){
				$escote_image= $vestido->producto_escote->option_image->url;
			}
			$escote = array('id'=> $vestido->producto_escote->id,
						'title'=> $vestido->producto_escote->title,
						'icon'=>$escote_image);
	$image_frente = "";
	 if($vestido->producto_img_frente!=null){
		$image_frente= array('image_url'=>$vestido->producto_img_frente->url,
							'image_alt'=>$vestido->producto_img_frente->description);
	} 


	$image_atras = "";
	 if($vestido->producto_img_atras!=null){
		$image_atras= array('image_url'=>$vestido->producto_img_atras->url,
							'image_alt'=>$vestido->producto_img_atras->description);
	} 


	$imagenes = array('frente',array($image_frente),'atras',array($image_atras));


	$item =  array(
		"id"=>$vestido->id,
		"name"=>$vestido->name,
		"nombre"=>$vestido->title,
		"sku"=>$vestido->producto_sku,
		"coleccion"=>$coleccion,
		"corte"=>$corte,
		"color"=>$colores,
		"caidas"=>$caidas,
		"escote"=>$escote,
		"tallas"=>$tallas,
		"extras"=>$extras,
		"mangas"=>$mangas,
		"materiales"=>$materiales,
		"imagenes"=>$imagenes);


	 return json_encode($item, JSON_PRETTY_PRINT);
?>