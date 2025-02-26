# PowerShell Commands Example

## Introduction
This project demonstrates basic PowerShell commands, including how to print a message to the console and how to list the contents of a directory.

## Commands

### Write-Host "Hello World"
The `Write-Host` cmdlet is used to display messages directly to the console. This is useful for providing feedback to the user or for debugging purposes.

#### Example
```powershell
Write-Host "Hello World"
````


### Get-ChildItem C:
The `Get-ChildItem` cmdlet retrieves the items and child items in a specified location. It is commonly used to list the contents of directories.

#### Syntax
```powershell
Get-ChildItem [-Path] <string> [<CommonParameters>]
```


### Read-Host
The Read-Host prompts the user to enter their name and age, then displays the information back to the user.


### Code
```powershell
# Prompt the user to enter their name
$name = Read-Host -Prompt "Enter your name"

# Prompt the user to enter their age
$age = Read-Host -Prompt "Enter your age"

# Display the input back to the user
Write-Host "Hello, $name! You are $age years old."


