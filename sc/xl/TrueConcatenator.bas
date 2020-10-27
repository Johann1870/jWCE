Attribute VB_Name = "TrueConcatenator"
Public Function TrueConcat(rngA As Range, Optional del As String) As String

    For Each c In rngA
        If TrueConcat = "" Then
            TrueConcat = c.Value
        Else
            TrueConcat = TrueConcat & del & c.Value
        End If
    Next

End Function
