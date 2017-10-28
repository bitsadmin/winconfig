# Windows productivity tweaks
## OpenPowerShellCmdHereAdmin
Adds the following options to the extended context menu:
* Open command window here
* Open command window here (Administrator)
* Open powershell window here
* Open powershell window here (Administrator)

**Installation**  
When simply imported, it will show an error because of the permissions set on the ```HKCR\Directory\shell\cmd``` key which needs to be updated in order to display an icon in the context menu.
There are two options:
* Modify the permissions of the key so the user you are importing the .reg with has sufficient permissions to write;
* Import the .reg as TrustedInstaller[1] or SYSTEM[2].


[1] Use for example Process Hacker with the TrustedInstaller plugin  
[2] Run regedit via psexec: ```psexec.exe -s -i regedit.exe```


## OpenWithHexeditorNotepad
Adds the following options to the context menu
* HexEditor
* Notepad
And the following options to the extended context menu
* HexEditor (Administrator)
* Notepad (Administrator)

