var player = GetPlayer();
var BVar = player.GetVar("BlueSlide");
var GVar = player.GetVar("GreenSlide");
var RVar = player.GetVar("RedSlide");

var fso = new ActiveXObject("Scripting.FileSystemObject");
var s = fso.OpenTextFile("C:\\Test.txt", 8, true, 0);
s.WriteLine("Email: " + BVar);
s.Close();

document.bgColor = "#FF00FF";