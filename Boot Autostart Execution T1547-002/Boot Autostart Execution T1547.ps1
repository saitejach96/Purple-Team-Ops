#$trigger = New-JobTrigger -AtStartup -RandomDelay 00:00:30
#$trigger = New-JobTrigger -AtLogOn -RandomDelay 00:00:30
#Register-ScheduledJob -Trigger $trigger -FilePath C:\WINDOWS\system32\notepad.ps1 -Name T1547-002-1
#Register-ScheduledJob -Trigger $trigger -FilePath C:\WINDOWS\system32\notepad.ps1 -Name T1547-002-2
#$val = Get-Item -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run-Name
#Set-Itemproperty -path 'HKLM\SYSTEM\CurrentControlSet\Control\Lsa\' -Name 'Authentication Packages' -value $val+'C:\Program Files\VMware\VMware Tools\vmtoolsd.exe'


$Val=Get-ItemPropertyValue -path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Audit\AuditPolicy\ -Name AuditPolicySD

Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Audit\AuditPolicy\ -Name AuditPolicySD -Value $Val+"Hi, My DLL Path"


