@echo off
:: This launcher runs the PowerShell GUI script cleanly without showing a terminal window
powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "%~dp0Clean-Autodesk.ps1"
