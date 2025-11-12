#Variables to define the Windows OS / Edition etc to be applied during OSDCloud
$OSName = 'Windows 11 25H2 x64'
$OSEdition = 'Pro'
$OSActivation = 'Retail'
$OSLanguage = 'en-gb'

#Set OSDCloud Vars
$Global:MyOSDCloud = [ordered]@{
    Restart = [bool]$true
    RecoveryPartition = [bool]$true
    OEMActivation = [bool]$True
    WindowsUpdate = [bool]$true
    WindowsUpdateDrivers = [bool]$true
    WindowsDefenderUpdate = [bool]$true
    SetTimeZone = [bool]$true
    ClearDiskConfirm = [bool]$False
    ShutdownSetupComplete = [bool]$false
    SyncMSUpCatDriverUSB = [bool]$true
    CheckSHA1 = [bool]$true
    HPIADrivers = $true
    HPIAFirmware = $true
#    HPIASoftware = $null
    HPTPMUpdate = $true
    HPBIOSUpdate = $true
#    HPCMSLDriverPackLatest = $null
#    HPCMSLDriverPackLatestFound = $null
}

#Invoke-OSDCloud lets you set up OSDCloud to accept lots of other variables and do lots of other config - it's going to pick up the HPIADrivers variable and use this to kick off installaing HPIA

#Invoke-OSDCloud

#Test-HPIASupport will get the device model info and make sure it is  supported by HPIA

#Test-HPIASupport

#his function installs the HP CMSL PS module from the PowerShell Gallery if not already installed.

#Install-ModuleHPCMSL

#Back in the main script, lets create a Json file with the actions needing to be performed during the SetupComplete phase.

#Invoke-OSDCloud – HP.JSON

#This function Adds the necessary lines of PowerShell code to the SetupComplete.ps1 file to run the different HP Functions options.

#Set-SetupCompleteHPAppend

#This function runs HPIA during the SetupComplete phase that was setup by the Set-SetupCompleteHPAppend function

#Invoke-HPIA

#Install the latest HPIA tool to the default path “$env:ProgramFiles\HP\HPIA\bin”

#Install-HPIA

#Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
write-host "Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSActivation $OSActivation -OSLanguage $OSLanguage"

Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSActivation $OSActivation -OSLanguage $OSLanguage
