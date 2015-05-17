VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Test Property"
   ClientHeight    =   3030
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   9870
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3030
   ScaleWidth      =   9870
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Caption         =   "Pilihan Property"
      Height          =   2535
      Left            =   5880
      TabIndex        =   5
      Top             =   240
      Width           =   3495
      Begin VB.CheckBox Check2 
         Caption         =   "Tebal"
         Height          =   375
         Left            =   480
         TabIndex        =   9
         Top             =   1800
         Width           =   1095
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Miring"
         Height          =   255
         Left            =   480
         TabIndex        =   8
         Top             =   1440
         Width           =   1095
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Biru"
         Height          =   255
         Left            =   480
         TabIndex        =   7
         Top             =   840
         Width           =   975
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Merah"
         Height          =   195
         Left            =   480
         TabIndex        =   6
         Top             =   480
         Width           =   855
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "KELUAR"
      Height          =   495
      Left            =   2400
      TabIndex        =   4
      Top             =   2280
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   495
      Left            =   840
      TabIndex        =   3
      Top             =   2280
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   2160
      TabIndex        =   2
      Top             =   240
      Width           =   3135
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   240
      TabIndex        =   1
      Top             =   840
      Width           =   5175
   End
   Begin VB.Label Label1 
      Caption         =   "Masukkan Nama"
      Height          =   245
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
Label2.FontItalic = Check1.Value
End Sub

Private Sub Check2_Click()
Label2.FontBold = Check2.Value
End Sub

Private Sub Command1_Click()
Label2.Caption = Text1.Text
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Option1_Click()
Label2.ForeColor = vbRed
End Sub

Private Sub Option2_Click()
Label2.ForeColor = vbBlue
End Sub
