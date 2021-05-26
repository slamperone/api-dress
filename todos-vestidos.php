<?php 

///diana-di-giorno/menu.json
///diana-di-giorno/vestidos.php?id=0&escote=2&color=5
header('Content-Type: application/json');

#se cancela todo

$json_string = json_encode($vista, JSON_PRETTY_PRINT);

print $json_string;





 ?>

