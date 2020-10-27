Attribute VB_Name = "CleanMoodleLikert"
Sub CleanLikert()


' J. Ditzel
' July 2018
' This cleans a Likert response returned by Moodle
' Moodle does not report a clean Likert response and replaces certain
'     punctuation, line breaks, and spaces with underscores
'     This is and attempt to return clean data from this in usable columns.

Dim cleanstring As String
Dim rngPull As Range

' select pull range
Set rngPull = Application.InputBox("Select the range", _
"Select the Likert Range", Type:=8)

' cleans the data
For Each c In rngPull
    cleanstring = c.Value
    
    ' replace 4 and 3 underscores with new line
    cleanstring = Replace(cleanstring, "____", Chr(10))
    cleanstring = Replace(cleanstring, "___", Chr(10))
    
    ' attempts to fix punctuation
    cleanstring = Replace(cleanstring, "__", ", ")
    
    ' attempts to fix possessives
    cleanstring = Replace(cleanstring, "_s_", "'s ")
    
    ' adds spaces back for everything else
    cleanstring = Replace(cleanstring, "_", " ")
    
    ' puts the cleaned text in the next column over
    c.Offset(0, 1).Value = cleanstring
    
    'splits the text to separate columns
    c.Offset(0, 1).TextToColumns _
        Destination:=c.Offset(0, 1), _
        DataType:=xlDelimited, _
        TextQualifier:=xlDoubleQuote, _
        ConsecutiveDelimiter:=False, _
        Tab:=True, _
        Semicolon:=False, _
        Comma:=False, _
        Space:=False, _
        Other:=True, _
        OtherChar:="" & Chr(10) & "" ' sets the delimiting character

Next c
End Sub
