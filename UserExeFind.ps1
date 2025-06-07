# Find all executable files in AppData of logged in Windows account
Get-ChildItem -Recurse -Path "$($env:LOCALAPPDATA)" | Where-Object -Property Extension -EQ ".exe" | Get-ItemProperty | Sort-Object -Property LastWriteTimeUtc | Format-Table -HideTableHeaders -Property LastWriteTimeUtc,FullName -Wrap -AutoSize
