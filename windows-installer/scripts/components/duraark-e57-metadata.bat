@echo off
"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%\set-docker-env.bat
del %TEMP%\set-docker-env.bat

@echo on
"C:\Program Files\Docker Toolbox\docker.exe" run --rm -v /c/Users/duraark-storage:/duraark-storage paulhilbert/e57-metadata e57_metadata_extractor --input /duraark-storage/%1 --output /duraark-storage/%1.json
