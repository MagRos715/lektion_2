# functio try, catch, finally

function Number-test {
    param ($number)
    try {
        if ($number -lt 0) {
            throw "Negative numbers are not supported"
        }
        Write-Host "Number is: $number"
    }
    catch {
        Write-Host "Error occured: $_"
    }
    finally {
        Write-Host "Function is complete!"
    }
}

Number-test -number 1