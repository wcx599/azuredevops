workflow stop-allvms
{
$Cred = get-automationpscredential -name "bimvmautomation";
Login-AzureRmAccount -Credential $Cred -Environmentname AzureChinaCloud
select-azurermsubscription -SubscriptionName "Windows Azure Enterprise Trial(Converted to EA)"

Parallel
    {
##
## TEST GROUP ##
##
stop-azurermvm -resourcegroupname "test-vm" -name "bimsolr01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "bimsolr02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-bimgit-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-doc-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-doc-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-elk-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-job-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-job-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-jumpbox-test" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-message-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-message-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-nginx-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-nginx-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-platform-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-platform-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-puppetmaster-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-redis-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-redis-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-redis-test-03" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-sixd-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-sixd-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-speed-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-speed-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-sync-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-sync-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-view-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-view-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-zabbix-stg" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-zookeeper-test-01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-zookeeper-test-02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vm-zookeeper-test-03" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmcolisnwktest1" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmcolisnwktest2" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmcompwktest1" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmcompwktest2" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmdwgwktest01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmdwgwktest02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmgjktest" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmjumpboxtest" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmkidsomstest" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmproptywktest1" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmproptywktest2" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmrvtwktest01" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmrvtwktest02" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmrvtwktest03" -force
stop-azurermvm -resourcegroupname "test-vm" -name "vmrvtwktest04" -force
##
## STAGING GROUP ## 
##
stop-azurermvm -resourcegroupname "staging-vm" -name "bimsolr-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "bimsolr-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-bimgit-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-doc-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-doc-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-elk-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-job-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-message-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-message-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-nginx-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-nginx-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-platform-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-platform-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-puppetm-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-redis-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-redis-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-redis-stg-03" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-sixd-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-sixd-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-speed-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-speed-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-sync-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-sync-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-view-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-view-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-zookeeper-stg-01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-zookeeper-stg-02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vm-zookeeper-stg-03" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmcolliswkstg01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmcolliswkstg02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmcompstg01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmcompstg02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmdwgwkstg01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmdwgwkstg02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmexmsvrstg01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmproptywkstg01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmproptywkstg02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmrvtwkstg01" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmrvtwkstg02" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmrvtwkstg03" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmrvtwkstg04" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmwbimdbstg" -force
stop-azurermvm -resourcegroupname "staging-vm" -name "vmwbimwebstg" -force
    }


}