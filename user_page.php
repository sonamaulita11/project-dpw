<?php

@include 'config.php';

session_start();

if(!isset($_SESSION['user_name'])){
   header('location:login_form.php');
}

?>

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>customer page</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="style.css">

</head>
<body>
   
<div class="container">

   <div class="content">
      <h3>Halo, <span>Customer</span></h3>
      <h1>Selamat Datang <span><?php echo $_SESSION['user_name'] ?></span></h1>
      <p>Ini adalah halaman customer</p>
      <a href="index.php" class="btn">Beranda</a>
      <a href="logout.php" class="btn">Logout</a>
   </div>

</div>

</body>
</html>