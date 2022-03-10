'* Имя: Laba2.vbs

'* Язык: VBScript

'* Описание: лабораторная работа №2

'**********************************************************************************

Dim FSO,F,TextStream, s, d, Drives, cur, oFSO, oTStream
Const Hidden = 2, System = 4
do
WScript.StdOut.WriteLine "Menu"
WScript.StdOut.WriteLine "----------------------------"
WScript.StdOut.WriteLine "1. info about autor"
WScript.StdOut.WriteLine "2. Sozdanie file so spiskom skritih filov v ukazanom meste"
WScript.StdOut.WriteLine "3. Sohranenie v bloknote spiska diskov s znacheniem svobodnogo mesta"
WScript.StdOut.WriteLine "4. Exit"
WScript.StdOut.Write "Choose a task:"
s = WScript.StdIn.ReadLine
if (s="1") Then
WScript.StdOut.WriteLine "Demidenko Denis Vital'evich, ITP-11"
elseif (s="2") Then
sPath = inputbox("Zadayte put' k papke: ")
set oFSO = CreateObject("Scripting.FileSystemObject")
cur = oFSO.GetParentFolderName(WScript.ScriptFullName)
set oTStream = oFSO.CreateTextFile(cur & "\files.txt", true)
for each oFile in oFSO.GetFolder(sPath).Files
if (oFile.Attributes and (Hidden or System)) then oTStream.WriteLine oFile.Name
next
elseif (s="3") Then
set FSO = WScript.CreateObject("Scripting.FileSystemObject")
set Drives = FSO.Drives
set oFSO = CreateObject("Scripting.FileSystemObject")
cur = oFSO.GetParentFolderName(WScript.ScriptFullName)
set oTStream = oFSO.CreateTextFile(cur & "\files1.txt", true)
for each d in Drives
        oTStream.WriteLine d & d.FreeSpace/1024
next
oTStream.Close
End if
loop until (s="4")
'************* Конец *********************************************
