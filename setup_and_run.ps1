# Flutter E-Commerce App Setup and Run Script
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "ShopHub E-Commerce App Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Flutter is installed
Write-Host "Checking Flutter installation..." -ForegroundColor Yellow
$flutterCmd = Get-Command flutter -ErrorAction SilentlyContinue

if (-not $flutterCmd) {
    Write-Host "ERROR: Flutter is not installed or not in PATH!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Flutter from: https://flutter.dev/docs/get-started/install" -ForegroundColor Yellow
    Write-Host "Or add Flutter to your system PATH." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Common Flutter installation paths:" -ForegroundColor Cyan
    Write-Host "  - C:\flutter\bin" -ForegroundColor White
    Write-Host "  - C:\src\flutter\bin" -ForegroundColor White
    Write-Host "  - $env:LOCALAPPDATA\flutter\bin" -ForegroundColor White
    Write-Host ""
    exit 1
}

Write-Host "Flutter found!" -ForegroundColor Green
Write-Host ""

# Get Flutter version
Write-Host "Flutter version:" -ForegroundColor Yellow
flutter --version
Write-Host ""

# Navigate to project directory
$projectPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectPath

# Step 1: Clean (optional)
Write-Host "Step 1: Cleaning project..." -ForegroundColor Yellow
flutter clean
Write-Host ""

# Step 2: Get dependencies
Write-Host "Step 2: Installing dependencies..." -ForegroundColor Yellow
flutter pub get
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to install dependencies!" -ForegroundColor Red
    exit 1
}
Write-Host "Dependencies installed successfully!" -ForegroundColor Green
Write-Host ""

# Step 3: Check for devices
Write-Host "Step 3: Checking available devices..." -ForegroundColor Yellow
flutter devices
Write-Host ""

# Step 4: Run the app
Write-Host "Step 4: Running the app..." -ForegroundColor Yellow
Write-Host "Available options:" -ForegroundColor Cyan
Write-Host "  1. Web (Chrome) - Recommended for quick testing" -ForegroundColor White
Write-Host "  2. Windows Desktop" -ForegroundColor White
Write-Host "  3. Android Emulator (if available)" -ForegroundColor White
Write-Host ""

$choice = Read-Host "Enter choice (1-3) or press Enter for Chrome (default)"

switch ($choice) {
    "2" { 
        Write-Host "Running on Windows Desktop..." -ForegroundColor Green
        flutter run -d windows
    }
    "3" { 
        Write-Host "Running on Android..." -ForegroundColor Green
        flutter run
    }
    default { 
        Write-Host "Running on Chrome..." -ForegroundColor Green
        flutter run -d chrome
    }
}

