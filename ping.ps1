# script to ping several addresses, to-do log list

$log_file = "ping_log.txt" # saves sessions

# ping something with a function try-catch
function network_test {
    param ($cpu_name)
    try {
        $ping = Test-Connection -ComputerName $cpu_name -Count 1 -ErrorAction Stop
        $message = "$cpu_name is avaliable"
        Write-Host $message
        Add-Content -Path $log_file -Value $message
    }
    catch {
        $message = "$cpu_name is not avaliable"
        Write-Host $message    }
        Add-Content -Path $log_file -Value $message
}


# list of all addresses, local and non local

$cpu_list = @("localhost","non-local-host","8.8.8.8","dn.se")

foreach ($cpu_name in $cpu_list) {
    network_test -cpu_name $cpu_name
}