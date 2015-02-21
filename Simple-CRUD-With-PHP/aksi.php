<?php
include "config/koneksi.php";

$act=$_REQUEST['act'];

	if($act=='tambah'){
		mysql_query("INSERT INTO daftar (nama,alamat,tgl)VALUES('$_REQUEST[nama]',
																'$_REQUEST[alamat]',
																'$_REQUEST[tgl]')");
		header('location:index.php');
		
	}else if($act=='edit'){
		mysql_query("UPDATE daftar SET nama='$_REQUEST[nama]',
										alamat='$_REQUEST[alamat]',
										tgl='$_REQUEST[tgl]'
									WHERE id='$_REQUEST[id]'");
		header('location:index.php');

	}else if($act=='hapus'){
		mysql_query("DELETE FROM daftar WHERE id = '$_REQUEST[id]'");
		header('location:index.php');
	}
?>