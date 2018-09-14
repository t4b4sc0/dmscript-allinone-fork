// $BACKGROUND$ 

number _ModelessDialog(string prompt, string buttonName)
{
	number sem = NewSemaphore()
	ModelessDialog(prompt, buttonName, sem)
	try GrabSemaphore(sem)
	catch return 0
	return 1
}




/* SHORT DEMO */
// Note: It is important that you use the line: // $BACKGROUND$ 
// on top of your script, or the Modeless Dialog causes program crashes


result("\n Start of script")
If (!_ModelessDialog("Program halted, continue?","Yes")) Throw("Error within Modeless Dialog")
result("\n Script continued")