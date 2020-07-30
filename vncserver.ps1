choco install -y ultravnc 
cp ultravnc.ini "C:\Program Files\uvnc bvba\UltraVNC"
start-job { "C:\Program Files\uvnc bvba\UltraVNC\winvnc -run" }
