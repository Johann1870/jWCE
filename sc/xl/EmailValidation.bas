Private Const FCheckRgAddress As String = "A1:A10"
Private Sub Worksheet_Change(ByVal Target As Range)
Application.EnableEvents = False
'Update 20140905
    Dim xChanged As Range
    Dim c As Range
    Dim xString As String
    Dim sErrors As String
    Dim xRegExp As Variant
    Dim xHasErr As Boolean
    xHasErr = 0
    Set xChanged = Application.Intersect(Range(FCheckRgAddress), Target)
    If xChanged Is Nothing Then Exit Sub
    Set xRegExp = CreateObject("VBScript.RegExp")
    xRegExp.Global = True
    xRegExp.IgnoreCase = True
    xRegExp.Pattern = "^([a-zA-Z0-9_\-\.]+)@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$"
    For Each c In xChanged
        xString = c.Value
        c.Value = LCase(xString)
        If Not (xRegExp.test(c.Value)) Then
            xHasErr = True

                c.ClearContents

        End If
        c.Hyperlinks.Delete
    Next c
    If xHasErr Then MsgBox "These cells had invalid entries and have been cleared:"
Application.EnableEvents = True
End Sub

