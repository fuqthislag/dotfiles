Disable-InternetExplorerESC
Disable-MicrosoftUpdate
Disable-UAC
Set-StartScreenOptions -EnableBootToDesktop -EnableDesktopBackgroundOnStart -EnableShowStartOnActiveScreen -EnableShowAppsViewOnStartScreen -EnableSearchEverywhereInAppsView -EnableListDesktopAppsFirst
Set-CornerNavigationOptions -DisableUpperRightCornerShowCharms -DisableUpperLeftCornerSwitchApps -DisableUsePowerShellOnWinX
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowFullPathInTitleBar
Set-TaskbarOptions -Size Small -Lock -Dock Bottom

cinst boxstarter
cinst chocolatey
cinst firefox
cinst atom
cinst 7zip.install
cinst ccleaner
cinst ccenhancer

$env:PSModulePath = $env:PSModulePath + ";%userprofile%\AppData\Local\atom\bin"

apm install color-picker file-icons language-batch language-generic-config language-ini language-powershell language-viml minimap minimap-cursorline minimap-pigments multi-cursor-plus pigments quick-highlight sort-lines

#color-picker
#file-icons
#language-batch
#language-generic-config
#language-ini
#language-powershell
#language-viml
#minimap
#minimap-cursorline
#minimap-pigments
#multi-cursor-plus
#pigments
#quick-highlight
#sort-lines

Install-WindowsUpdate -acceptEula

# START http://boxstarter.org/package/url?d:\boxstarter.ps1
