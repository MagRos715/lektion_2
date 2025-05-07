# function to greets user
function greet {
    param ($name)
    Write-Host "Hello $name"
}

# loop to greets everybody
function greet_all {
    param ($all_names)
    foreach ($name in $all_names) {
        greet -name $name
    }
}

# array with all names
$all_names = @("Nisse","Kalle")
greet_all -all_names $all_names