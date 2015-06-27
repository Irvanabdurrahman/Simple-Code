<!DOCTYPE html>
<html><!--#include file="config/connect.asp" -->
<head><title>Aksi</title></head>
<body>
<%
dim act
act = Request.QueryString("act")
if act="input" then
	Set input = Server.CreateObject("ADODB.RecordSet")
	Set input = objConn.Execute("INSERT INTO employee(nama," &_
													"alamat," &_
													"notelpon," &_
													"kelurahan," &_
													"kecamatan)" &_
										"VALUES('" & Request.Form("nama")& "'," &_
												"'" & Request.Form("alamat")& "'," &_
												"'" & Request.Form("notelpon")& "'," &_
												"'" & Request.Form("kelurahan")& "'," &_
												"'" & Request.Form("kecamatan")& "')")
	Response.Redirect("index.asp")
elseif act="edit" then
	response.write("EDIT TABLE DI DATABASE")
elseif act="hapus" then
	response.write("HAPUS RECORD")
end if
%>
</body>
</html>