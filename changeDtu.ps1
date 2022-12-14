#set parameters for reqiured values
param ($resourcegroupname, $servername, $elasticpoolname, $dtu)

#check if required parameters have been entered, promt if they havent 
if ($resourcegroupname -eq $null) {
$resourcegroupname = read-host -Prompt "Please enter a -resourcegroupname" 
}
if ($servername -eq $null) {
$servername = read-host -Prompt "Please enter a -servername" 
}
if ($elasticpoolname -eq $null) {
$elasticpoolname = read-host -Prompt "Please enter a -elasticpoolname" 
}
if ($dtu -eq $null) {
$dtu = read-host -Prompt "Please enter a number for new dtu value (-dtu)" 
}

#run Set-AzSqlElasticPool usig provided values
Set-AzSqlElasticPool -ResourceGroupName "$resourcegroupname" -ServerName "$servername" -ElasticPoolName "$elasticpoolname" -Dtu "$dtu"

#print to screen feedback from script
write-host "Updating Elastic Pool: $elasticpoolname on server: $servername to Dtu $dtu ..."