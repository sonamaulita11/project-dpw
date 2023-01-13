<?php
/*header('location:login_form.php');*/
?>
<!DOCTYPE html>
<html lang ="en" dir="ltr">
<head>
	<meta charset="utf-8">
	<title>NOTIFIKASI</title>
	<link rel="stylesheet" href="popup.css">
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
	<div class="center">
		<input type="checkbox" id="click">
		<div class="content">
			<div class="header">
				<h2>SUKSES</h2>
				<label for="click" class="fas fa-times"></label>
			</div>
			<label for="click" class="fas fa-check"></label>
			<p>Registrasi anda sudah berhasil, silahkan lanjutkan ke halaman login</p>
			<div class="line"></div>
			<a href="login_form.php" class="close-btn">Close</a>
			<!--<label for="click" class="close-btn">Close</label>-->
		</div>
</body>
</html>