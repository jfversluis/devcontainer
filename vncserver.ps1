choco install -y ultravnc 
cp ultravnc.ini "C:\Program Files\uvnc bvba\UltraVNC"
start-process powershell -ArgumentList "'C:\Program Files\uvnc bvba\UltraVNC\winvnc' -run" -WindowStyle hidden

