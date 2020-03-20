@ECHO OFF

if ["%~2"] == [""] (
	echo usage: mkshortcut [LnkName] [TargetPath]
)

powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%~dpn2.lnk');$s.TargetPath='%~f1';$s.WorkingDirectory='';$s.Save();"