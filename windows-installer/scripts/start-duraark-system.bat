"C:\Program Files\Docker Toolbox\docker-machine" env default --shell cmd > %TEMP%/set-docker-env.bat
call %TEMP%/set-docker-env.bat
del %TEMP%/set-docker-env.bat

"C:\Program Files\Docker Toolbox\docker.exe" run -d --name duraark-installer-windows -v /var/run/docker.sock:/var/run/docker.sock duraark/duraark-installer-windows
