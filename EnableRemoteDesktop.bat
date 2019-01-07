@REM http://technet.microsoft.com/en-us/library/cc754820.aspx
@REM http://community.spiceworks.com/how_to/show/35529-enable-rdp-through-cmd-line

reg add "hklm\system\currentcontrolset\control\terminal server" /f /v fDenyTSConnections /t REG_DWORD /d 0
netsh firewall set service remoteadmin enable
netsh firewall set service remotedesktop enable

