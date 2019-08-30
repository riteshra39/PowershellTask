# Pipe Delimiter

get-service | Export-Csv services1.csv -Delimiter "|"

 

# A-Z output

$C = 0

for ($C = 0; $C -lt 26; $C++)

{

    [char](65 + $C)

}

 

#The out of service required in format

 

$services = get-service

$output=foreach ($service in $services)

{ 

write-host "The display name of service "($service.Name) -nonewline

Write-Host " is"($service.Displayname)

}

 

#Get-ADComputer -Filter * | Get-HotFix 
 It will not provide expected out as get-hotfix command accept piple by  ByPropertyName (ComputerName). And there is no properties computer name in get-adcomputer due to filtering

 Get-Help get-adcomputer -Online+

 #write a command to list the processes from a list of computer from any txt file.
 $computers = Get-Content -Path C:\demo\computers.txt
 foreach ($computer in $computers)
 
 {
 Get-Process
 }


 #Create a script which can delete the files only *.log from the "C:\demo\files" location.

 Get-ChildItem -Path C:\demo\files\*.log | Remove-Item

 #
 ---------------------------
 Pending

 Check out if there is any way we can eliminate the #information about the type of object from the top of an exported csv file
  Create a csv file with the name,password as a columns , imort that csv and create local user using that.
  I will provide first number and last number . need an output as If the number is odd or even.



