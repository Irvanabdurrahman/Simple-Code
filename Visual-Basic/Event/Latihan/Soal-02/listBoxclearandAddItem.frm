VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   5205
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4035
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5205
   ScaleWidth      =   4035
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox List1 
      Height          =   2595
      ItemData        =   "listBoxclearandAddItem.frx":0000
      Left            =   360
      List            =   "listBoxclearandAddItem.frx":0002
      TabIndex        =   2
      Top             =   2280
      Width           =   3255
   End
   Begin VB.Frame Frame1 
      Caption         =   "Judul Film"
      Height          =   1815
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   3255
      Begin VB.OptionButton Option3 
         Caption         =   "Horor"
         Height          =   255
         Left            =   360
         TabIndex        =   4
         Top             =   1320
         Width           =   1815
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Cartoon"
         Height          =   255
         Left            =   360
         TabIndex        =   3
         Top             =   840
         Width           =   1455
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Action"
         Height          =   375
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
Private Sub List1_Click()
List1.Clear
End Sub

Private Sub Option1_Click()
List1.AddItem "Fast and Fuorius 7"
List1.AddItem "Mission Imposible"
List1.AddItem "James Bond - Spectre"
End Sub

Private Sub Option2_Click()
List1.AddItem "Big Hero 6"
List1.AddItem "Madagascar"
List1.AddItem "Ice Age"
End Sub

Private Sub Option3_Click()
List1.AddItem "Annabele"
List1.AddItem "Conjuring"
List1.AddItem "Drag Me To Hell"
End Sub
