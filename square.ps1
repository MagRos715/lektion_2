# function that square a number


#function
function square {
    param ($number)
    return $number * $number
    
}


# print result
$result = square 37654
Write-Host "The square is $result"