#############################################################################
#	Helpdesk Log															#
#																			#
#																			#
#	This module appends an iterated number, the date and time, and some set	#
#	 text to the end of a document, then moves the cursor to a specified 	#
#	 location																#
#																			#
#	(c) J. Ditzel															#
#		April 2017															#
#############################################################################
console.write(" Helpdesk Log\n This module appends an iterated number, \n the date and time, and some set text to the end of a document,\n then moves the cursor to a specified location.\n\n (c) J. Ditzel\n April 2017\n\n")


#imports
console.write("\n importing modules")
import time
console.write("\n   imported time module")
import re
console.write("\n   imported regex (re) module")
console.write("\n modules successfully imported\n")

#regex function to count number of occurances of "Name: "
def linenum():
	console.write("\n function 'linenum' called")
	regex = re.compile(r"User/ID: ")
	console.write("\n   regex compiled")
	match = regex.findall(editor.getText())
	console.write("\n   regex.findall (/global) performed on entire doc")
	console.write("\n   regex matches = " + str(len(match)))
	return len(match) + 1 #adds 1 for next line
	console.write("\n   function 'linenum' exiting\n\n")

#calls function and defines result as string
lineStr = ""
console.write("\n calling function 'linenum'")
lineStr = str(linenum()) + ")" + " " * 3
console.write("\n var lineStr defined successfully")

#sets text strings
tagStr = '\nUser/ID: \nTicket# \nDetails: '
dtStr = time.strftime( '%d-%b-%Y %Hh%M')

#checks for first line, if 1st then no newline
if editor.getLineCount() == 1:
	console.write("\n New Doc check. Doc is new.")
	dateStr = lineStr + dtStr + tagStr
else:
	console.write("\n New Doc check. Doc is old. Total line count = " + str(editor.getLineCount()))
	dateStr = '\n' + lineStr + dtStr + tagStr

#Append text to the end of the document
editor.appendText( dateStr )
console.write("\n Appended text to end of doc")

#place cursor after "  Name: "
endInt = editor.getLineCount() - 3
console.write("\n Line number of 'Name: ' is " + str(endInt + 1))
editor.gotoLine(endInt)
console.write("\n Cursor moved to start of line number " + str(endInt + 1))
PosInt = editor.getCurrentPos() + editor.lineLength(endInt) - 1
console.write("\n Final position is " + str(PosInt))
editor.gotoPos(PosInt)
console.write("\n\n Script finished successfully")
