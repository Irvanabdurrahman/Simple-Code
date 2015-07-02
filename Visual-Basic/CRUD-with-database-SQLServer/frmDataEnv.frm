VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frmDataEnv 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   4290
   ClientLeft      =   -15
   ClientTop       =   270
   ClientWidth     =   6660
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4290
   ScaleWidth      =   6660
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command5 
      Caption         =   "Exit"
      Height          =   495
      Left            =   2280
      TabIndex        =   9
      Top             =   3360
      Width           =   1335
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   1575
      Left            =   720
      TabIndex        =   8
      Top             =   1560
      Width           =   4935
      _ExtentX        =   8705
      _ExtentY        =   2778
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Delete"
      Height          =   375
      Left            =   4560
      TabIndex        =   7
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Clear"
      Height          =   375
      Left            =   3360
      TabIndex        =   6
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Update"
      Height          =   375
      Left            =   4560
      TabIndex        =   5
      Top             =   360
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ADD"
      Height          =   375
      Left            =   3360
      TabIndex        =   4
      Top             =   360
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "NAMA"
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   960
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "NIM"
      Height          =   375
      Left            =   720
      TabIndex        =   0
      Top             =   480
      Width           =   735
   End
End
Attribute VB_Name = "frmDataEnv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim db As Connection
Dim rs As Recordset

Sub koneksi()
    Set db = New Connection
        db.CursorLocation = adUseClient
        db.Open "Provider=SQLNCLI10;Data Source=10.83.34.117;UID=sa;PWD=123456;database=coba;"
End Sub


Private Sub Command1_Click()
    db.Execute "INSERT INTO basic(nim, nama)VALUES('" & Text1.Text & "','" & Text2.Text & "')"
    MsgBox "Data Telah Tersimpan"
    
    Text1.Text = ""
    Text2.Text = ""
    Text1.SetFocus
    
    koneksi
    Set rs = New Recordset
    rs.Open "basic", db, adOpenDynamic, adLockOptimistic
    Set DataGrid1.DataSource = rs
    DataGrid1.Refresh
End Sub

Private Sub Command2_Click()
    cari = Text1.Text
    cari2 = Text2.Text
    
    db.Execute "UPDATE basic SET nama = '" & Text2.Text & "' WHERE nim='" & cari & "'"
    db.Execute "UPDATE basic SET nim='" & Text1.Text & "' WHERE nama = '" & cari2 & "'"
    MsgBox "Data Telah Diupdate"
    
    Text1.Text = ""
    Text2.Text = ""
    
    koneksi
    Set rs = New Recordset
    rs.Open "basic", db, adOpenDynamic, adLockOptimistic
    Set DataGrid1.DataSource = rs
    DataGrid1.Refresh
End Sub

Private Sub Command3_Click()
    Text1.Text = ""
    Text2.Text = ""
    Text1.SetFocus
End Sub

Private Sub Command4_Click()
    cari = Text1.Text
    db.Execute "DELETE FROM basic Where nim='" & cari & "'"
    MsgBox "Data Telah Dihapus"
    
    koneksi
    Set rs = New Recordset
    rs.Open "basic", db, adOpenDynamic, adLockOptimistic
    Set DataGrid1.DataSource = rs
    DataGrid1.Refresh
End Sub

Private Sub Command5_Click()
End
End Sub

Private Sub DataGrid1_Click()
 If DataGrid1.Row > -1 Then
        Text1.Text = DataGrid1.Columns(0)
        Text2.Text = DataGrid1.Columns(1)
    End If
End Sub

Private Sub Form_Load()
 koneksi
    Set rs = New Recordset
    rs.Open "basic", db, adOpenDynamic, adLockOptimistic
    Set DataGrid1.DataSource = rs
    DataGrid1.Refresh
End Sub
