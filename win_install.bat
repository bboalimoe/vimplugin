@echo off
copy /-y vimrc %HOMEDRIVE%\%HOMEPATH%\_vimrc
mkdir %HOMEDRIVE%\%HOMEPATH%\vimfiles
cd ..
xcopy /s /e vimplugin %HOMEDRIVE%\%HOMEPATH%\vimfiles
pause