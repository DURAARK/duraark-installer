rem
rem Forward port 80 to be able to use 'http://localhost' as entry point
rem

"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" modifyvm default --natpf1 "web,tcp,,80,,80"

"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%/set-docker-env.bat
del %TEMP%/set-docker-env.bat

"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarkinstaller_duraark-sessions_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarkinstaller_duraark-metadata_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarkinstaller_duraark-sda_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarkinstaller_duraark-geometricenrichment_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarkinstaller_duraark-digitalpreservation_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarkinstaller_workbench-ui_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarkinstaller_web_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraarkinstaller_duraark-pointcloud-viewer_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraark-installer-windows

rem Remove probable left-overs from v0.3.0
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraark-pc2bim

"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-sessions
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-metadata
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-sda
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-geometricenrichment
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-digitalpreservation
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/workbench-ui
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/api-gatekeeper
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-pointcloud-viewer
"C:\Program Files\Docker Toolbox\docker.exe" pull paulhilbert/e57-metadata
"C:\Program Files\Docker Toolbox\docker.exe" pull duraark/duraark-installer-windows

"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraark-installer-windows
"C:\Program Files\Docker Toolbox\docker.exe" run -d --name duraark-installer-windows -v /var/run/docker.sock:/var/run/docker.sock duraark/duraark-installer-windows

pause
