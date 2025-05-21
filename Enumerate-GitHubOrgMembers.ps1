$Target = $args[0]
$pwd = Get-Location
(Invoke-WebRequest -Uri "https://api.github.com/orgs/$Target/members" -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36" -Method Get).Content | Out-File $pwd\$Target-org-Github-users.json utf8 -Force
Write-Host "`nOrganization Overview: $Target" -ForegroundColor Red
Get-Content $pwd\$Target-org-Github-users.json -Encoding UTF8 | ConvertFrom-Json | Sort-Object site_admin, login | Format-Table -Wrap -Autosize -Property login, id, type, site_admin, url, html_url 
