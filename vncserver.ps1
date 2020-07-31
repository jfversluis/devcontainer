choco install -y ultravnc 
cp ultravnc.ini "C:\Program Files\uvnc bvba\UltraVNC"
start-process "C:\Program Files\uvnc bvba\UltraVNC\winvnc" -ArgumentList "-run"

