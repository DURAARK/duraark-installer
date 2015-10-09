"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%/set-docker-env.bat
del %TEMP%/set-docker-env.bat

"C:\Program Files\Docker Toolbox\docker.exe" stop duraarksystem_duraark-sessions_1 duraarksystem_duraark-metadata_1 duraarksystem_duraark-sda_1 duraarksystem_duraark-geometricenrichment_1 duraarksystem_duraark-digitalpreservation_1 duraarksystem_duraark-workbench-ui_1 duraarksystem_duraark-web_1

pause
