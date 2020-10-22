$list= 1..254 
foreach ($ip in $list)
{$result = Get-WmiObject Win32_PingStatus -filter "address='192.168.0.$IP'"
if ($result.statuscode -eq 0)
{
write-host "$IP Server is up"
}
else
{
Write-host "$IP Server is down"
}
}
