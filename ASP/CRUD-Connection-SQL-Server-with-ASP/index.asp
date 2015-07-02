<!DOCTYPE html>
<html lang="en"><!--#include file="config/connect.asp" -->
<head><title>Connection DB</title>
<!--Popup for delete record-->
<!--<script type="text/javascript">
function myFunction(){
	if(confirm("Are you sure to delete this record?"))
		location.href='aksi.asp?act=hapus&id=';
}
</script>-->
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container">
<%
'Set objRS = Server.CreateObject("ADODB.RecordSet")
Set objRS = objConn.Execute ("SELECT * FROM employee ORDER BY id DESC")
%>

<blockquote>
	<p><h1>Data Employee</h1></p>
	<footer>CRUD and Test Connection with ASP to Database SQL Server</footer>
</blockquote>
<table class="table table-hover">
<a href="media.asp?pilih=input"><image src="images/add.png" title="Tambah" style="height:70px;"></a>
	<tr class="warning">
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
		<td align='center'><%=no%><input type="hidden" name="id" value=<%=objRS("id")%>>
		</td>
		<td><%=objRS("nama")%></td>
		<td><%=objRS("alamat")%></td>
		<td><%=objRS("notelpon")%></td>
		<td><%=objRS("kelurahan")%></td>
		<td><%=objRS("kecamatan")%></td>
		<td><a href="media.asp?pilih=edit&id=<%=objRS("id")%>"><image src="images/update.png" title="Edit" style="height:20px;"></a> 
						| <a href="aksi.asp?act=hapus&id=<%=objRS("id")%>"><image src="images/delete.png" title="Hapus" style="height:20px;"> <!--onClick="myFunction();"--></a>
		</td>
	</tr>
	<% 
		objRS.moveNext
		no=no+1
		loop
	%>
</table>
</div>
</body>
</html> 

