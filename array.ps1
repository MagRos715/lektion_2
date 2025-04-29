#create an array with a fo-loop

# Array of fruits
$fruit = @("apple", "pear", "kiwi", "passionfruit")
# Loop to print fruits from array
foreach ($i in $fruit) {
    Write-Host "Fruit: @$i"
}