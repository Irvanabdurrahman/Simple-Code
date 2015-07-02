<%
'Connection to database
Dim connStr
connStr = "Provider=SQLNCLI10;Data Source=10.83.34.117;UID=sa;PWD=123456;database=coba;"
set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open connStr
%>