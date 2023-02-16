# Check for and install Windows updates
Set-ExecutionPolicy Unrestricted
Install-Module -Name PSWindowsUpdate
Add-WUServiceManager -ServiceID "7971f918-a847-4430-9279-4a52d1efe18d" -AddServiceFlag 7
$updates = Get-WindowsUpdate
if ($updates) {
    Install-WindowsUpdate -MicrosoftUpdate $updates -AcceptAll -AutoReboot
}
