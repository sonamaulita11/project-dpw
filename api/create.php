<?php
	header('Access-Control-Allow-Origin: *');
  	header('Content-Type: application/json');

	include_once '../config.php';

	$id = isset($_POST["id"]) ? $_POST["id"] : "";
	$nama_baju = isset($_POST["nama_baju"]) ? $_POST["nama_baju"] : "";
	$size = isset($_POST["size"]) ? $_POST["size"] : "";
	$stock = isset($_POST["stock"]) ? $_POST["stock"] : "";
	$price = isset($_POST["price"]) ? $_POST["price"] : "";


	$sql = "INSERT INTO `product` (`id`, `nama_baju`, `size`, `stock`, `price`) VALUES ('$id', '$nama_baju', '$size', '$stock', '$price');";
	/*" INSERT INTO 'product' ('id', 'nama_baju', 'size', 'stock', 'price') VALUES ('".$id."', ".$nama_baju."', '".$size."', '".$stock."', '".$price."');";*/

	$query = mysqli_query($conn, $sql);
	if($query){
		$msg = "create";
	}else{
		$msg = "not create";
	}
	$response = array(
		'status'=>'OK',
		'msg'=>$msg
	);
	echo json_encode($response);


	/*parse_str(file_get_contents('php://input'), $value );
	$id = $value['id'];
	$nama_baju = $value['nama_baju'];
	$size = $value['size'];
	$stock = $value['stock'];
	$price = $value['price'];

	$query = " INSERT INTO 'product' ('id', 'nama_baju', 'size', 'stock', 'price') VALUES ('".$nama_baju."', '".$size."', '".$stock."', '".$price."');";
	$sql = mysqli_query($conn, $sql);
	if($sql){
		echo json_encode(array('message' => 'create!'));
	}*/
?>