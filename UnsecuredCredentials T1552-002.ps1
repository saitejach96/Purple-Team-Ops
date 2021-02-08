
Get-ChildItem -Path HKCU:\ | Select-Object Name >> C:\Users\SAITEJA\Desktop\Output.csv
Write-Output $a.PSChildName
    $subkeys = (Get-ItemProperty  $a.pspath)
    Write-Output $subkeys.LastDateTime_EndScript
