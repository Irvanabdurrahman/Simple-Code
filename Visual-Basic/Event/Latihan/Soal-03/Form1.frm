VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3600
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3600
   ScaleWidth      =   4080
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   1695
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   3255
      Begin VB.OptionButton Option3 
         Caption         =   "Magenta"
         Height          =   315
         Left            =   360
         TabIndex        =   3
         Top             =   1080
         Width           =   1455
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Green"
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   720
         Width           =   1575
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Red"
         Height          =   195
         Left            =   360
         TabIndex        =   1
         Top             =   360
         Width           =   1695
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Option1_Click()
Form1.BackColor = vbRed
End Sub

Private Sub Option2_Click()
Form1.BackColor = vbGreen
End Sub

Private Sub Option3_Click()
Form1.BackColor = vbMagenta
End Sub
