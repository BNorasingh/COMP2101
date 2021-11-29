Write-Host "Network Displayed:"

get-ciminstance win32_networkadapterconfiguration | where-object ipenabled |
select-object Description, index,
@{n="Subnet";e={$_.IPSubnet}},
@{n="DNS Domain";e={$_.DNSDomain}},
@{n="DNS Server";e={$_.DNSServerSearchOrder}},
@{n="IPAddresses";e={$_.IPaddress}} | format-table