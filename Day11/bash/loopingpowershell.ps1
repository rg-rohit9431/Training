# Initial array
$names = @("Alice", "bob", "charlie")
$names | ForEach-Object { Write-Host  "hello, $_"}
