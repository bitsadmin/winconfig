# CleanWindows
Script to cleanup and tweak Windows for use by advanced users. Settings include:
* Power settings to maximum performance, no screensaver etc
* Desktop icons: Computer / User Files / Recycle Bin
* Blank Internet Explorer start page and empty bookmarks
* Windows 10: Cleanup Start menu and disable/hide consumer features
* Note that this script does not disable Windows 10 spying, use tools like O&O ShutUp10 [1] or Destroy-Windows-10-Spying [2]

**Installation**  
Simply run the CleanWindows.cmd script with elevated privileges.

**Sample output**
```
-=[ All Windows versions ]=-


Press any key to continue . . .

[+] Never Combine Taskbar Buttons
The operation completed successfully.

[+] Always Show All Tray Icons
The operation completed successfully.

[+] Show extensions for known file types
The operation completed successfully.

[+] Add Desktop Icon: Computer
The operation completed successfully.
The operation completed successfully.
The operation completed successfully.
The operation completed successfully.

[+] Add Desktop Icon: User Files
The operation completed successfully.
The operation completed successfully.
The operation completed successfully.
The operation completed successfully.

[+] Add Desktop Icon: Recycle Bin
The operation completed successfully.
The operation completed successfully.
The operation completed successfully.
The operation completed successfully.

[+] Setting Internet Explorer start page to about:blank
The operation completed successfully.

[+] Internet Explorer: Disabling First Run welcome screen
The operation completed successfully.

[+] Clearning all Internet Explorer favorites

[+] Internet Explorer: Hiding Links bar
The operation completed successfully.

[+] Set Power Plan to 'High Performance'

[+] Set cmd.exe screenbuffer height to maximum
The operation completed successfully.

[+] Set paint view window to 1x1 pixel
The operation completed successfully.
The operation completed successfully.

[+] Disable confirmation for file deletion
The operation completed successfully.

[+] Set timezone to Amsterdam


-=[ Windows 10 ]=-


Press any key to continue . . .
[+] Disable automatic crap apps install
The operation completed successfully.
The operation completed successfully.

[-] Microsoft Edge: Set start page to blank page
Needs to be done manually for now: Settings -> Open Edge with: New tab page
[+] Microsoft Edge: Open new tabs with a blank page
The operation completed successfully.

[+] Microsoft Edge: Disabling First Run welcome screen
The operation completed successfully.

[+] Remove Task View button
The operation completed successfully.

[+] Remove Search button
The operation completed successfully.

[+] Remove People button
The operation completed successfully.

[+] Open Windows Explorer to This PC
The operation completed successfully.

[+] Disable showing recently used files in Quick Access
The operation completed successfully.

[+] Remove OneDrive

[+] Hide touch keyboard from system tray
The operation completed successfully.

[+] Hide Windows Ink Workspace from system tray
The operation completed successfully.
```

[1] https://www.oo-software.com/shutup10/

[2] https://github.com/Nummer/Destroy-Windows-10-Spying/
