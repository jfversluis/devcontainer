Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name PortNumber -Value 3390

$SecurePassword = ConvertTo-SecureString "hello" -AsPlainText -Force
$UserAccount = Get-LocalUser -Name "vsonline"
$UserAccount | Set-LocalUser -Password $SecurePassword

# Get-Service -Name 'Remote Desktop Services' | Restart-Service -Force -Verbose
$id = Get-WmiObject -Class Win32_Service -Filter "Name LIKE 'TermService'" | Select-Object -ExpandProperty ProcessId
Stop-Process $id -Force
