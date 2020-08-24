choco install -y ultravnc 
cp ultravnc.ini "C:\Program Files\uvnc bvba\UltraVNC"
start-process "C:\Program Files\uvnc bvba\UltraVNC\winvnc" -ArgumentList "-run"
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name PortNumber -Value 3390

$SecurePassword = ConvertTo-SecureString "hello" -AsPlainText -Force
$UserAccount = Get-LocalUser -Name "vsonline"
$UserAccount | Set-LocalUser -Password $SecurePassword

Get-Service -Name 'Remote Desktop Services' | Restart-Service -Force -Verbose

choco install -y vim
