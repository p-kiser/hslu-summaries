Enter-PSSession $Computer; 

# open
Invoke-Command { 
    $items = (New-Object -com "WMPlayer.OCX.7").cdromcollection.item(0);$items.eject(); 
} 
#close
Invoke-Command -Computername $Computer { 
    $items = (New-Object -com "WMPlayer.OCX.7").cdromcollection.item(0);$items.eject(); 
} 