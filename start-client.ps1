$PATH_TO_ZROK="C:\zrok\zrok.exe"
$ENSHROUDED_PORT = "15637"

do {
    if (Test-Path $PATH_TO_ZROK -PathType Leaf) {
        break
    } else {
        Write-Host -ForegroundColor Red "==== PATH_TO_ZROK incorrect! ===="
        Write-Host -ForegroundColor Red "(update PATH_TO_ZROK in this script to avoid seeing this message)"
        
        $PATH_TO_ZROK = Read-Host "Enter the correct path"
    }
} while ($true)

if (Test-Path "$env:USERPROFILE\.zrok\environment.json" -PathType Leaf) {
} else {
    Write-Host -ForegroundColor Red "zrok not enabled! enable zrok before continuing!"
    return
}

$PRIVATE_ACCESS_TOKEN = Read-Host "Enter the private access token"

Start-Process -FilePath "$PATH_TO_ZROK" `
    -ArgumentList "access private $PRIVATE_ACCESS_TOKEN --bind 127.0.0.1:$ENSHROUDED_PORT" `
    -PassThru