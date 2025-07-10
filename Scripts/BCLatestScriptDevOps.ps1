$artifactUrl = Get-BcArtifactUrl -type sandbox -country de -select Latest
$containerName = "BCLatestDevOps"
$auth = "UserPassword"
$credential = New-Object pscredential 'admin', (ConvertTo-SecureString -String 'Admin@123' -AsPlainText -Force)

New-BCContainer -accept_eula -alwaysPull `
 -artifactUrl $artifactUrl -containerName $containerName `
 -auth $auth -credential $credential `
 -assignPremiumPlan `
 -updateHosts -includeAL `
 -memoryLimit 4G `
 -includeTestToolkit `
 -EnableTaskScheduler:$false