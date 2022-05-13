local $winClass = "[CLASS:" & $cmdLine[1] & "]"
local $winPos = WinGetPos($winClass)
local $shakeAmount = 50

For $i = 0 To 100
	local $m = Mod($i, 2)
	local $r = Random(0, $shakeAmount)
	WinMove($winClass, "", $winPos[0] + $shakeAmount * $m + $r, $winPos[1])
	Sleep(50 + $r)
Next
WinMove($winClass, "", $winPos[0], $winPos[1])
