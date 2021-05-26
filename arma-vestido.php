<?php 

header('Content-Type: application/json');

#se cancela todo

$json_string = json_encode($vista, JSON_PRETTY_PRINT);

print $json_string;





 ?>

