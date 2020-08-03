choco install -y ultravnc 
cp ultravnc.ini "C:\Program Files\uvnc bvba\UltraVNC"
start-process "C:\Program Files\uvnc bvba\UltraVNC\winvnc" -ArgumentList "-run"
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name PortNumber -Value 3390
Get-Service -Name 'Remote Desktop Services UserMode Port Redirector' | Stop-Service -Force -Verbose
Get-Service -Name 'TermService' | Stop-Service -Force -Verbose
Get-Service -Name 'TermService' | Start-Service -Verbose
Get-Service -Name 'Remote Desktop Services UserMode Port Redirector' | Start-Service -Verbose
