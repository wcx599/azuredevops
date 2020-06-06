$allvms = get-azurermvm -ResourceGroupName poc-vm | get-azurermvm -Status `
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









