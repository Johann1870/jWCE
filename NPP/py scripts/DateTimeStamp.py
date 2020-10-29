import time
import datetime
dtStr = time.strftime( '%Y-%m-%d, %a, %H:%M:%S')
jStr = time.strftime( '%Y-%j')
wyStr = str(datetime.datetime.today().date().isocalendar()[0])
wnStr = str(datetime.datetime.today().date().isocalendar()[1])
wdStr = str(datetime.datetime.today().date().isocalendar()[2])
weekStr = wyStr + 'W' + wnStr + wdStr
console.write('\n' + dtStr)
console.write('\n' + weekStr)


"""
# importing pandas as pd 
import pandas as pd 
  
# Create the Timestamp object 
ts = pd.Timestamp(year = 2011,  month = 11, day = 21,  
                  hour = 10, second = 49, tz = 'US/Central')  
  
# Print the Timestamp object 
print(ts) 

"""


#checks for first line, if 1st then no newline
if editor.getLineCount() == 1:
	console.write("\n New Doc check. Doc is new.")
	dateStr = '#### ' + dtStr + ', ' + jStr + ', ' + weekStr + '\n'
else:
	console.write("\n New Doc check. Doc is old. Total line count = " + str(editor.getLineCount()))
	dateStr = '\n' + '#### ' + dtStr + ', ' + jStr + ', ' + weekStr + '\n'
	
#Append text to the end of the document
editor.appendText( dateStr )
console.write("\n Appended text to end of doc")


#place cursor after "  Name: "
endInt = editor.getLineCount() - 0
console.write("\n Line number of 'Name: ' is " + str(endInt + 1))
editor.gotoLine(endInt)
console.write("\n Cursor moved to start of line number " + str(endInt + 1))
PosInt = editor.getCurrentPos() + editor.lineLength(endInt) - 0
console.write("\n Final position is " + str(PosInt))
editor.gotoPos(PosInt)
console.write("\n\n Script finished successfully")
