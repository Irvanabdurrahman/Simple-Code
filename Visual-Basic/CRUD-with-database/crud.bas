Attribute VB_Name = "Module1"
Public Conn As New ADODB.Connection

Public Sub koneksi()
On Error GoTo konekErr

If Conn.State = 1 Then Conn.Close

Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + App.Path + "\test.mdb';Persist Security Info=False"
Exit Sub

konekErr:
    MsgBox "Gagal Menghubungkan ke Database! Kesalahan Pada : " & Err.Description, vbCritical, "Peringatan"
End Sub
