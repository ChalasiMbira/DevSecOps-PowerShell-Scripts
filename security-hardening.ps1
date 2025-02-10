# Disable Guest Account
Set-LocalUser -Name "Guest" -Enabled $false

# Enforce Secure Script Execution
Set-ExecutionPolicy RemoteSigned -Scope LocalMachine
