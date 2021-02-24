$SecurePassword = ConvertTo-SecureString "hello" -AsPlainText -Force
$UserAccount = Get-LocalUser -Name "vsonline"
$UserAccount | Set-LocalUser -Password $SecurePassword

Get-Service -Name 'Remote Desktop Services' | Restart-Service -Force -Verbose
