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

apm install color-picker language-batch language-generic-config language-ini language-powershell minimap minimap-cursorline minimap-pigments multi-cursor-plus pigments quick-highlight sort-lines

#apm install color-picker
#apm install language-batch
#apm install language-generic-config
#apm install language-ini
#apm install language-powershell
#apm install minimap
#apm install minimap-cursorline
#apm install minimap-pigments
#apm install multi-cursor-plus
#apm install pigments
#apm install quick-highlight
#apm install sort-lines

Install-WindowsUpdate -acceptEula

## START http://boxstarter.org/package/url?d:\boxstarter.ps1
