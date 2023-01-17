#Get-Printer -ComputerName 192.168.1.22 | Format-List Name,DriverName

#Get-Printer -ComputerName reception1 | where Shared -eq $true | fl Name

Add-Printer -ConnectionName \\192.168.1.22\"BROTHER"
