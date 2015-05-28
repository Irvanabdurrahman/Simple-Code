VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3330
   ClientLeft      =   150
   ClientTop       =   480
   ClientWidth     =   5550
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3330
   ScaleWidth      =   5550
   StartUpPosition =   2  'CenterScreen
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuNew 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuOpen 
         Caption         =   "&Open"
      End
      Begin VB.Menu menuFileBar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuSave 
         Caption         =   "&Save"
      End
      Begin VB.Menu mnuSaveAs 
         Caption         =   "Save &As.."
      End
      Begin VB.Menu mnuFileBar2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPrint 
         Caption         =   "&Print"
         Shortcut        =   ^P
      End
      Begin VB.Menu mnuFileBar3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuAbout 
         Caption         =   "&About"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuAbout_Click()
    MsgBox "Menu Demo" & vbCrLf _
    & "Copyright " & Chr$(169) & " 2015 Irvan Abdurrahman", , "About"
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub mnuNew_Click()
    MsgBox "Code for 'New' in Here", vbInformation, "Menu Demo"
End Sub

Private Sub mnuOpen_Click()
    MsgBox "Code for 'Open' in Here", vbInformation, "Menu Demo"
End Sub

Private Sub mnuPrint_Click()
    MsgBox "Code for 'Print' in Here", vbInformation, "Menu Demo"
End Sub

Private Sub mnuSave_Click()
    MsgBox "Code for 'Save' in Here", vbInformation, "Menu Demo"
End Sub

Private Sub mnuSaveAs_Click()
    MsgBox "Code for 'Save As' in Here", vbInformation, "Menu Demo"
End Sub
