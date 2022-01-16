$When = ((Get-Date).AddDays(-60)).Date
Get-ADUser -Filter {LastLogonDate -lt $When} -Properties * | select-object
samaccountname,givenname,surname,LastLogonDate | export-csv -path c:\ps|inactiveusers.csv