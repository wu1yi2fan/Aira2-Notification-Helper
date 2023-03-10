Add-Type -AssemblyName System.Windows.Forms
$global:traynoti = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$traynoti.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
$traynoti.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info
$traynoti.BalloonTipTitle = "Aria2 Notification Helper"
$traynoti.BalloonTipText = "Aria2 Download Complete!"
$traynoti.Visible = $true
$traynoti.ShowBalloonTip(10)