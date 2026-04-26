$ExtFile = "extensions.txt"

if (-not (Get-Command code -ErrorAction SilentlyContinue)) {
    Write-Error "'code' command not found."
    exit 1
}

if (-not (Test-Path $ExtFile)) {
    Write-Error "$ExtFile not found."
    exit 1
}

Get-Content $ExtFile | ForEach-Object {
    $extension = $_.Trim()

    if ([string]::IsNullOrWhiteSpace($extension) -or $extension.StartsWith("#")) {
        return
    }

    $extensionId = $extension -replace "@.*$", ""

    Write-Host "Installing: $extensionId"
    code --install-extension $extensionId --force
}
