<?php
include "config/koneksi.php";
$menu=$_REQUEST['menu'];

if($menu=='tambah'){
	echo "<form method='POST' action='aksi.php?act=tambah'><table>
				<tr><td>Nama</td><td> : </td><td><input type='text' placeholder='Nama' name='nama'></td></tr>
				<tr><td>Alamat</td><td> : </td><td><input type='text' placeholder='Alamat' name='alamat'></td></tr>
				<tr><td>Tanggal Lahir</td><td> : </td><td><input type='date' name='tgl'></td></tr>
				<tr><td  colspan='2'><input type='submit' value='OK'><input type='button' onclick=self.history.back() value='Batal'></td></tr>
			</table></form>";
}else if($menu=='edit'){
	echo "<form method='POST' action='aksi.php?act=edit'><table>";
		$editdata=mysql_query("SELECT * FROM daftar WHERE id='$_GET[id]'");
		$ed=mysql_fetch_array($editdata);
		echo "<tr><td><input type=hidden name=id value=$ed[id]>
				Nama</td><td> : </td><td><input type='text' name='nama' value='$ed[nama]'></td></tr>
				<tr><td>Alamat</td><td> : </td><td><input type='text' name='alamat' value='$ed[alamat]'></td></tr>
				<tr><td>Tanggal Lahir</td><td> : </td><td><input type='date' name='tgl' value='$ed[tgl]'></td></tr>
				<tr><td  colspan='2'><input type='submit' value='OK'><input type='button' onclick=self.history.back() value='Batal'></td></tr>
			</table></form>";

}
?>