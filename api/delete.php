<?php
 include_once '../config.php';
 header('Content-Type: application.json');
 
 $sql = "DELETE FROM `product` WHERE `id`=".$id;
 
 if(mysqli_query($conn, $sql)){
    $response=array(
        'status' => 1,
        'status_message' => "DELETED";
    );
 }else{
    $response=array(
        'status' => 0,
        'status_message' => "FAILED";
    )
 }
 echo json_encode($response);
?>