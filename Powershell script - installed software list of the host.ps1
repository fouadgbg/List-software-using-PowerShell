Get-Content c:\extract\server.txt
# Software Installed
#Variable $servers

$results= foreach( $server in $servers){

Write-Host "Processing Server $server"

Get-WmiObject -Class Win32_product -ComputerName $server | select __SERVER, Name, Version -ErrorAction SilentlyContinue
}
$results | export-Csv -Path C:\extract\software.csv