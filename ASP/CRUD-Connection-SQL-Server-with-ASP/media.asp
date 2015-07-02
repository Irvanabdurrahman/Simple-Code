<!DOCTYPE html>
<html><!--#include file="config/connect.asp" -->
<head><title>Media</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<%
	dim pilih
	pilih = Request.QueryString("pilih")
	if pilih="input" Then
	%>
		<blockquote>
			<p><h2>Form Input Data Employee</h2></p>
			<footer>Form input and save data to database.</footer>
		</blockquote>
		<form action="aksi.asp?act=input" method="POST" class="form-horizontal">
			<table width="350px" height="240px">
				<tr>
					<td><label class="col-sm-2 control-label">Nama</label></td>
					<td><input type="text" class="form-control" name="nama"  placeholder="Nama"></td>
				</tr>
				<tr>
					<td><label class="col-sm-2 control-label">Alamat</label></td>
					<td><input type="text" class="form-control" name="alamat"  placeholder="Alamat"></td>
				</tr>
				<tr>
					<td><label class="col-sm-2 control-label">NoTelpon</label></td>
					<td><input type="text" class="form-control" name="notelpon"  placeholder="No Telpon"></td>
				</tr>
				<tr>
					<td><label class="col-sm-2 control-label">Kelurahan</label></td>
					<td><input type="text" class="form-control" name="kelurahan"  placeholder="Kelurahan"></td>
				</tr>
				<tr>
					<td><label class="col-sm-2 control-label">Kecamatan</label></td>
					<td><input type="text" class="form-control" name="kecamatan"  placeholder="Kecamatan"></td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-success">Save</button>
					<button type="button" class="btn btn-info" onClick=self.history.back()>Cancel</button></td>
				</tr>
			</table>
		</form>	
	<%elseif pilih="edit" then%>
		<blockquote>
			<p><h2>Form Edit Data Employee</h2></p>
			<footer>Form Update Data Employee in Database</footer>
		</blockquote>
		<%
		dim id
		id = Request.QueryString("id")
		'Set uData = Server.CreateObject("ADODB.RecordSet")
		Set uData = objConn.Execute("SELECT * FROM employee where id = '" & id &"'")
		%>
		<form action="aksi.asp?act=edit" method="POST" class="form-horizontal">
			<table width="350px" height="240px">
			<%do until uData.EOF%>
				<input type="hidden" name="id" value=<%=uData("id")%>>
				<tr>
					<td><label class="col-sm-2 control-label">Nama</label></td>
					<td><input type="text" class="form-control" name='nama' value="<%=uData("nama")%>"></td>
				</tr>
				<tr>
					<td><label class="col-sm-2 control-label">Alamat</label></td>
					<td><input type='text' class="form-control" name='alamat' value="<%=uData("alamat")%>"></td>
				</tr>
				<tr>
					<td><label class="col-sm-2 control-label">NoTelpon</label></td>
					<td><input type='text' class="form-control" name='notelpon' value="<%=uData("notelpon")%>"></td>
				</tr>
				<tr>
					<td><label class="col-sm-2 control-label">Kelurahan</label></td>
					<td><input type='text' class="form-control" name='kelurahan' value="<%=uData("kelurahan")%>"></td>
				</tr>
				<tr>
					<td><label class="col-sm-2 control-label">Kecamatan</label></td>
					<td><input type='text' class="form-control" name='kecamatan' value="<%=uData("kecamatan")%>"></td>
				</tr>
				<tr><td colspan='2'><button type="submit" class="btn btn-success">Save</button>
				<button type="button" class="btn btn-info" onClick=self.history.back()>Cancel</button></td>
				</tr>
			<%
				uData.moveNext
				loop
			%>
			</table>
		</form>
	<%end if%>
	</div>
</body>
</html>