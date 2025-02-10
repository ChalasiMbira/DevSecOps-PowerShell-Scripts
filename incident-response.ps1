# Get last 5 failed login attempts
$failedLogins = Get-EventLog -LogName Security -InstanceId 4625 -Newest 5

# Save failed login attempts to a log file
$failedLogins | Out-File -FilePath "C:\SecurityLogs\failed-logins.log"

# Display on screen
$failedLogins
