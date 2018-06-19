#Dieses Script listet die Installierte Software aller Computer in Server.txt in ein CSV auf. 
Function RunCommand($Credential) {
    BEGIN {}
    PROCESS {
    $Server = "$_"
        if ($_ -ne "") {
            Try { 
                Write-host "Get installed software from $Server"
                $ret = Get-WmiObject -computername $Server -Credential $Credential -Class Win32_Product
                $ret | out-file $LogFile -append
                return $ret                
            }
            Catch
            {
                $ErrorMessage = $_.Exception.Message
                $FailedItem = $_.Exception.ItemName
                "{0:yyyy-MM-dd HH:mm:ss.fff}`t{1}`t{2}`t{3}" -f (Get-Date), $Server, $ErrorMessage, $FailedItem | out-file $LogFile -append
            }

        }
    }
    END {}
}
cls

$Credential = (Get-Credential)

$ScriptPath = Split-Path $MyInvocation.MyCommand.Path
$LogFile = $Scriptpath+"\Output.txt"

"{0:yyyy-MM-dd HH:mm:ss.fff}`tSTART" -f (Get-Date) | out-file $LogFile -append
Get-Content $Scriptpath"\ServerListSmall.txt" | RunCommand($Credential) | Export-Csv -Delimiter ";" -Path ".\Software.csv" -NoTypeInformation
"{0:yyyy-MM-dd HH:mm:ss.fff}`tEND" -f (Get-Date) | out-file $LogFile -append
"" | out-file $LogFile -append




