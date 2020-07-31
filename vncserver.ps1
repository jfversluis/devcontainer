choco install -y ultravnc 
cp ultravnc.ini "C:\Program Files\uvnc bvba\UltraVNC"
Start-Process "C:\Program Files\uvnc bvba\UltraVNC\winvnc" -ArgumentList "-run"
