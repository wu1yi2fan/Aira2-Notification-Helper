' Enter Your Aria2 Download Path Here

Aria2DownloadPath = "YOUR PATH"


' Do Not Edit

do while stopNoti = false

if isDownloading(Aria2DownloadPath) then
	aria2Downloading = true
	do while aria2Downloading = true
		if isDownloading(Aria2DownloadPath) = false then
		aria2Downloading = false
		wscript.createobject("wscript.shell").run "powershell -executionpolicy bypass -file download_notification.ps1",0,true
		else

		end if	
		wscript.sleep 5000
	loop
	
end if
set fso = nothing
set FileDir = nothing	
wscript.sleep 5000

loop

function isDownloading(filespec)
        dim fso
        dim FileDir
        set fso = CreateObject("Scripting.FileSystemObject")
        set FileDir = fso.GetFolder(filespec)
        isDownloading = false
        for each item in FileDir.Files
			if lcase(right(item.name, 6)) = ".aria2" then
			isDownloading = true
			exit for
			end if
		next
end function  

function stopNoti()
        dim fso
        set fso = CreateObject("Scripting.FileSystemObject")
        filespec = CreateObject("WScript.Shell").CurrentDirectory&"\stop"
        if fso.fileExists(filespec) then         
			stopNoti = true        
        else 
			stopNoti = false        
        end if
end function  

