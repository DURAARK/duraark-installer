"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%/set-docker-env.bat
del %TEMP%/set-docker-env.bat

"C:\Program Files\Docker Toolbox\docker.exe" stop duraarkinstaller_duraark-sessions_1 duraarkinstaller_duraark-metadata_1 duraarkinstaller_duraark-sda_1 duraarkinstaller_duraark-geometricenrichment_1 duraarkinstaller_duraark-digitalpreservation_1 duraarkinstaller_duraark-workbench-ui_1 duraarkinstaller_duraark-api-gatekeeper_1 duraarkinstaller_duraark-web_1 duraarkinstaller_duraark-pointcloud-viewer_1
"C:\Program Files\Docker Toolbox\docker.exe" rm -f duraark-installer-windows
"C:\Program Files\Docker Toolbox\docker.exe" run -d --name duraark-installer-windows -v /var/run/docker.sock:/var/run/docker.sock duraark/duraark-installer-windows
