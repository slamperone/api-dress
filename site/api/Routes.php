<?php
namespace ProcessWire;
		
require_once wire('config')->paths->AppApi . "vendor/autoload.php";
require_once wire('config')->paths->AppApi . "classes/AppApiHelper.php";

require_once __DIR__ . "/Vestidos.php";

$routes = [
	['GET', 'vestidos', Vestidos::class, 'all', ['auth' => false]],
	['GET', 'vestidos/nina-resends/', Vestidos::class, 'products', ['auth' => false]],
	['GET', 'vestidos/princesa', Vestidos::class, 'all_princesa', ['auth' => false]],
	['GET', 'vestidos/one/{id:\d+}', Vestidos::class, 'one', ['auth' => false]]

];