$QueryLink = 'https://api.proxynova.com/comb?query='+$args[0]
#
# Test Case for troubleshooting URLs (Uncomment to activate):
# Write-Host $QueryLink
#

(Invoke-WebRequest -uri $QueryLink -Method Get -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36').Content | ConvertFrom-Json |  Select-Object -ExpandProperty count
(Invoke-WebRequest -uri $QueryLink -Method Get -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36').Content | ConvertFrom-Json |  Select-Object -ExpandProperty lines

