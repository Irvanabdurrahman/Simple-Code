VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5715
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   5715
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "KELUAR"
      Height          =   615
      Left            =   2640
      TabIndex        =   4
      Top             =   2040
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   615
      Left            =   1080
      TabIndex        =   3
      Top             =   2040
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   2040
      TabIndex        =   1
      Top             =   240
      Width           =   2775
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Left            =   240
      TabIndex        =   2
      Top             =   1080
      Width           =   5175
   End
   Begin VB.Label Label1 
      Caption         =   "Masukkan Nama"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Label2.Caption = Text1.Text
End Sub

Private Sub Command2_Click()
End
End Sub

