<#
    New VM Steps
    1. Config Firewall to be able to respond and send pings
    2. Turn on admin share
    3. Rename Computer / Join to Domain
    4. Set region to EU/Europe 
#>

# Step 1
New-NetFirewallRule -DisplayName "ICMPv4-In-All" -Direction Inbound -Protocol ICMPv4 -Enabled
New-NetFirewallRule -DisplayName "ICMPv4-Out-All" -Direction Outbound -Protocol ICMPv4 -Enabled

# Step 2
New-Item HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
Set-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -
