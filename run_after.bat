@echo off
title Real-ESRGAN RUN ONLY (FIXED)

echo ==========================
echo Real-ESRGAN RUN DEMO
echo ==========================

:: ==========================
:: 1. CHECK VENV
:: ==========================
if not exist venv\Scripts\python.exe (
    echo [ERROR] venv not found or broken!
    echo Run setup.bat first.
    pause
    exit /b
)

:: ==========================
:: 2. RUN DIRECTLY (NO ACTIVATE)
:: ==========================
echo Using virtual environment Python...

venv\Scripts\python.exe inference_realesrgan.py -n RealESRGAN_x4plus -i inputs -o results --fp32

:: ==========================
:: 3. CHECK ERROR LEVEL
:: ==========================
if %errorlevel% neq 0 (
    echo.
    echo ==========================
    echo [ERROR] Real-ESRGAN crashed!
    echo ==========================
    pause
    exit /b
)

:: ==========================
:: 4. SUCCESS
:: ==========================
echo.
echo ==========================
echo DONE - check /results folder
echo ==========================
pause