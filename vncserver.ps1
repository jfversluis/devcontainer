choco install -y ultravnc 
cp ultravnc.ini "C:\Program Files\uvnc bvba\UltraVNC"
start-process "C:\Program Files\uvnc bvba\UltraVNC\winvnc" -ArgumentList "-run"
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name PortNumber -Value 3390
Set-ADAccountPassword -Identity $user -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "hello" -Force)
Get-Service -Name 'Remote Desktop Services' | Stop-Service -Force -Verbose
Get-Service -Name 'Remote Desktop Services' | Start-Service -Verbose
