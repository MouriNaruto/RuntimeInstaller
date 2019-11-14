@echo off
echo.
echo Runtime Auto Installer 1.1
echo (c) 2019 Mouri_Naruto. All rights reserved.
echo.
echo Installing Visual C++ 2005-2010 Redistributable Packages (x86)
for /f %%i in ('dir /b %~dp0\VC\MSI\x86\*.msi') do (msiexec /i "%~dp0\VC\MSI\x86\%%i" /quiet)
echo.
echo Installing Visual C++ 2005-2010 Redistributable Packages (x64)
for /f %%i in ('dir /b %~dp0\VC\MSI\x64\*.msi') do (msiexec /i "%~dp0\VC\MSI\x64\%%i" /quiet)
echo.
echo Installing Visual C++ 2010-2015 Redistributable Packages (x86)
for /f %%i in ('dir /b %~dp0\VC\EXE\x86\*.exe') do ("%~dp0\VC\EXE\x86\%%i" /install /quiet)
echo.
echo Installing Visual C++ 2010-2015 Redistributable Packages (x64)
for /f %%i in ('dir /b %~dp0\VC\EXE\x64\*.exe') do ("%~dp0\VC\EXE\x64\%%i" /install /quiet)
echo.
echo Installing DX Jun2010
for /f %%i in ('dir /b %~dp0\DX\*.msi') do (msiexec /i "%~dp0\DX\%%i" /quiet)
echo.
echo Operation completed successfully
echo.