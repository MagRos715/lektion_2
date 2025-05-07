# function that divide a number

# function, error

function divide {
    param ($a, $b)

    try {
        $result = $a/$b
        Write-Host "Result: $result"
    }
    catch {
        Write-Host "Error $_"
    }    
}

divide -a 10 -b 0