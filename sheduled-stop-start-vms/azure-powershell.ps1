Login-AzureRmAccount -Environmentname azurechinacloud

chenxu@wandatest.partner.onmschina.cn
Ch&86413



$nics = Get-AzureRmNetworkInterface


$nics.virtualmachine.id

$nics.IpConfigurations.PrivateIpAddress

