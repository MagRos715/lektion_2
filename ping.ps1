# script to ping several addresses, to-do log list


# ping something with a function try-catch
function network_test {
    param ($cpu_name)
    try {
        $ping = Test-Connection -ComputerName $cpu_name -Count 1 -ErrorAction Stop
        Write-Host "$cpu_name is avaliable"
    }
    catch {
        Write-Host "$cpu_name is not avaliable"
    }
}


# list of all addresses, local and non local

$cpu_list = @("localhost","non-local-host","8.8.8.8","dn.se")

foreach ($cpu_name in $cpu_list) {
    network_test -cpu_name $cpu_name
}