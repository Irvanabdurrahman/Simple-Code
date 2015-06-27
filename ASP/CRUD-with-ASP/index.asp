<!DOCTYPE html>
<html><!--#include file="config/connect.asp" -->
<head><title>Connection DB</title>
<script>
function myFunction(){
	alert("Hello");
}
</script>
</head>
<body>
<%
Set objRS = Server.CreateObject("ADODB.RecordSet")
Set objRS = objConn.Execute ("SELECT * FROM employee ORDER BY id DESC")
%>
<h2 style="align:center;color:green;">&raquo; TEST KONEKSI DATABASE PADA ASP</h2><p>
<table border='1' align='center' width='800'>
<a href="media.asp?pilih=input"><image src="images/add.png" title="Tambah" style="height:20px;margin-left:110px;"></a>
	<tr bgcolor="#CCFFCC">
		<th>NO</th>
		<th>Nama</th>
		<th>Alamat</th>
		<th>NO Telpon</th>
		<th>Kelurahan</th>
		<th>Kecamatan</th>
		<th>Aksi</th>
	</tr>
	<%
	dim no
	no=1
	do until objRS.EOF%>
	<tr>
		<td align='center'><%=no%></td>
		<td><%=objRS("nama")%></td>
		<td><%=objRS("alamat")%></td>
		<td><%=objRS("notelpon")%></td>
		<td><%=objRS("kelurahan")%></td>
		<td><%=objRS("kecamatan")%></td>
		<td align="center"><a href="media.asp?pilih=edit"><image src="images/update.png" title="Edit" style="height:20px;"></a> 
						| <a href="aksi.asp?act=hapus"><image src="images/delete.png" title="Hapus" style="height:20px;" onClick="myFunction()"></a>
		</td>
	</tr>
	<% 
		objRS.moveNext
		no=no+1
		loop
	%>
</table>
</body>
</html> 

