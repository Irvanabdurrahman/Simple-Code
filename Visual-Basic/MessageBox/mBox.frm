VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   4230
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5700
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4230
   ScaleWidth      =   5700
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Bersihkan"
      Height          =   495
      Left            =   2280
      TabIndex        =   10
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Proses"
      Height          =   495
      Left            =   840
      TabIndex        =   9
      Top             =   3240
      Width           =   1215
   End
   Begin VB.TextBox tTelp 
      Height          =   375
      Left            =   2400
      TabIndex        =   8
      Top             =   2520
      Width           =   2055
   End
   Begin VB.TextBox tHobi 
      Height          =   375
      Left            =   2400
      TabIndex        =   7
      Top             =   2040
      Width           =   2055
   End
   Begin VB.TextBox tAlamat 
      Height          =   375
      Left            =   2400
      TabIndex        =   6
      Top             =   1560
      Width           =   2055
   End
   Begin VB.TextBox tNama 
      Height          =   375
      Left            =   2400
      TabIndex        =   5
      Top             =   1080
      Width           =   2055
   End
   Begin VB.Label Label5 
      Caption         =   "Telephone"
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "Hobi"
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Alamat"
      Height          =   375
      Left            =   840
      TabIndex        =   2
      Top             =   1680
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Nama"
      Height          =   375
      Left            =   840
      TabIndex        =   1
      Top             =   1200
      Width           =   1095
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "FORM BIODATA"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   240
      Width           =   6735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
MsgBox "Nama anda " & tNama.Text & " alamat " & tAlamat.Text & " Hobi " & tHobi.Text & " Telphone " & tTelp.Text
End Sub

Private Sub Command2_Click()
tNama = ""
tAlamat = ""
tHobi = ""
tTelp = ""
End Sub
