<?php
	include "koneksi.php";
	$id_counter = $_GET['counter'];
	$query = mysql_query("SELECT * FROM menu_makanan WHERE id_counter='".$id_counter."'");
	//$query2 = mysql_query("SELECT * FROM menu_makanan");
	$obj=array();
	$i = 0;
	while($data=mysql_fetch_array($query)){
		$obj['data'][$i]['id_menu']=$data['id_menu'];
		$obj['data'][$i]['nama']=$data['nama'];
		$obj['data'][$i]['harga']=$data['harga'];
		$obj['data'][$i]['deskripsi']=$data['deskripsi'];
		$obj['data'][$i]['estimasi']=$data['estimasi'];
		$obj['data'][$i]['gambar']=$data['link_gambar'];
		$i++;
	}
	echo json_encode($obj);
?>
