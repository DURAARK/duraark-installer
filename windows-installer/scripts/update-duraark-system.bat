"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%\set-docker-env.bat
del %TEMP%\set-docker-env.bat

"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-sessions
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-metadata
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-sda
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-geometricenrichment
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-digitalpreservation
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/workbench-ui
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/api-gatekeeper
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-installer-windows
"C:\Program Files\Docker Toolbox\docker.exe" pull ubo/pc2bim
"C:\Program Files\Docker Toolbox\docker.exe" pull paulhilbert/e57-metadata
