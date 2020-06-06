workflow Start-BIMProdVM
{   
    param (
        [Parameter(Mandatory=$false)] 
        [String]  $AzureCredentialAssetName = 'automationADaccount',
        
        [Parameter(Mandatory=$false)]
        [String] $AzureSubscriptionIdAssetName = 'AzureSubscriptionId',

        [Parameter(Mandatory=$false)] 
        [String] $ResourceGroupName = 'BIM-VM'
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
    
Start-AzureRMVM -Name vmexaminewk01   -resourcegroupname $ResourceGroupName
Start-AzureRMVM -Name vmexaminewk02   -resourcegroupname $ResourceGroupName
 
    
}