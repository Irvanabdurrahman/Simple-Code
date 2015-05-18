VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   4620
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   3960
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4620
   ScaleWidth      =   3960
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox List1 
      Height          =   3375
      Left            =   2040
      TabIndex        =   4
      Top             =   840
      Width           =   1575
   End
   Begin VB.CommandButton tombol 
      Caption         =   "Proses"
      Height          =   495
      Left            =   360
      TabIndex        =   3
      Top             =   1320
      Width           =   1095
   End
   Begin VB.TextBox bil1 
      Height          =   375
      Left            =   2040
      TabIndex        =   2
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "Hasil"
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   840
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Masukkan Nilai"
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub tombol_Click()
a = Val(bil1)
For z = 1 To a Step 1
List1.AddItem z
Next z
End Sub
