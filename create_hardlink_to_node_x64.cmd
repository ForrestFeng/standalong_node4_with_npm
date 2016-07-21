@ECHO OFF
if exist %~dp0\node.exe del %~dp0\node.exe
mklink /H node.exe %~dp0\node_exe\64-bit\node.exe
pause