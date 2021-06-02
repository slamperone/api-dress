<?php 

$wire->addHookAfter('InputfieldPage::getSelectablePages', function($event) {
  if($event->object->hasField == 'producto_coleccion') {
 
 /*
  	$test = $event->arguments('page');
print "<pre>";
  	print_r($test);
   /* 	$stores =  \ProcessWire\wire('pages')->get(1121)->children();

print "<pre>";
$field = \ProcessWire\wire('fields')->get('producto_coleccion');
$all_options = \ProcessWire\wire('field')->type->getOptions($field);
 
print_r($all_options);

  	  foreach($stores as $store ){
   		if($store->id == ){

   		}
   }*/
   
    // $event->return = $event->pages->find('op_colecion');
  }
});

?>