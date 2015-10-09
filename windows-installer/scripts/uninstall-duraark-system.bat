"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%/set-docker-env.bat
del %TEMP%/set-docker-env.bat

"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarksystem_duraark-sessions_1 duraarksystem_duraark-metadata_1 duraarksystem_duraark-sda_1 duraarksystem_duraark-geometricenrichment_1 duraarksystem_duraark-digitalpreservation_1 duraarksystem_duraark-workbench-ui_1 duraarksystem_duraark-web_1

"C:\Program Files\Docker Toolbox\docker.exe" rmi -f duraark/duraark-sessions
"C:\Program Files\Docker Toolbox\docker.exe" rmi -f duraark/duraark-metadata
"C:\Program Files\Docker Toolbox\docker.exe" rmi -f duraark/duraark-sda
"C:\Program Files\Docker Toolbox\docker.exe" rmi -f duraark/duraark-geometricenrichment
"C:\Program Files\Docker Toolbox\docker.exe" rmi -f duraark/duraark-digitalpreservation
"C:\Program Files\Docker Toolbox\docker.exe" rmi -f duraark/workbench-ui
"C:\Program Files\Docker Toolbox\docker.exe" rmi -f duraark/api-gatekeeper
"C:\Program Files\Docker Toolbox\docker.exe" rmi -f duraark/duraark-system
"C:\Program Files\Docker Toolbox\docker.exe" rmi -f paulhilbert/e57-metadata
