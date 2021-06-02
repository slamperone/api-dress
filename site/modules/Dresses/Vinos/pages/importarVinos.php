 
<?php 

$url_products =  'https://winetasteclub.com/tiendawtc/';
$consumer_key = 'ck_95499ba6c95b5793d2bf2d6ba0f8f05cfb678621';
$consumer_secret = 'cs_8c77acf1a891aeee532321038fef70f8b5d1a253';
$options = array(
	'ssl_verify'      => false,
);

try {

	$client = new WC_API_Client($url_products, $consumer_key, $consumer_secret, $options );
    $products_api =    $client->products->get( null,array( 'status' => 'publish','filter[limit]'=>'-1'));


$i=0;
foreach($products_api->products as $item){
	print $i.'-'.$item->title.'<br>';
	$i++;
}
   
 

} catch ( WC_API_Client_Exception $e ) {

	echo $e->getMessage() . PHP_EOL;
	echo $e->getCode() . PHP_EOL;

	if ( $e instanceof WC_API_Client_HTTP_Exception ) {

		print_r( $e->get_request() );
		print_r( $e->get_response() );
	}
}
 

?>
 