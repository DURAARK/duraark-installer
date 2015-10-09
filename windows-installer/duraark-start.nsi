# define name of installer
OutFile "duraark-start.exe"

# define installation directory
InstallDir $DESKTOP\duraark-system

# For removing Start Menu shortcut in Windows 7
RequestExecutionLevel user

# start default section
Section

    # set the installation directory as the destination for the following actions
    SetOutPath $INSTDIR

    File "scripts\start-docker-toolbox.bat"
    File "scripts\start-duraark-system.bat"
    ExecWait '"$INSTDIR\start-docker-toolbox.bat"'
    ExecWait '"$INSTDIR\start-duraark-system.bat"'
SectionEnd
