# OpenPowerShellCmdHereAdmin
Adds the following options to the extended context menu:
* Open command window here
* Open command window here (Administrator)
* Open PowerShell window here
* Open PowerShell window here (Administrator)

![Tweaked context menu](https://raw.githubusercontent.com/bitsadmin/winconfig/master/OpenPowerShellCmdHereAdmin/cmd_ps_here.png "Context menu containing cmd.exe and PowerShell")

## Installation
### Windows 10
When simply importing the .reg, it will return an error because of the permissions set on the `HKCR\[Directory|Directory\Background|Drive]\shell\[cmd|Powershell]` keys which need to be updated in order to hide the default open PowerShell/command window option in the context menu.

There are two options:
* Modify the permissions of the key so the user you are using to import the .reg has sufficient permissions to write;
* Import the .reg using regedit running with TrustedInstaller permissions [1].

Successfully tested on:
* Windows Server 2016 - 1607
* Windows 10 - 1709
* Windows 10 - 1803
* Windows 10 - 1809

### Legacy
Simply import the .reg from the Legacy folder.

Successfully tested on:
* Windows 7 SP1
* Windows 8.1 Update 1
* Windows 10 - 1507 (RTM)


[1] Use for example ExecTI from https://winaero.com/download.php?view.1991
