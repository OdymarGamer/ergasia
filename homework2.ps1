# Save this script as "CustomScript.ps1"

function Set-ChromeAsDefault {
    Write-Host "Setting Chrome as default browser..."
    Start-Process -FilePath "ms-settings:defaultapps"
    Write-Host "Please manually set Chrome as the default browser in the settings."
}

function Open-URLDefault {
    Write-Host "Opening URL in the default browser..."
    $url = "https://gamma.app/docs/-dqf3n9p5eqvoimm" # Replace with your desired URL
    Start-Process $url
}

function Open-URLInChrome {
    Write-Host "Opening URL in Google Chrome..."
    $url = "https://gamma.app/docs/-dqf3n9p5eqvoimm?mode=doc" # Replace with your desired URL
    Start-Process -FilePath "chrome.exe" -ArgumentList $url
}

function Menu {
    Clear-Host
    Write-Host "Custom Script Menu" -ForegroundColor Cyan
    Write-Host "1. Set Chrome as Default Browser"
    Write-Host "2. Open Homework in Default Browser"
    Write-Host "3. Open Homework in Chrome"
    Write-Host "4. Go Back"
    Write-Host
    $choice = Read-Host "Enter the number of your choice"
    switch ($choice) {
        1 { Set-ChromeAsDefault }
        2 { Open-URLDefault }
        3 { Open-URLInChrome }
        4 { Write-Host "Exiting..."; return }
        default { Write-Host "Invalid choice. Please try again." }
    }
    Pause
    Menu
}

# Start the menu
Menu
