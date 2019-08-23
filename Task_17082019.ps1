#Reverse Output
"Ritesh".Replace("Ritesh","hsetiR")
#
Write-Host "Give First No"
[int]$Number1=Read-Host
Write-Host "Give Second No"
[int]$Number2=Read-Host
$output= write-host "Add numbers"($Number1+$Number2)
Write-Host "Give First No"
[int]$Number1=Read-Host
Write-Host "Give Second No"
[int]$Number2=Read-Host
$output= write-host "Add numbers"($Number1*$Number2)
Write-Host "Give First No"
[int]$Number1=Read-Host
Write-Host "Give Second No"
[int]$Number2=Read-Host
$output= write-host "Add numbers"($Number1-$Number2)
Write-Host "Give First No"
[int]$Number1=Read-Host
Write-Host "Give Second No"
[int]$Number2=Read-Host
$output= write-host "Add numbers"($Number1/$Number2)

# Command to verify randon no
Get-Command -Noun *random*
get-help Get-Random -Online
Get-Random
#Command that display current data and time
Get-Command -Noun *date*
get-date | Get-Member
#Type of object 
System.DateTime

# to get hotfix
Get-Command -Noun *hotfix*
Get-HotFix
# Display Newest event from security
Get-Command -Noun *event*
Get-Help Get-EventLog -Examples
Get-Help Get-EventLog -Online
Get-EventLog -LogName Security -Newest 50
# Regex




Multiple condition can be used for Switch

$service = Get-Service -Name Appinfo
switch($service.Status)
{
Running {Write-Host "service is Running"}
Suspended {Write-Host "service is Suspended"}
stopped {Write-Host "service is Stopped"}
}

"Dinesh" -match "in"
"Dinesh" -match "ni"#false
"Dinesh" -match "^d"
"Dinesh" -match "^d$" #false

“Dinesh” –match “d[ia]nesh”

## No of occurence

d{3}
"Dinesh" -match "^\D{6}$" #True---How many character will repeat is defined in bracket
"Dinesh" -match "^\D{5}$" #False
"Dinesh" -match "^\D{2,6}$" #True
"Dinesh" -match "^\D{2,5}$" #False
"Dinesh" -match "^\D{2,8}$" #True (First is minimum and second is maximum)
## for loop

$i=0
For ($i=0;$i –lt 10;$i++)

{ $i
}



# to match IP address
"192.168.1.1" -match "^\d{3}\.\d{3}\.\d{1}\.\d{1}$"

# to contains 2 numeric digit

Get-ChildItem "C:\Windows" | Where-Object {$_.name -match "\d\d"}

# to check content
Get-Content -Path C:\Windows\WindowsUpdate.log | Where-Object {$_ -match "PTError: 0x80072ee2"}

# to check email address
'riteshrai39@gmail.com' -match "\w+\.\w"

# to matchSID
Get-Command -Noun *SID*



"S-1-5-21-2477072628-3266017078-3553918277-134343" -match "[\w]{1}-[\d]{1}-[\d]{1}-[\d]{2}-[\d]{10}-[\d]{10}-[\d]{10}-[\d]{6}"
'