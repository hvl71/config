#credits to 
#https://devblogs.microsoft.com/powershell-community/how-to-update-or-add-a-registry-key-value-with-powershell/
#https://answers.microsoft.com/en-us/windows/forum/all/xeon-not-supported-on-windows-11/e77ff114-0b3f-48a3-b3f8-b0ae15c149b0
#https://support.microsoft.com/en-us/windows/ways-to-install-windows-11-e0edbbfb-cfc5-4011-868b-2ce77ac7c70e



# Set variables to indicate value and key to set
$RegistryPath = 'HKLM:\SYSTEM\Setup\MoSetup'
                                    MoSetup
$Name         = 'AllowUpgradesWithUnsupportedTPMOrCPU'
$Value        = '1'
# Create the key if it does not exist
If (-NOT (Test-Path $RegistryPath)) {
  Write-Host "Registry path not found.. creating.."  
  New-Item -Path $RegistryPath -Force | Out-Null
}  

Write-Host "Setting registry value"
# Now set the value
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force 

Get-Item $RegistryPath