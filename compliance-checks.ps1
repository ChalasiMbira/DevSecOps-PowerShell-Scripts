# Get all installed software
Get-WmiObject -Class Win32_Product | Select-Object Name, Version, Vendor
