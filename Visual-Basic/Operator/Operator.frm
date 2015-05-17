VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3705
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5205
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3705
   ScaleWidth      =   5205
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "Kali"
      Height          =   495
      Left            =   3240
      TabIndex        =   8
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Kurang"
      Height          =   495
      Left            =   1920
      TabIndex        =   7
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Tambah"
      Height          =   495
      Left            =   840
      TabIndex        =   6
      Top             =   2520
      Width           =   975
   End
   Begin VB.TextBox bil3 
      Height          =   375
      Left            =   2040
      TabIndex        =   5
      Top             =   1680
      Width           =   1575
   End
   Begin VB.TextBox bil2 
      Height          =   405
      Left            =   2040
      TabIndex        =   4
      Top             =   1080
      Width           =   1575
   End
   Begin VB.TextBox bil1 
      Height          =   375
      Left            =   2040
      TabIndex        =   3
      Top             =   600
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "Hasil"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Bilangan 2"
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Bilangan 1"
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
a = Val(bil1)
b = Val(bil2)
c = a + b
bil3 = c
End Sub

Private Sub Command2_Click()
a = Val(bil1)
b = Val(bil2)
c = a - b
bil3 = c
End Sub

Private Sub Command3_Click()
a = Val(bil1)
b = Val(bil2)
c = a * b
bil3 = c
End Sub
