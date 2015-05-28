VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   2550
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   3435
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2550
   ScaleWidth      =   3435
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Proses"
      Height          =   495
      Left            =   1920
      TabIndex        =   3
      Top             =   1800
      Width           =   1095
   End
   Begin VB.ListBox List1 
      Height          =   840
      Left            =   360
      TabIndex        =   2
      Top             =   840
      Width           =   2655
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1320
      TabIndex        =   1
      Top             =   360
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Jumlah"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
suku1 = 1
suku2 = 1
List1.AddItem suku1
List1.AddItem suku2
For i = 1 To Text1
    bil = suku1 + suku2
    List1.AddItem bil
    suku1 = suku2
    suku2 = bil
Next i
End Sub
