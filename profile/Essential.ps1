# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Essential profile:
#
#   This is the default profile used by boxstarter
#   What this script does is:
#     - Protect your privacy (see Privacy settings)
#     - Change user interface preferences (see UI preferences)
#     - Disable P2P Windows update (see Windows update)
#     - Remove default apps already installed (see Default Windows apps)
#     - Change default options (see Default options)
#
#   You have the possibility to disable each part of this script just by adding
#   an option when calling the boxstarter.ps1
#   For example:
#     - Don't want to change the privacy setting: 'Boxstarter::Essential::Privacy=false'
#     - Don't want to remove skype: 'Boxstarter::Essential::Remove::Microsoft.SkypeApp=false'
#     - Want to remove the calculator: 'Boxstarter::Essential::Remove::Microsoft.WindowsCalculator=true'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


#--- [Import] ---------------------------------------------------------------------------------------------------------
Import-Function -Path "$sRoot/helpers/tweak/Remove-WindowsApp.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Remove-OneDrive.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Disassembler0/Privacy.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Disassembler0/Security.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Disassembler0/Service.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Disassembler0/UI.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Disassembler0/ExplorerUI.ps1"
Import-Function -Path "$sRoot/helpers/tweak/Disassembler0/Application.ps1"
#----------------------------------------------------------------------------------------------------------------------


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Privacy settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::Privacy')
{
    Write-BoxstarterMessage "Updating Privacy settings..."

    DisableTelemetry                # EnableTelemetry
    DisableWiFiSense                # EnableWiFiSense
    # DisableSmartScreen            # EnableSmartScreen
    DisableWebSearch                # EnableWebSearch
    DisableAppSuggestions           # EnableAppSuggestions
    DisableActivityHistory          # EnableActivityHistory
    DisableBackgroundApps           # EnableBackgroundApps
    DisableLocationTracking         # EnableLocationTracking
    DisableMapUpdates               # EnableMapUpdates
    DisableFeedback                 # EnableFeedback
    DisableTailoredExperiences      # EnableTailoredExperiences
    DisableAdvertisingID            # EnableAdvertisingID
    DisableWebLangList              # EnableWebLangList
    DisableCortana                  # EnableCortana
    DisableErrorReporting           # EnableErrorReporting
    SetP2PUpdateLocal               # SetP2PUpdateInternet          # SetP2PUpdateDisable
    DisableDiagTrack                # EnableDiagTrack
    DisableWAPPush                  # EnableWAPPush
    HideRecentJumplists             # ShowRecentJumplists
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Security  settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::Security')
{
    Write-BoxstarterMessage "Updating Security settings..."

    # SetUACLow                     # SetUACHigh
    EnableSharingMappedDrives       # DisableSharingMappedDrives
    DisableAdminShares              # EnableAdminShares
    # DisableSMB1                   # EnableSMB1
    # DisableSMBServer              # EnableSMBServer
    # DisableLLMNR                  # EnableLLMNR
    # DisableNCSIProbe              # EnableNCSIProbe
    SetCurrentNetworkPrivate        # SetCurrentNetworkPublic
    # SetUnknownNetworksPrivate     # SetUnknownNetworksPublic
    # DisableNetDevicesAutoInst     # EnableNetDevicesAutoInst
    # DisableFirewall               # EnableFirewall
    # HideDefenderTrayIcon          # ShowDefenderTrayIcon
    # DisableDefender               # EnableDefender
    # DisableDefenderCloud          # EnableDefenderCloud
    # EnableCtrldFolderAccess       # DisableCtrldFolderAccess
    # EnableCIMemoryIntegrity       # DisableCIMemoryIntegrity
    # EnableDefenderAppGuard        # DisableDefenderAppGuard
    HideAccountProtectionWarn       # ShowAccountProtectionWarn
    # DisableDownloadBlocking       # EnableDownloadBlocking
    # DisableScriptHost             # EnableScriptHost
    EnableDotNetStrongCrypto        # DisableDotNetStrongCrypto
    # EnableMeltdownCompatFlag      # DisableMeltdownCompatFlag
    EnableF8BootMenu                # DisableF8BootMenu
    # DisableBootRecovery           # EnableBootRecovery
    # DisableRecoveryAndReset       # EnableRecoveryAndReset
    SetDEPOptOut                    # SetDEPOptIn
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Service settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::Service')
{
    Write-BoxstarterMessage "Updating Service settings..."

    # DisableUpdateMSRT             # EnableUpdateMSRT
    # DisableUpdateDriver           # EnableUpdateDriver
    DisableUpdateRestart            # EnableUpdateRestart
    # DisableHomeGroups             # EnableHomeGroups
    DisableSharedExperiences        # EnableSharedExperiences
    DisableRemoteAssistance         # EnableRemoteAssistance
    EnableRemoteDesktop             # DisableRemoteDesktop
    DisableAutoplay                 # EnableAutoplay
    DisableAutorun                  # EnableAutorun
    # DisableRestorePoints          # EnableRestorePoints
    # EnableStorageSense            # DisableStorageSense
    # DisableDefragmentation        # EnableDefragmentation
    # DisableSuperfetch             # EnableSuperfetch
    # DisableIndexing               # EnableIndexing
    # DisableNTFSLastAccess         # EnableNTFSLastAccess
    # SetBIOSTimeUTC                # SetBIOSTimeLocal
    # EnableHibernation             # DisableHibernation
    # DisableSleepButton            # EnableSleepButton
    # DisableSleepTimeout           # EnableSleepTimeout
    DisableFastStartup              # EnableFastStartup
    # DisableAutoRebootOnCrash      # EnableAutoRebootOnCrash
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    UI settings
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::UI')
{
    Write-BoxstarterMessage "Updating UI settings..."

    # DisableActionCenter           # EnableActionCenter
    # DisableLockScreen             # EnableLockScreen
    # DisableLockScreenRS1          # EnableLockScreenRS1
    # HideNetworkFromLockScreen     # ShowNetworkOnLockScreen
    # HideShutdownFromLockScreen    # ShowShutdownOnLockScreen
    # DisableAeroShake              # EnableAeroShake
    DisableStickyKeys               # EnableStickyKeys
    ShowTaskManagerDetails          # HideTaskManagerDetails
    ShowFileOperationsDetails       # HideFileOperationsDetails
    # EnableFileDeleteConfirm       # DisableFileDeleteConfirm
    HideTaskbarSearch               # ShowTaskbarSearchIcon         # ShowTaskbarSearchBox
    HideTaskView                    # ShowTaskView
    # ShowSmallTaskbarIcons         # ShowLargeTaskbarIcons
     SetTaskbarCombineAlways        # SetTaskbarCombineWhenFull      # SetTaskbarCombineNever
    HideTaskbarPeopleIcon           # ShowTaskbarPeopleIcon
    ShowTrayIcons                   # HideTrayIcons
    DisableSearchAppInStore         # EnableSearchAppInStore
    DisableNewAppPrompt             # EnableNewAppPrompt
    # HideRecentlyAddedApps         # ShowRecentlyAddedApps
    # SetControlPanelSmallIcons     # SetControlPanelLargeIcons     # SetControlPanelCategories
    DisableShortcutInName           # EnableShortcutInName
    SetVisualFXPerformance          # SetVisualFXAppearance
    # EnableDarkTheme               # DisableDarkTheme
    # AddENKeyboard                 # RemoveENKeyboard
    EnableNumlock                   # DisableNumlock
    # SetSoundSchemeNone            # SetSoundSchemeDefault
    # DisableStartupSound           # EnableStartupSound
    # DisableChangingSoundScheme    # EnableChangingSoundScheme
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    UI preferences
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::UI-Preferences')
{
    Write-BoxstarterMessage "Updating UI preferences..."


    ShowKnownExtensions             # HideKnownExtensions
    ShowHiddenFiles                 # HideHiddenFiles
    EnableNavPaneExpand             # DisableNavPaneExpand
    # EnableFldrSeparateProcess     # DisableFldrSeparateProcess
    # EnableRestoreFldrWindows      # DisableRestoreFldrWindows
    # DisableSharingWizard          # EnableSharingWizard
    # HideSelectCheckboxes          # ShowSelectCheckboxes
    HideSyncNotifications           # ShowSyncNotifications
    HideRecentShortcuts             # ShowRecentShortcuts
    SetExplorerThisPC               # SetExplorerQuickAccess
    HideQuickAccess                 # ShowQuickAccess
    ShowThisPCOnDesktop             # HideThisPCFromDesktop
    # HideUserFolderFromDesktop     # ShowUserFolderOnDesktop
    # HideDesktopFromThisPC         # ShowDesktopInThisPC
    # HideDesktopFromExplorer       # ShowDesktopInExplorer
    # HideDocumentsFromThisPC       # ShowDocumentsInThisPC
    # HideDocumentsFromExplorer     # ShowDocumentsInExplorer
    # HideDownloadsFromThisPC       # ShowDownloadsInThisPC
    # HideDownloadsFromExplorer     # ShowDownloadsInExplorer
    # HideMusicFromThisPC           # ShowMusicInThisPC
    # HideMusicFromExplorer         # ShowMusicInExplorer
    # HidePicturesFromThisPC        # ShowPicturesInThisPC
    # HidePicturesFromExplorer      # ShowPicturesInExplorer
    # HideVideosFromThisPC          # ShowVideosInThisPC
    # HideVideosFromExplorer        # ShowVideosInExplorer
    Hide3DObjectsFromThisPC         # Show3DObjectsInThisPC
    Hide3DObjectsFromExplorer       # Show3DObjectsInExplorer
    # HideIncludeInLibraryMenu      # ShowIncludeInLibraryMenu
    # HideGiveAccessToMenu          # ShowGiveAccessToMenu
    # HideShareMenu                 # ShowShareMenu
    # DisableThumbnails             # EnableThumbnails
    DisableThumbnailCache           # EnableThumbnailCache
    DisableThumbsDBOnNetwork        # EnableThumbsDBOnNetwork
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Application
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::Application')
{
    Write-BoxstarterMessage "Updating Application preferences..."

    # DisableOneDrive               # EnableOneDrive
    # UninstallOneDrive             # InstallOneDrive
    # UninstallMsftBloat            # InstallMsftBloat
    # UninstallThirdPartyBloat      # InstallThirdPartyBloat
    # UninstallWindowsStore         # InstallWindowsStore
    DisableXboxFeatures             # EnableXboxFeatures
    DisableAdobeFlash               # EnableAdobeFlash
    DisableEdgeShortcutCreation     # EnableEdgeShortcutCreation
    # UninstallMediaPlayer          # InstallMediaPlayer
    # UninstallInternetExplorer     # InstallInternetExplorer
    # UninstallWorkFolders          # InstallWorkFolders
    # UninstallPowerShellV2         # InstallPowerShellV2
    # InstallLinuxSubsystem         # UninstallLinuxSubsystem
    # InstallHyperV                 # UninstallHyperV
    # InstallNET23                  # UninstallNET23
    SetPhotoViewerAssociation       # UnsetPhotoViewerAssociation
    AddPhotoViewerOpenWith          # RemovePhotoViewerOpenWith
    # UninstallPDFPrinter           # InstallPDFPrinter
    UninstallXPSPrinter             # InstallXPSPrinter
    RemoveFaxPrinter                # AddFaxPrinter
    UninstallFaxAndScan             # InstallFaxAndScan
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Remote desktop
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::RemoteDesktop') {
    Enable-RemoteDesktop
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Internet explorer
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::InternetExplorerESC') {
    Disable-InternetExplorerESC
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Taskbar options
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::TaskbarOptions') {
    Set-TaskbarOptions -Size Small -Dock Bottom -Combine Always
    Set-TaskbarOptions -Size Small -Dock Bottom -Combine Always -AlwaysShowIconsOn
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Corner navigation options
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::CornerNavigationOptions') {
    Set-CornerNavigationOptions -EnableUsePowerShellOnWinX
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Windows update
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::Essential::Windows-Update')
{
    Write-BoxstarterMessage "Updating Windows update..."

    # Disable P2P Update downloads outside of local network
    Set-Registry -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization' -Name 'SystemSettingsDownloadMode' -Type 'DWord' -Value 3
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Default Windows apps
#
# Get-AppxPackage -AllUsers | Select Name, PackageFullName | Sort Name
# Get-AppxProvisionedPackage -Online | Select DisplayName, PackageName | Sort DisplayName
#
# https://docs.microsoft.com/en-us/windows/application-management/remove-provisioned-apps-during-update
# https://gist.github.com/alirobe/7f3b34ad89a159e6daa1
# https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/master/Win10.ps1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Set-DefaultOption 'Boxstarter::Essential::Remove-Apps'                                      'true'

Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.3DBuilder'                      'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Appconnector'                   'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.BingFinance'                    'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.BingFoodAndDrink'               'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.BingHealthAndFitness'           'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.BingNews'                       'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.BingSports'                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.BingTranslator'                 'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.BingTravel'                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.BingWeather'                    'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.CommsPhone'                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.ConnectivityStore'              'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.DesktopAppInstaller'            'false' # Don't remove
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.GetHelp'                        'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Getstarted'                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Messaging'                      'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Microsoft3DViewer'              'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.MicrosoftOfficeHub'             'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.MicrosoftPowerBIForWindows'     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.MicrosoftSolitaireCollection'   'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.MicrosoftStickyNotes'           'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.MinecraftUWP'                   'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.MixedReality.Portal'            'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.MSPaint'                        'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.NetworkSpeedTest'               'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Office.OneNote'                 'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Office.Sway'                    'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.OfficeLens'                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.OneConnect'                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.OneDrive'                       'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.People'                         'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Print3D'                        'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.RemoteDesktop'                  'false'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.ScreenSketch'                   'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.SkypeApp'                       'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.StorePurchaseApp'               'false' # Don't remove
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Todos'                          'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Wallet'                         'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WebMediaExtensions'             'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Whiteboard'                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Windows.Photos'                 'false'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Windows.CapturePicker'          'false'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Windows.CloudExperienceHost'    'false' # Don't remove
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Windows.PeopleExperienceHost'   'false' # Don't remove
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsAlarms'                  'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsCalculator'              'false'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsCamera'                  'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::microsoft.windowscommunicationsapps'      'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsFeedbackHub'             'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsMaps'                    'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsPhone'                   'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsReadingList'             'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsSoundRecorder'           'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.WindowsStore'                   'false' # Don't remove
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.XboxApp'                        'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.XboxGameOverlay'                'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.XboxGamingOverlay'              'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.XboxIdentityProvider'           'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.XboxSpeechToTextOverlay'        'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.Xbox.TCUI'                      'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.YourPhone'                      'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.ZuneMusic'                      'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Microsoft.ZuneVideo'                      'true'

Set-DefaultOption 'Boxstarter::Essential::Remove::windows.immersivecontrolpanel'            'true'

Set-DefaultOption 'Boxstarter::Essential::Remove::Autodesk'                                 'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::BubbleWitch'                              'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::CandyCrush'                               'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Dell'                                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Facebook'                                 'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Keeper'                                   'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::MarchofEmpires'                           'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::McAfee'                                   'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Minecraft'                                'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Netflix'                                  'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Plex'                                     'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Solitaire'                                'true'
Set-DefaultOption 'Boxstarter::Essential::Remove::Twitter'                                  'true'

[String[]]$apps = @()
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.3DBuilder')                     { $apps += 'Microsoft.3DBuilder' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Appconnector')                  { $apps += 'Microsoft.Appconnector' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.BingFinance')                   { $apps += 'Microsoft.BingFinance' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.BingFoodAndDrink')              { $apps += 'Microsoft.BingFoodAndDrink' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.BingHealthAndFitness')          { $apps += 'Microsoft.BingHealthAndFitness' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.BingNews')                      { $apps += 'Microsoft.BingNews' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.BingSports')                    { $apps += 'Microsoft.BingSports' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.BingTranslator')                { $apps += 'Microsoft.BingTranslator' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.BingTravel')                    { $apps += 'Microsoft.BingTravel' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.BingWeather')                   { $apps += 'Microsoft.BingWeather' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.CommsPhone')                    { $apps += 'Microsoft.CommsPhone' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.ConnectivityStore')             { $apps += 'Microsoft.ConnectivityStore' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.DesktopAppInstaller')           { $apps += 'Microsoft.DesktopAppInstaller' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.GetHelp')                       { $apps += 'Microsoft.GetHelp' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Getstarted')                    { $apps += 'Microsoft.Getstarted' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Messaging')                     { $apps += 'Microsoft.Messaging' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Microsoft3DViewer')             { $apps += 'Microsoft.Microsoft3DViewer' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.MicrosoftOfficeHub')            { $apps += 'Microsoft.MicrosoftOfficeHub' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.MicrosoftPowerBIForWindows')    { $apps += 'Microsoft.MicrosoftPowerBIForWindows' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.MicrosoftSolitaireCollection')  { $apps += 'Microsoft.MicrosoftSolitaireCollection' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.MicrosoftStickyNotes')          { $apps += 'Microsoft.MicrosoftStickyNotes' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.MinecraftUWP')                  { $apps += 'Microsoft.MinecraftUWP' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.MixedReality.Portal')           { $apps += 'Microsoft.MixedReality.Portal' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.MSPaint')                       { $apps += 'Microsoft.MSPaint' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.NetworkSpeedTest')              { $apps += 'Microsoft.NetworkSpeedTest' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Office.OneNote')                { $apps += 'Microsoft.Office.OneNote' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Office.Sway')                   { $apps += 'Microsoft.Office.Sway' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.OfficeLens')                    { $apps += 'Microsoft.OfficeLens' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.OneConnect')                    { $apps += 'Microsoft.OneConnect' }
#if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.OneDrive')                      { $apps += 'Microsoft.OneDrive' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.People')                        { $apps += 'Microsoft.People' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Print3D')                       { $apps += 'Microsoft.Print3D' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.SkypeApp')                      { $apps += 'Microsoft.SkypeApp' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.StorePurchaseApp')              { $apps += 'Microsoft.StorePurchaseApp' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Todos')                         { $apps += 'Microsoft.Todos' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Wallet')                        { $apps += 'Microsoft.WalletWalletTodos' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Whiteboard')                    { $apps += 'Microsoft.Whiteboard' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Windows.Photos')                { $apps += 'Microsoft.Windows.Photos' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Windows.CapturePicker')         { $apps += 'Microsoft.Windows.CapturePicker' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Windows.CloudExperienceHost')   { $apps += 'Microsoft.Windows.CloudExperienceHostPhotos' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Windows.PeopleExperienceHost')  { $apps += 'Microsoft.Windows.PeopleExperienceHostPhotos' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsAlarms')                 { $apps += 'Microsoft.WindowsAlarms' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsCalculator')             { $apps += 'Microsoft.WindowsCalculator' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsCamera')                 { $apps += 'Microsoft.WindowsCamera' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::microsoft.windowscommunicationsapps')     { $apps += 'microsoft.windowscommunicationsapps' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsFeedbackHub')            { $apps += 'Microsoft.WindowsFeedbackHub' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsMaps')                   { $apps += 'Microsoft.WindowsMaps' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsPhone')                  { $apps += 'Microsoft.WindowsPhone' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsReadingList')            { $apps += 'Microsoft.WindowsReadingList' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsSoundRecorder')          { $apps += 'Microsoft.WindowsSoundRecorder' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.WindowsStore')                  { $apps += 'Microsoft.WindowsStore' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.XboxApp')                       { $apps += 'Microsoft.XboxApp' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.XboxGameOverlay')               { $apps += 'Microsoft.XboxGameOverlay' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.XboxGamingOverlay')             { $apps += 'Microsoft.XboxGamingOverlay' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.XboxIdentityProvider')          { $apps += 'Microsoft.XboxIdentityProvider' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.XboxSpeechToTextOverlay')       { $apps += 'Microsoft.XboxSpeechToTextOverlay' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.Xbox.TCUI')                     { $apps += 'Microsoft.Xbox.TCUI' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.ZuneMusic')                     { $apps += 'Microsoft.ZuneMusic' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.ZuneVideo')                     { $apps += 'Microsoft.ZuneVideo' }

if(Get-OptionBool 'Boxstarter::Essential::Remove::windows.immersivecontrolpanel')           { $apps += 'windows.immersivecontrolpanel' }

if(Get-OptionBool 'Boxstarter::Essential::Remove::Autodesk')                                { $apps += '*Autodesk*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::BubbleWitch')                             { $apps += '*BubbleWitch*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::CandyCrush')                              { $apps += '*CandyCrush*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Dell')                                    { $apps += '*Dell*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Facebook')                                { $apps += '*Facebook*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Keeper')                                  { $apps += '*Keeper*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::MarchofEmpires')                          { $apps += '*MarchofEmpires*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::McAfee')                                  { $apps += '*McAfee*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Minecraft')                               { $apps += '*Minecraft*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Netflix')                                 { $apps += '*Netflix*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Plex')                                    { $apps += '*Plex*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Solitaire')                               { $apps += '*Solitaire*' }
if(Get-OptionBool 'Boxstarter::Essential::Remove::Twitter')                                 { $apps += '*Twitter*' }

if(Get-OptionBool 'Boxstarter::Essential::Remove-Apps') {

    Write-BoxstarterMessage "Removing Windows apps..."

    # Prevents "Suggested Applications" returning
    Set-Registry -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Cloud Content' -Name 'DisableWindowsConsumerFeatures' -Type 'DWord' -Value 1

    # Remove default apps
    Remove-WindowsApp $apps

    # remove oneDrive
    if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.OneDrive') {
        Remove-OneDrive
    }

    # remove paint 3D
    if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.MSPaint') {
        # How to remove 'Edit with Paint 3D' from context menu
        Remove-Registry 'HKEY_LOCAL_MACHINE\SOFTWARE\Classes\SystemFileAssociations\.jpeg\Shell'
    }

    # Xbox
    if(Get-OptionBool 'Boxstarter::Essential::Remove::Microsoft.XboxApp') {
        Set-Registry -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AppCaptureEnabled' -Type 'DWord' -Value 0
        Set-Registry -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" -Name "AllowGameDVR" -Type 'DWord' -Value 0
        Set-Registry -Path 'HKCU:\System\GameConfigStore' -Name 'GameDVR_Enabled' -Type 'DWord' -Value 0
    }

    # remove McAfee Security App
    if(Get-OptionBool 'Boxstarter::Essential::Remove::McAfee') {
        $mcafee = Get-ChildItem 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall' | ForEach-Object { Get-ItemProperty $_.PSPath } | Where-Object { $_ -match "McAfee Security" } | Select-Object UninstallString
        if ($mcafee) {
            $mcafee = $mcafee.UninstallString -Replace 'C:\Program Files\McAfee\MSC\mcuihost.exe',''
            Start-Process "C:\Program Files\McAfee\MSC\mcuihost.exe" -arg "$mcafee" -Wait
        }
    }
}
