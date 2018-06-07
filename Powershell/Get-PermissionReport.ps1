function Get-PermissionReport {
    <# 
      .SYNOPSIS  
        Send a WOL packet to a broadcast address
      .PARAMETER path
       The MAC address of the device you want to wake up
      .PARAMETER reportpath
       The IP address where the WOL packet will be sent to
      .EXAMPLE 
       Get-PermissionReport -path "\\sigrist.biz\dfs\install\temp" -reportpath "D:\Scripts\Test\ACL.csv"
    #>

    [CmdletBinding()]
    param(
    [Parameter(Mandatory=$True,Position=1)]
    [string]$path,
    [string]$reportpath
    )

    #script scans for directories under shared folder and gets acl(permissions) for all of them
    Get-ChildItem -Recurse $path | where { $_.PsIsContainer } | ForEach-Object { $path1 = $_.fullname; Get-Acl $_.Fullname | % { $_.access | Add-Member -MemberType NoteProperty '.\Application Data' -Value $path1 -passthru }} | Export-Csv $reportpath

}

Get-PermissionReport -path "\\sigrist.biz\dfs\install\temp" -reportpath "D:\Scripts\Test\ACL.csv"