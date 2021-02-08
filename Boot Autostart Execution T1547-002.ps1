$trigger = New-JobTrigger -AtStartup -RandomDelay 00:00:30
$trigger = New-JobTrigger -AtLogOn -RandomDelay 00:00:30

Register-ScheduledJob -Trigger $trigger -FilePath C:\WINDOWS\system32\notepad.ps1 -Name T1547-002-1
Register-ScheduledJob -Trigger $trigger -FilePath C:\WINDOWS\system32\notepad.ps1 -Name T1547-002-2