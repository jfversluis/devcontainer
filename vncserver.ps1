choco install -y ultravnc 
cp ultravnc.ini "C:\Program Files\uvnc bvba\UltraVNC"
Start-Job -ScriptBlock { & 'C:\Program Files\uvnc bvba\UltraVNC\winvnc -run' }
