# List open network ports
$openPorts = Get-NetTCPConnection | Select-Object LocalPort, State | Sort-Object LocalPort

# Block CI/CD deployment if SSH (22) or RDP (3389) is open
foreach ($port in $openPorts) {
    if ($port.LocalPort -eq 22 -or $port.LocalPort -eq 3389) {
        Write-Host "⚠ Security Alert: Port $($port.LocalPort) is open! CI/CD deployment blocked!"
        exit 1  # Stops pipeline
    }
}
