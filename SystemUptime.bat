@REM http://stackoverflow.com/questions/11606774/how-to-get-the-system-uptime-in-windows

systeminfo | find "System Boot Time:"

wmic os get lastbootuptime

@REM http://stackoverflow.com/questions/4145232/path-to-powershell-exe-v-2-0
@REM https://social.technet.microsoft.com/Forums/office/en-US/5b39dd04-515b-41cb-a65f-8c7aad67aa15/run-powershell-commands-on-a-bat-file?forum=winserverpowershell
C:\Windows\System32\WindowsPowerShell\v1.0\Powershell.exe -executionpolicy remotesigned -Command  "Get-WinEvent -ProviderName eventlog | Where-Object {$_.Id -eq 6005 -or $_.Id -eq 6006}"
C:\Windows\System32\WindowsPowerShell\v2.0\Powershell.exe -executionpolicy remotesigned -Command  "Get-WinEvent -ProviderName eventlog | Where-Object {$_.Id -eq 6005 -or $_.Id -eq 6006}"


net statistics workstation

timeout 240
@ping -n 120 127.0.0.1 
