VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3945
   ClientLeft      =   45
   ClientTop       =   675
   ClientWidth     =   5520
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3945
   ScaleWidth      =   5520
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   495
      Left            =   2760
      TabIndex        =   2
      Top             =   1560
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Test"
      Height          =   495
      Index           =   0
      Left            =   1440
      TabIndex        =   1
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Link to Another Form"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   720
      Width           =   5415
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuNew 
         Caption         =   "&New"
      End
      Begin VB.Menu mnuSave 
         Caption         =   "&Save"
      End
      Begin VB.Menu menuFileBar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "&Exit"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click(Index As Integer)
Form2.Show
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub mnuExit_Click()
End
End Sub

Private Sub mnuNew_Click()
Form2.Show
End Sub
