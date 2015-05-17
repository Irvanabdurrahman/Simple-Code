VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Menu"
   ClientHeight    =   6285
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9570
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   24
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   6285
   ScaleWidth      =   9570
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      Caption         =   "Minuman"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3495
      Left            =   4800
      TabIndex        =   1
      Top             =   360
      Width           =   4215
      Begin VB.OptionButton Option10 
         Caption         =   "Susu"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   11
         Top             =   2280
         Width           =   1575
      End
      Begin VB.OptionButton Option9 
         Caption         =   "Jus"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   10
         Top             =   1800
         Width           =   1335
      End
      Begin VB.OptionButton Option8 
         Caption         =   "Kopi"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   480
         TabIndex        =   9
         Top             =   1440
         Width           =   1815
      End
      Begin VB.OptionButton Option7 
         Caption         =   "ES Jeruk"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   8
         Top             =   840
         Width           =   1215
      End
      Begin VB.OptionButton Option6 
         Caption         =   "ES Teh"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   7
         Top             =   480
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Makanan"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3495
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   3855
      Begin VB.OptionButton Option5 
         Caption         =   "Pempek"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   360
         TabIndex        =   6
         Top             =   2280
         Width           =   1935
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Nasi Goreng"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   5
         Top             =   1920
         Width           =   1815
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Gado-Gado"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   4
         Top             =   1440
         Width           =   1695
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Rawon"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   3
         Top             =   960
         Width           =   1695
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Soto Ayam"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   360
         TabIndex        =   2
         Top             =   480
         Width           =   1935
      End
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Height          =   855
      Left            =   480
      TabIndex        =   13
      Top             =   5160
      Width           =   8535
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Height          =   855
      Left            =   480
      TabIndex        =   12
      Top             =   4080
      Width           =   8535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Option1_Click()
Label1.Caption = Option1.Caption
End Sub

Private Sub Option10_Click()
Label2.Caption = Option10.Caption
End Sub

Private Sub Option2_Click()
Label1.Caption = Option2.Caption
End Sub

Private Sub Option3_Click()
Label1.Caption = Option3.Caption
End Sub

Private Sub Option4_Click()
Label1.Caption = Option4.Caption
End Sub

Private Sub Option5_Click()
Label1.Caption = Option5.Caption
End Sub

Private Sub Option6_Click()
Label2.Caption = Option6.Caption
End Sub

Private Sub Option7_Click()
Label2.Caption = Option7.Caption
End Sub

Private Sub Option8_Click()
Label2.Caption = Option8.Caption
End Sub

Private Sub Option9_Click()
Label2.Caption = Option9.Caption
End Sub
