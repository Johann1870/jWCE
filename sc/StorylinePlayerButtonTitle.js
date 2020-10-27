//J. Ditzel
// (c) Jan 2018

//This will rename the text on the player buttons. Make sure to reset this text
// if you don't want it persisting through the whole module. The player does not
// refresh the player settings unless forced to

//define button text span (DO NOT USE BUTTONS HERE)
//jquery buttons have text defined in separate spans
//we use the Reactid to identify the correct span
var NextButton = $('span.text[data-reactid=".0.0.3.2.1.5.0.2.0"]');
var PrevButton = $('span.text[data-reactid=".0.0.3.2.1.5.0.1.1"]');

//define text strings
//this should really be defined by the language pack but I'm feeling lazy
var BackText = "BACK";
var ExitText = "EXIT";
var NextText = "NEXT";
var BeginText = "BEGIN";

//Set the Back button text to Exit
$(PrevButton).text(ExitText);


//set the Next button text to Begin
$(NextButton).text(BeginText);
