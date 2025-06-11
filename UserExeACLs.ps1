# Enumerate access control for all executable files in AppData of logged in user account
Get-ChildItem -Recurse -Path "$($env:LOCALAPPDATA)" | Where-Object -Property Extension -EQ ".exe" | Get-Acl | Format-Table -Wrap -AutoSize
