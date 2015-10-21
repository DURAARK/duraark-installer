@echo off

rem
rem Useful links to get into windows cmd scripting (hope you don't have to...)
rem

rem http://stackoverflow.com/questions/2913231/how-do-i-increment-a-dos-variable-in-a-for-f-loop
rem http://stackoverflow.com/questions/10166386/arrays-linked-lists-and-other-data-structures-in-cmd-exe-batch-script

rem
rem Start docker VM if not started already
rem

call ..\scripts\start-docker-toolbox.bat

rem
rem Connect docker client to docker VM
rem

"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%\set-docker-env.bat
del %TEMP%\set-docker-env.bat

rem
rem Set basic variables
rem

set DURAARK_HOME=C:\Users\CGV\MartinH\duraark-installer\windows-installer
set CURL=..\..\bin\curl.exe
set JQ=..\..\bin\jq-win64.exe
set HOST=localhost

echo "Creating new session with: %1 | %2 | %3"

set /a c=0
set /a findex=0

setlocal ENABLEDELAYEDEXPANSION

rem
rem store file arguments in 'files' array
rem

for %%I IN (%*) DO (
  set /a c=c+1

  if !c! GEQ 4 (
    set /a findex=findex+1
    echo File: %%I
    set files[!findex!]=%%I
  )
)
rem
rem Create command line with files for curl
rem

for /F "tokens=2 delims==" %%s in ('set files[') do (
  set params=!params! -F file=@%%s
)

rem
rem Execute curl command to upload files
rem

%CURL% %params% http://%HOST%/api/v0.7/sessions/uploads/upload > %TEMP%\uploadOutput.json
type %TEMP%\uploadOutput.json | %JQ% -c .files 1> %TEMP%\files.json

set /p files=<%TEMP%\files.json

rem echo Files: %files%

echo {"label":"%1", "address":"%2", "description":"%3" ,"files":%files%} > %TEMP%\sessionInput.json

%CURL% -H "Content-Type: application/json" -X POST -d @%TEMP%\sessionInput.json http://%HOST%/api/v0.7/sessions/sessions

del %TEMP%\uploadOutput.json
del %TEMP%\sessionInput.json

pause
