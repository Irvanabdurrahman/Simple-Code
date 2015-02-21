<?php

include "config/koneksi.php";

echo "<h2>&raquo; Data</h2>
		<table border='1'>
			<tr><th>No</th><th>Nama</th><th>Alamat</th><th>Tanggal Lahir</th><th>Aksi</th></tr>";
			$data=mysql_query("SELECT * FROM daftar ORDER BY id DESC");
			$no=1;
			while($dat=mysql_fetch_array($data)){
				echo "<tr><td>$no <input type=hidden name=id value=$dat[id]></td>
						<td>$dat[nama]</td>
						<td>$dat[alamat]</td>
						<td>$dat[tgl]</td>
						<td><a href=media.php?menu=edit&id=$dat[id]><img src='images/user_edit.png' title='edit'></a> | 
						<a href='aksi.php?act=hapus&id=$dat[id]'><img src='images/trash.png' title='hapus'></a> | 
						<a href=media.php?menu=tambah><img src='images/profile.gif' title='tambah'></a></td></tr>";
						$no++;
			}echo "</table>";

?>