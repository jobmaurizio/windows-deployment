# Check if WinGet is installed
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "WinGet is not installed. Please install WinGet before running this script."
    exit 1
}

# Install TeamViewer
Write-Host "Installing TeamViewer..."
winget install --id TeamViewer.TeamViewer --silent --accept-package-agreements --accept-source-agreements

# Install Adobe Creative Cloud
Write-Host "Installing Adobe Creative Cloud..."
winget install --id Adobe.AdobeCreativeCloud --silent --accept-package-agreements --accept-source-agreements

# Install Google Drive
Write-Host "Installing Google Drive..."
winget install --id Google.Drive --silent --accept-package-agreements --accept-source-agreements

# Confirmation of installation
Write-Host "Installation of software complete."
