workflow Stop-AzureRMVMs
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
    
    # $AzureCredentialAssetName = "automationADaccount";
	
	#Get the credential with the above name from the Automation Asset store
    $Cred = Get-AutomationPSCredential -Name $AzureCredentialAssetName
    if(!$Cred) {
        Throw "Could not find an Automation Credential Asset named '${AzureCredentialAssetName}'. Make sure you have created one in this Automation Account."
    }

    #Connect to your Azure Account   	
    $null = Add-AzureRMAccount -Credential $Cred -Environmentname "AzureChinaCloud" -ErrorAction Stop
    
	# If there is a specific cloud service, then get all VMs in the service,
    # otherwise get all VMs in the subscription.
    # if ($ResourceGroupName) 
	#{ 
	#	$VMs = Get-AzureRMVM -ResourceGroupName $ResourceGroupName
	#}
	#else{
	#	$VMs = Get-AzureRMVM -ResourceGroupName Staging-VM
	#}

    # Stop each of the started VMs
    #$StopRtn = Stop-AzureRMVM -Name vm-platform-stg-02 -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name bimsolr-stg-01      -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name bimsolr-stg-02      -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-bimgit-stg-01    -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-doc-stg-01       -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-doc-stg-02       -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-job-stg-01       -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-message-stg-01   -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-nginx-stg-01     -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-nginx-stg-02     -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-platform-stg-01  -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-platform-stg-02  -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-puppetm-stg-01   -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-sixd-stg-01      -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-sixd-stg-02      -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-sync-stg-01      -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-view-stg-01      -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vm-view-stg-02      -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmcolliswkstg01     -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmcolliswkstg02     -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmcompstg01         -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmcompstg02         -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmdwgwkstg01        -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmdwgwkstg02        -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmexmsvrstg01       -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmexmwkstg01        -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmproptywkstg01     -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmproptywkstg02     -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmrvtwkstg01        -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmrvtwkstg02        -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmrvtwkstg03        -ResourceGroupName Staging-VM -Force -ErrorAction Continue
Stop-AzureRMVM -Name vmrvtwkstg04        -ResourceGroupName Staging-VM -Force -ErrorAction Continue

    
    
    
    #Write-Output $StopRtn.OperationStatus
	
}