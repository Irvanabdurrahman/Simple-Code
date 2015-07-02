Attribute VB_Name = "Module1"
Public Conn As New ADODB.Connection
Public Sub koneksi()
On Error GoTo konekErr

If Conn.State = 1 Then Conn.Close
Conn.Open "Provider=SQLNCLI10;Data Source=10.83.34.117;UID=sa;PWD=123456;database=coba;"
Exit Sub

konekErr:
    MsgBox "Gagal Menghubungkan ke Database! Kesalahan Pada : " & Err.Description, vbCritical, "Peringatan"
End Sub
