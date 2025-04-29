# implemantation of switch statement
# Use switch to print messages depending on day of week

# read day of week
$day = Read-Host "Print day of week: "

# switch depending on day of week
switch ($day) {
    "monday" { Write-Host "New week, new oportuities" }
    "friday" { Write-Host "Taco friday" }
    Default {Write-Host "Business as usual"}
}