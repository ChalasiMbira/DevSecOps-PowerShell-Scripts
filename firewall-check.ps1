# Check if Windows Firewall is enabled
Get-NetFirewallProfile | Select-Object Name, Enabled

# List all running services
Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object DisplayName, Status
