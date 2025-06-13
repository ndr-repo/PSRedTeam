# Find all log files in AppData of logged in user account
Get-ChildItem -Recurse -Path "$($env:LOCALAPPDATA)" | Where-Object -Property Extension -EQ ".log" | Get-ItemProperty | Sort-Object -Property LastWriteTimeUtc | Format-Table -HideTableHeaders -Property LastWriteTimeUtc,FullName -Wrap -AutoSize
