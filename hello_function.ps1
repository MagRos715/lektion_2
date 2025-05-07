# Function to greet user

function greet {
    param ($name)
    Write-Host "Hello $name"
}

greet -name "Alice"
