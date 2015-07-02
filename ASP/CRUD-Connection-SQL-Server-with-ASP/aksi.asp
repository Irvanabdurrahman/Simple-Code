<!DOCTYPE html>
<html><!--#include file="config/connect.asp" -->
<head><title>Aksi</title></head>
<body>
<%
dim act
act = Request.QueryString("act")
if act="input" then
	'Set input = Server.CreateObject("ADODB.RecordSet")
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
	'Set update = Server.CreateObject("ADODB.RecordSet")
	Set update = objConn.Execute("UPDATE employee SET nama='" & Request.Form("nama") & "'," &_
														"alamat='" & Request.Form("alamat") & "'," &_
														"notelpon='" & Request.Form("notelpon") & "'," &_
														"kelurahan='" & Request.Form("kelurahan") & "'," &_
														"kecamatan='" & Request.Form("kecamatan") & "'" &_
													"WHERE id='" & Request.Form("id")& "'")
	Response.Redirect("index.asp")
elseif act="hapus" then
	dim id
	id=Request.QueryString("id")
	Set delete = objConn.Execute("DELETE FROM employee WHERE id='"& id &"'")
	Response.Redirect("index.asp")
end if
%>
</body>
</html>