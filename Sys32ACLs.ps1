# Enumerate access control for all executable files in System32
Get-ChildItem -Path "C:\Windows\System32" | Where-Object -Property Extension -EQ ".exe" | Get-Acl | Format-Table -Wrap -AutoSize
