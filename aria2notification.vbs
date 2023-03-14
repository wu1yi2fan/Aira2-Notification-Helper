' Enter Your Aria2 Download Path Here

Aria2DownloadPath = "YOUR PATH"


' Do Not Edit

do while fileExist("","stop") = false

if fileExist(Aria2DownloadPath,"aria2") then
	aria2Downloading = true
	do while aria2Downloading = true
		if fileExist(Aria2DownloadPath,"aria2") = false then
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

function fileExist(filespec,filetype)
        dim fso
        dim FileDir
        set fso = CreateObject("Scripting.FileSystemObject")
        fileExist = false
        select case filetype
			case "aria2"
				set FileDir = fso.GetFolder(filespec)
				for each item in FileDir.Files
					if lcase(right(item.name, 6)) = ".aria2" then
					fileExist = true
					exit for
					end if
				next
			case "stop"
				filespec = CreateObject("WScript.Shell").CurrentDirectory&"\"
				set FileDir = fso.GetFolder(filespec)
				for each item in FileDir.Files
					if lcase(left(item.name, 4)) = "stop" then
					fileExist = true
					exit for
					end if
				next
			case else
				Msgbox("Unknow Type")
		end select
end function
