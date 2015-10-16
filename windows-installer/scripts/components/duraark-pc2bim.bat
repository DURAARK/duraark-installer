@echo off
"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%\set-docker-env.bat
del %TEMP%\set-docker-env.bat

@echo on
"C:\Program Files\Docker Toolbox\docker.exe" run --rm --name duraark-pc2bim -v /c/Users/duraark-storage:/duraark-storage ubo/pc2bim pc2bim --input /duraark-storage/%1 --output /duraark-storage/%2
