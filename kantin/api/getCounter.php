<?php
	include "koneksi.php";
	$obj = array();
	$query=mysql_query("SELECT * FROM counter ORDER BY id_counter ASC");
	$i=0;
	while($data=mysql_fetch_array($query)){
		$obj['data'][$i]['id']=$data['id_counter'];
		$obj['data'][$i]['nama']=$data['nama_counter'];
		$i++;
	}
	echo json_encode($obj);
?>
