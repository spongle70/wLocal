$computers = @("server","surgery12") #list of computers
foreach ($computer in $computers) {
    $wmi = ""
    if (Test-Connection $computer -Quiet){
        $wmi = Get-WmiObject -Class win32_OperatingSystem -ComputerName $computer
        if (($wmi.ConvertToDateTime($wmi.LocalDateTime) - $wmi.ConvertToDateTime($wmi.LastBootUpTime)).Days -gt 6){
            Start-Process "cmd.exe"  "/c C:\Scripts\wBase\Msg\tmessageH.bat RebootTheServer"
        }
    }
}