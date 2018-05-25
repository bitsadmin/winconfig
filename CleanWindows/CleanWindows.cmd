@echo off
echo -=[ All Windows versions ]=-
echo. & echo.
pause
echo. & echo [+] Never Combine Taskbar Buttons
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V TaskbarGlomLevel /T REG_DWORD /D 0x2 /F
echo. & echo [+] Always Show All Tray Icons
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0x0 /F
echo. & echo [+] Show extensions for known file types
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideFileExt /T REG_DWORD /D 0x0 /F
echo. & echo [+] Add Desktop Icon: Computer
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /V {20D04FE0-3AEA-1069-A2D8-08002B30309D} /T REG_DWORD /D 0x0 /F
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /V {20D04FE0-3AEA-1069-A2D8-08002B30309D} /T REG_DWORD /D 0x0 /F
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /V {20D04FE0-3AEA-1069-A2D8-08002B30309D} /T REG_DWORD /D 0x0 /F
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /V {20D04FE0-3AEA-1069-A2D8-08002B30309D} /T REG_DWORD /D 0x0 /F
echo. & echo [+] Add Desktop Icon: User Files
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /V {59031A47-3F72-44A7-89C5-5595FE6B30EE} /T REG_DWORD /D 0x0 /F
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /V {59031A47-3F72-44A7-89C5-5595FE6B30EE} /T REG_DWORD /D 0x0 /F
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /V {59031A47-3F72-44A7-89C5-5595FE6B30EE} /T REG_DWORD /D 0x0 /F
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /V {59031A47-3F72-44A7-89C5-5595FE6B30EE} /T REG_DWORD /D 0x0 /F
echo. & echo [+] Add Desktop Icon: Recycle Bin
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /V {645FF040-5081-101B-9F08-00AA002F954E} /T REG_DWORD /D 0x0 /F
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /V {645FF040-5081-101B-9F08-00AA002F954E} /T REG_DWORD /D 0x0 /F
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /V {645FF040-5081-101B-9F08-00AA002F954E} /T REG_DWORD /D 0x0 /F
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /V {645FF040-5081-101B-9F08-00AA002F954E} /T REG_DWORD /D 0x0 /F
echo. & echo [+] Setting Internet Explorer start page to about:blank
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /V "Start Page" /T REG_SZ /D "about:blank" /F
echo. & echo [+] Internet Explorer: Disabling First Run welcome screen
reg add "HKLM\Software\Policies\Microsoft\Internet Explorer\Main" /V "DisableFirstRunCustomize" /T REG_DWORD /D 0x1 /F
echo. & echo [+] Clearning all Internet Explorer favorites
del /q "%userprofile%\Favorites"
for /d %%x in (%userprofile%\Favorites\*) do @rd /s /q "%%x"
echo. & echo [+] Internet Explorer: Hiding Links bar
reg add "HKCU\Software\Microsoft\Internet Explorer\LinksBar" /V Enabled /T REG_DWORD /D 0x0 /F
echo. & echo [+] Set Power Plan to 'High Performance'
for /F "tokens=4" %%i in ('powercfg -l^|find "High"') do @set guid=%%i
powercfg -setactive %guid%
:: TODO: also set timeout for turning screen off to 'never'
echo. & echo [+] Set cmd.exe screenbuffer height to maximum
reg add HKCU\Console\^%SystemRoot^%_system32_cmd.exe /V ScreenBufferSize /T REG_DWORD /D 0x7FFFFFFF /F
echo. & echo [+] Set paint view window to 1x1 pixel
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Paint\View /V BMPWidth /T REG_DWORD /D 0x1 /F
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Paint\View /V BMPHeight /T REG_DWORD /D 0x1 /F
echo. & echo [+] Disable confirmation for file deletion
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /V ConfirmFileDelete /T REG_DWORD /D 0x0 /F
echo. & echo [+] Set timezone to Amsterdam
tzutil /s "W. Europe Standard Time"

echo. & echo.
echo -=[ Windows 10 ]=-
echo. & echo.
pause
echo [+] Disable automatic crap apps install
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /V DisableWindowsConsumerFeatures /T REG_DWORD /D 0x1 /F
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V SilentInstalledAppsEnabled /T REG_DWORD /D 0x0 /F
echo. & echo [-] Microsoft Edge: Set start page to blank page
echo Needs to be done manually for now: Settings -^> Open Edge with: New tab page
echo [+] Microsoft Edge: Open new tabs with a blank page
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" /V NewTabPageDisplayOption /T REG_DWORD /D 0x2 /F
echo. & echo [+] Microsoft Edge: Disabling First Run welcome screen
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /V PreventFirstRunPage /T REG_DWORD /D 0x1 /F
echo. & echo [+] Remove Task View button
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowTaskViewButton /T REG_DWORD /D 0x0 /F
echo. & echo [+] Remove Search button
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /V SearchboxTaskbarMode /T REG_DWORD /D 0x0 /F
echo. & echo [+] Remove People button
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /V PeopleBand /T REG_DWORD /D 0x0 /F
echo. & echo [+] Open Windows Explorer to This PC
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V LaunchTo /T REG_DWORD /D 0x1 /F
echo. & echo [+] Disable showing recently used files in Quick Access
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /V ShowRecent /T REG_DWORD /D 0x0 /F
echo. & echo [+] Remove OneDrive
C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall
echo. & echo [+] Hide touch keyboard from system tray
reg add HKCU\SOFTWARE\Microsoft\TabletTip\1.7 /V TipbandDesiredVisibility /T REG_DWORD /D 0x0 /F
echo. & echo [+] Hide Windows Ink Workspace from system tray
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\PenWorkspace /V PenWorkspaceButtonDesiredVisibility /T REG_DWORD /D 0x0 /F




:: TODO, Windows Explorer settings:
:: Show recently used folders in Quick access - done
:: View -> Navigation pane -> Show all folders <----
::echo [+] Remove useless consumer apps
:: $allowedApps = @("Microsoft.AAD.BrokerPlugin", "Microsoft.Windows.CloudExperienceHost", "Microsoft.Windows.ShellExperienceHost", "windows.immersivecontrolpanel", "Microsoft.MicrosoftEdge", "Microsoft.Windows.ContentDeliveryManager", "Microsoft.NET.Native.Framework.1.6", "Microsoft.NET.Native.Framework.1.6", "Microsoft.NET.Native.Runtime.1.6", "Microsoft.NET.Native.Runtime.1.6", "Microsoft.NET.Native.Framework.1.3", "Microsoft.NET.Native.Framework.1.3", "Microsoft.NET.Native.Runtime.1.4", "Microsoft.NET.Native.Runtime.1.4", "Microsoft.NET.Native.Runtime.1.3", "Microsoft.NET.Native.Runtime.1.3", "Windows.PrintDialog", "Microsoft.Windows.SecureAssessmentBrowser", "Microsoft.Windows.SecondaryTileExperience", "Microsoft.Windows.SecHealthUI", "Microsoft.Windows.PinningConfirmationDialog", "Microsoft.Windows.Apprep.ChxApp", "Microsoft.Windows.AssignedAccessLockApp", "Microsoft.LockApp", "Microsoft.Windows.OOBENetworkCaptivePortal", "Microsoft.PPIProjection", "1527c705-839a-4832-9118-54d4Bd6a0c89", "c5e2524a-ea46-4f67-841f-6a9465d9d515", "E2A4F912-2574-4A75-9BB0-0D023378592B", "F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE", "InputApp", "Microsoft.AccountsControl", "Microsoft.Windows.ParentalControls", "Microsoft.Windows.OOBENetworkConnectionFlow", "Microsoft.ECApp", "Microsoft.CredDialogHost", "Microsoft.BioEnrollment", "Microsoft.Wallet", "Microsoft.VCLibs.140.00", "Microsoft.VCLibs.140.00", "Microsoft.Messaging", "Microsoft.WindowsMaps", "Microsoft.MSPaint", "Microsoft.VCLibs.140.00.UWPDesktop", "Microsoft.VCLibs.140.00.UWPDesktop", "Microsoft.WindowsCalculator", "Microsoft.WindowsAlarms", "Microsoft.WindowsSoundRecorder", "Microsoft.Advertising.Xaml", "Microsoft.Advertising.Xaml", "Microsoft.DesktopAppInstaller", "Microsoft.ZuneMusic", "Microsoft.OneConnect", "Microsoft.NET.Native.Runtime.1.7", "Microsoft.NET.Native.Runtime.1.7", "Microsoft.NET.Native.Framework.1.7", "Microsoft.NET.Native.Framework.1.7", "Microsoft.Windows.Photos", "Microsoft.Services.Store.Engagement", "Microsoft.Services.Store.Engagement", "Microsoft.ZuneVideo", "Microsoft.StorePurchaseApp", "Microsoft.WindowsCamera", "Microsoft.WindowsStore", "microsoft.windowscommunicationsapps", "Microsoft.Windows.Cortana", "Microsoft.Windows.HolographicFirstRun", "Microsoft.XboxGameCallableUI", "Microsoft.Windows.PeopleExperienceHost")
:: Get-AppxPackage -AllUsers | ? { $_.Name -NotIn $allowedApps } | Remove-AppxPackage
:: powershell.exe -Command "Get-AppxPackage -AllUsers | ? { $_.Name -notlike 'Microsoft.*' -and $_.Name -notlike 'Windows.*' -and $_.InstallLocation -notlike 'C:\Windows\SystemApps\*' } | Remove-AppxPackage"

echo.
echo -=[ Windows 10 - Clear start menu ]=-
echo. & echo.
pause
echo. & echo [+] Cleaning Start menu
echo ^<LayoutModificationTemplate Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"^>^<LayoutOptions StartTileGroupCellWidth="6" /^>^<DefaultLayoutOverride^>^<StartLayoutCollection^>^<defaultlayout:StartLayout GroupCellWidth="6" xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"^>^</defaultlayout:StartLayout^>^</StartLayoutCollection^>^</DefaultLayoutOverride^>^</LayoutModificationTemplate^> > C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml
taskkill /f /im explorer.exe
del /s /q "%LocalAppData%\Microsoft\Windows\CloudStore\*"
del /s /q "%LocalAppData%\Microsoft\Windows\Caches\*"
del /s /q "%LocalAppData%\Microsoft\Windows\Explorer\*"
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store" /f
start "" explorer.exe

pause