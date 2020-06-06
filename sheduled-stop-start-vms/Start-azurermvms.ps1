workflow Start-AzureRMVMs
{   
    param (
        [Parameter(Mandatory=$false)] 
        [String]  $AzureCredentialAssetName = 'automationADaccount',
        
        [Parameter(Mandatory=$false)]
        [String] $AzureSubscriptionIdAssetName = 'AzureSubscriptionId',

        [Parameter(Mandatory=$false)] 
        [String] $ResourceGroupName
    )

    # Returns strings with status messages
    [OutputType([String])]

	# Connect to Azure and select the subscription to work against
    
    #$AzureCredentialAssetName = "automationADaccount";
	
	#Get the credential with the above name from the Automation Asset store
    $Cred = Get-AutomationPSCredential -Name $AzureCredentialAssetName
    if(!$Cred) {
        Throw "Could not find an Automation Credential Asset named '${AzureCredentialAssetName}'. Make sure you have created one in this Automation Account."
    }

    #Connect to your Azure Account   	
    $null = Add-AzureRMAccount -Credential $Cred -Environmentname "AzureChinaCloud" -ErrorAction Stop
    
	# If there is a specific cloud service, then get all VMs in the service,
    # otherwise get all VMs in the subscription.
    #if ($ResourceGroupName) 
	#{ 
	#	$VMs = Get-AzureRMVM -resourcegroupname $ResourceGroupName
	#}
	#else{
	#	$VMs = Get-AzureRMVM -resourcegroupname Staging-VM
	#}

    # Stop each of the started VMs
 
	#$StartRtn = Start-AzureRMVM -Name vm-platform-stg-02 -resourcegroupname Staging-VM 
	#write-output $StartRtn.OperationStatus
    
Start-AzureRMVM -Name bimsolr-stg-01     -resourcegroupname Staging-VM 
Start-AzureRMVM -Name bimsolr-stg-02     -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-bimgit-stg-01   -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-doc-stg-01      -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-doc-stg-02      -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-job-stg-01      -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-message-stg-01  -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-nginx-stg-01    -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-nginx-stg-02    -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-platform-stg-01 -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-platform-stg-02 -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-puppetm-stg-01  -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-sixd-stg-01     -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-sixd-stg-02     -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-sync-stg-01     -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-view-stg-01     -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vm-view-stg-02     -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmcolliswkstg01    -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmcolliswkstg02    -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmcompstg01        -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmcompstg02        -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmdwgwkstg01       -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmdwgwkstg02       -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmexmsvrstg01      -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmproptywkstg01    -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmproptywkstg02    -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmrvtwkstg01       -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmrvtwkstg02       -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmrvtwkstg03       -resourcegroupname Staging-VM 
Start-AzureRMVM -Name vmrvtwkstg04       -resourcegroupname Staging-VM 

    
    
    
}