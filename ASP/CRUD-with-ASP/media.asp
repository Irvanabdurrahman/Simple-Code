<!DOCTYPE html>
<html><!--#include file="config/connect.asp" -->
<head><title>Media</title>
</head>
<body>
	<%
	dim pilih
	pilih = Request.QueryString("pilih")
	if pilih="input" Then
		'response.write("TEST")
	%>
		<h2>&raquo; FORM INPUT DATA</h2><hr><br>
		<form action="aksi.asp?act=input" method="POST">
			<table>
				<tr><td>Nama</td><td> : </td><td><input type="text" name="nama" placeholder="Nama"></td></tr>
				<tr><td>Alamat</td><td> : </td><td><input type='text' placeholder="Alamat" name='alamat'></td></tr>
				<tr><td>No Telpon</td><td> : </td><td><input type='text' placeholder="No Telpon" name='notelpon'></td></tr>
				<tr><td>Keluarahan</td><td> : </td><td><input type='text' placeholder="Kelurahan" name='kelurahan'></td></tr>
				<tr><td>Kecamatan</td><td> : </td><td><input type='text' placeholder="Kecamatan" name='kecamatan'></td></tr>
				<tr><td colspan='2'><input type="submit" value="Save"><input type='button' value='Cancel' onClick=self.history.back()></td></tr>
			</table>
		</form>
	<%
		elseif pilih="edit" then
		'response.write("SECTION UNTUK EDIT")
	%>
		<h2>&raquo; FORM EDIT DATA</h2><hr><br>
		<form action="aksi.asp?act=edit" method="POST">
			<table>
				<tr><td>Nama</td><td> : </td><td><input type="text" name="nama"></td></tr>
				<tr><td>Alamat</td><td> : </td><td><input type='text' name='alamat'></td></tr>
				<tr><td>No Telpon</td><td> : </td><td><input type='text' name='notelpon'></td></tr>
				<tr><td>Keluarahan</td><td> : </td><td><input type='text' name='kelurahan'></td></tr>
				<tr><td>Kecamatan</td><td> : </td><td><input type='text' name='kecamatan'></td></tr>
				<tr><td colspan='2'><input type="submit" value="Save"><input type='button' value='Cancel' onClick=self.history.back()></td></tr>
			</table>
		</form>
<%	
end if
%>
</body>
</html>