function Invoke-ExtSearch { Get-ChildItem -File -Recurse $(Get-Location) -ErrorAction SilentlyContinue | Where-Object -Property Extension -EQ $args | Select-Object -Property Extension,Length,LastWriteTimeUtc,FullName | Sort-Object -Property LastWriteTimeUtc,Length }
function Get-PSFunctionHistory { (Search-PSHistory -Pattern "^function " | Out-String -Stream | rg -oP "function\ .*\{" ) -replace "\ \{.*","" | Sort-Object -Unique }
function Search-PSHistory {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Pattern,
        [switch]$SimpleMatch,
        [switch]$Unique
    )
    Write-Output "`n[+] Matched Powershell Command History:"
    Get-PSHistory -Unique:$Unique |
        Select-String -Pattern $Pattern -SimpleMatch:$SimpleMatch | ForEach-Object { Write-Output $_}
}