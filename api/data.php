<?php

	header('Access-Control-Allow-Origin: *');
  	header('Content-Type: application/json');

	include_once '../config.php';

	$sql = "SELECT * FROM product";
	$query = mysqli_query($conn, $sql);


	while($data = mysqli_fetch_array($query)){
		$item[] = array(
			'Id'=>$data["id"],
			'Nama baju'=>$data["nama_baju"],
			'Size'=>$data["size"],
			'Stock'=>$data["stock"],
			'Price'=>$data["price"]
		); 
	}

	$response = array(
		'status' => 'OK',
		'data' => $item
	);
	echo json_encode($response);
	

?>
