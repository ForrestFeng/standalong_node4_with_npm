@echo off

:: Set PATH to make sure the current path is in the search path
Set PATH=%~dp0;%PATH%
:: Set the NODE_PATH so that require('xxx') will search this folder
set NODE_PATH=%~dp0node_modules
echo on

:: start the cmd.exe
cmd.exe