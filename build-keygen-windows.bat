@echo off
echo ============================================
echo    Kompajliranje Key Generator-a
echo ============================================
echo.
cd keygen
g++ keygen.cpp -o keygen.exe -std=c++17 -static -static-libgcc -static-libstdc++
if %ERRORLEVEL% EQU 0 (
    echo [OK] keygen.exe kreiran uspjesno!
    echo [OK] Standalone exe - ne treba DLL fajlove.
) else (
    echo [GRESKA] Potreban je g++ kompajler (MinGW)
    echo Preuzmi sa: https://www.mingw-w64.org/
)
pause
