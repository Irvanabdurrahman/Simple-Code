VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   2835
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5100
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2835
   ScaleWidth      =   5100
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "KELUAR"
      Height          =   615
      Left            =   2040
      TabIndex        =   5
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CEK"
      Height          =   615
      Left            =   600
      TabIndex        =   4
      Top             =   1800
      Width           =   1215
   End
   Begin VB.TextBox hasil 
      Height          =   375
      Left            =   2160
      TabIndex        =   3
      Top             =   1080
      Width           =   1815
   End
   Begin VB.TextBox bil1 
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   480
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "Keterangan"
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Bilangan"
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   480
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
a = Val(bil1)
If a Mod 2 = 0 Then
    ket = "Genap"
Else
    ket = "Ganjil"
End If
hasil = ket
End Sub

Private Sub Command2_Click()
End
End Sub

