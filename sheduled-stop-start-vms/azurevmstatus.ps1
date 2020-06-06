function Get-AzureRmVMStatus {
  [CmdletBinding()]
  param (
    #The name of a resouce group in your subscription
    [Parameter(Mandatory=$true)]
    [string]
    $ResourceGroupName
    ,
    #VM name filter
    [Parameter()]
    [string]
    $Name = '*'
  )
  Get-AzureRmVM -ResourceGroupName $ResourceGroupName |
    Get-AzureRmVM -Status |
    Select-Object -Property Name, Statuses |
    Where-Object {$_.Name -like $Name} |
    ForEach-Object {
      $VMName = $_.Name
      $_.Statuses |
        Where-Object {$_.Code -like 'PowerState/*'} |
        ForEach-Object {
          New-Object -TypeName psobject -Property @{
            Name   = $VMName
            Status = $_.DisplayStatus
          }
        }
      }
}


Get-AzureRmVMStatus -ResourceGroupName staging -name *




## 每个RG独立显示开机服务器名称，开机状态
get-azurermvm -ResourceGroupName staging-vm | get-azurermvm -Status `
-WarningAction SilentlyContinue |
    ForEach-Object {
      $VMName = $_.Name
      $_.Statuses |
        Where-Object {$_.Code -like 'PowerState/*'} |
        Where-Object {$_.DisplayStatus -eq 'VM running'}  |
        ForEach-Object {
          New-Object -TypeName psobject -Property @{
            Name   = $VMName
            Status = $_.DisplayStatus
          } | Format-Table -AutoSize 
        }
      } 
      
      
      ##-ErrorAction SilentlyContinue 

## 每个RG独立显示开机服务器名称


get-azurermvm -ResourceGroupName staging-vm | get-azurermvm -Status `
-WarningAction SilentlyContinue |
    ForEach-Object {
      $VMName = $_.Name
      $_.Statuses |
        Where-Object {$_.Code -like 'PowerState/*'} |
        Where-Object {$_.DisplayStatus -eq 'VM running'}  |
        ForEach-Object {
          Write-Host $VMName
           
          } | Format-Table -AutoSize 
        }


