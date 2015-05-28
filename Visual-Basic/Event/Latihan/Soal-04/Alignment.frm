VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3510
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4260
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3510
   ScaleWidth      =   4260
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Caption         =   "Alignment"
      Height          =   2175
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   3255
      Begin VB.OptionButton Option3 
         Caption         =   "Right"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   1320
         Width           =   1455
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Center"
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   840
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Left"
         Height          =   495
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000E&
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   2640
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Option1_Click()
Label1.Alignment = "0"
End Sub

Private Sub Option2_Click()
Label1.Alignment = "2"
End Sub

Private Sub Option3_Click()
Label1.Alignment = "1"
End Sub
