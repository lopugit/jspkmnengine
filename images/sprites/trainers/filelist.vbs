TargetFolder = InputBox("Folder?")
fSave = "trainers.txt"
aCount = 001
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set jslistFile = objFSO.OpenTextFile(fSave, 2, true)
jslistFile.Write ""
Set jslistFile = Nothing

Set jslistFile = objFSO.OpenTextFile(fSave, 8)

Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.Namespace(TargetFolder) 
Set colItems = objFolder.Items
For i = 0 to colItems.Count - 1
	fName = colItems.Item(i).name
	if InStr(fName,".png") Then
	jslistFile.WriteLine("trainers[" & aCount & "] = " , ,fName)
	aCount + 1
	End If
Next

' Trainer Group || Gender || Male Graphic || Female Graphic || Male Names || Female Names || Both Gender Names|| Trainer Type || PokeMon
' trainers[000] = "0,m,fuz.gif,-,fuz,-,-, ,"	;		// fuz and customised sprites - Trainer identification is the array number!
