# define name of installer
OutFile "duraark-uninstaller.exe"

# define installation directory
InstallDir $DESKTOP\duraark-system

RequestExecutionLevel user
# start default section
Section

    # set the installation directory as the destination for the following actions
    SetOutPath $INSTDIR

    File "scripts\start-docker-toolbox.bat"
    File "scripts\uninstall-duraark-system.bat"
    ExecWait '"$INSTDIR\start-docker-toolbox.bat"'
    ExecWait '"$INSTDIR\uninstall-duraark-system.bat"'
SectionEnd
