# Powershell script that test for computer connections.
# Script ping a list of machines contained in machines.txt 
$hosts = get-content .\machines.txt
foreach ($A in $hosts) {
$ping = test-connection $A -count 1 -quiet 
	if ($ping -eq $TRUE) {
		write-host "$A connected"
	} else {
	write-host "$A not responding"
	}
}