@echo off
echo ========================================
echo ShopHub E-Commerce App - Run Script
echo ========================================
echo.

REM Try to find Flutter
set FLUTTER_PATH=
if exist "C:\flutter\bin\flutter.bat" (
    set FLUTTER_PATH=C:\flutter\bin
    goto :found
)
if exist "C:\src\flutter\bin\flutter.bat" (
    set FLUTTER_PATH=C:\src\flutter\bin
    goto :found
)
if exist "%LOCALAPPDATA%\flutter\bin\flutter.bat" (
    set FLUTTER_PATH=%LOCALAPPDATA%\flutter\bin
    goto :found
)
if exist "%USERPROFILE%\flutter\bin\flutter.bat" (
    set FLUTTER_PATH=%USERPROFILE%\flutter\bin
    goto :found
)

echo ERROR: Flutter not found in common locations!
echo.
echo Please either:
echo 1. Install Flutter from https://flutter.dev/docs/get-started/install
echo 2. Or edit this script and set FLUTTER_PATH to your Flutter installation
echo.
pause
exit /b 1

:found
echo Found Flutter at: %FLUTTER_PATH%
echo.

REM Add Flutter to PATH for this session
set PATH=%FLUTTER_PATH%;%PATH%

REM Navigate to project directory
cd /d "%~dp0"

echo Step 1: Installing dependencies...
call flutter pub get
if errorlevel 1 (
    echo ERROR: Failed to install dependencies!
    pause
    exit /b 1
)
echo.

echo Step 2: Checking available devices...
call flutter devices
echo.

echo Step 3: Running the app on Chrome (web)...
echo If you want to run on a different device, press Ctrl+C and run manually:
echo   flutter run -d windows    (for Windows desktop)
echo   flutter run               (for Android emulator)
echo.
call flutter run -d chrome

pause

