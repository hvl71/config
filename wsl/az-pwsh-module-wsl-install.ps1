#In a none-elevated pwsh prompt in WSL2


#https://docs.microsoft.com/en-us/powershell/scripting/gallery/installing-psget?view=powershell-7.2

[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12

Install-Module PowerShellGet -AllowClobber -Verbose

#https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-7.5.0

Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Verbose

#I used this command - I think the above is safer? At least it points to a specific repository..
#Install-Module -Name Az -Verbose

#Observations:
#1/ if running with -Force (and not -Verbose) the install hangs. I guess it is in a suppressed prompt?
#2/ use 'Connect-AzAccount -UseDeviceAuthentication' to sign in to Azure

