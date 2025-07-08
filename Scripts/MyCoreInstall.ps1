$AppFile = Get-ChildItem -Path C:\ProgramData\BcContainerHelper\Extensions\BCLatestDevOps\my\appProjectFolder\MyCore\output\* -Include *.app
$Credential = [PSCredential]::new("admin", (ConvertTo-SecureString -String "Admin@123" -AsPlainText -Force))

Publish-BcContainerApp -appFile $AppFile -containerName BCLatestDevOps -credential $Credential -install -SkipVerification