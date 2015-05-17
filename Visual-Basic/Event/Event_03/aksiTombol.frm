VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "action button"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "CLOSE"
      Height          =   735
      Left            =   1200
      TabIndex        =   1
      Top             =   1200
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OPEN"
      Height          =   615
      Left            =   1200
      TabIndex        =   0
      Top             =   360
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Command1.Visible = False
Command2.Visible = True
End Sub

Private Sub Command2_Click()
Command2.Visible = False
Command1.Visible = True
End Sub
