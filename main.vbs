While true
	Set WshShell = CreateObject("WScript.Shell")
	WshShell.SendKeys(chr(&hAF))
	Dim oPlayer
	Set oPlayer = CreateObject("WMPlayer.OCX")
	oPlayer.URL = "main.mp3"
	oPlayer.controls.play 
	While oPlayer.playState <> 1 ' 1 = Stopped
		WScript.Sleep 100
	Wend
	
	oPlayer.close
Wend
