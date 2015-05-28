VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3255
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7590
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3255
   ScaleWidth      =   7590
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "HITUNG"
      Height          =   495
      Left            =   5880
      TabIndex        =   12
      Top             =   2520
      Width           =   1455
   End
   Begin VB.TextBox Text7 
      Alignment       =   1  'Right Justify
      Height          =   375
      Left            =   3720
      TabIndex        =   11
      Top             =   2040
      Width           =   3615
   End
   Begin VB.TextBox Text6 
      Alignment       =   1  'Right Justify
      Height          =   375
      Left            =   3720
      TabIndex        =   10
      Top             =   1200
      Width           =   3615
   End
   Begin VB.TextBox Text5 
      Alignment       =   1  'Right Justify
      Height          =   375
      Left            =   3720
      TabIndex        =   9
      Top             =   720
      Width           =   3615
   End
   Begin VB.TextBox Text4 
      Alignment       =   1  'Right Justify
      Height          =   375
      Left            =   3720
      TabIndex        =   8
      Top             =   240
      Width           =   3615
   End
   Begin VB.TextBox Text3 
      Alignment       =   1  'Right Justify
      Height          =   375
      Left            =   1800
      TabIndex        =   6
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Alignment       =   1  'Right Justify
      Height          =   375
      Left            =   1800
      TabIndex        =   5
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Alignment       =   1  'Right Justify
      Height          =   375
      Left            =   1800
      TabIndex        =   4
      Top             =   240
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   3720
      X2              =   7320
      Y1              =   1800
      Y2              =   1800
   End
   Begin VB.Label Label5 
      Caption         =   "JUMLAH"
      Height          =   375
      Left            =   2880
      TabIndex        =   7
      Top             =   840
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "JUMLAH PEMBELIAN"
      Height          =   375
      Left            =   1920
      TabIndex        =   3
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "Jumlah Printer      ="
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Jumlah Monitor     = "
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Jumlah Komputer  ="
      Height          =   255
      Left            =   240
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
Private Sub Command1_Click()
a = Val(Text1)
b = Val(Text2)
c = Val(Text3)

Text4 = a * 4000000
Text5 = b * 750000
Text6 = c * 550000

x = Val(Text4)
y = Val(Text5)
z = Val(Text6)

q = x + y + z
Text7 = q
End Sub

Private Sub Form_Load()

End Sub
