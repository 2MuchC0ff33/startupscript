# Check for and install Windows updates
$updates = Get-WindowsUpdate
if ($updates) {
    Install-WindowsUpdate -Updates $updates -AcceptAll -AutoReboot
}
