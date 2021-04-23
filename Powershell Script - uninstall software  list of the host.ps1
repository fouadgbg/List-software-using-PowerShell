$servers = Get-Content c:\extract\server.txt

foreach( $server in $servers){
$app = Get-WmiObject Win32_product -ComputerName $server | where {$_.name -eq "Adobe Acrobat Reader DC" }
$app.Uninstall()
}