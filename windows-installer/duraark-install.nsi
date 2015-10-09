# define name of installer
OutFile "duraark-install.exe"

# define installation directory
InstallDir $DESKTOP\duraark-system

# For removing Start Menu shortcut in Windows 7
RequestExecutionLevel admin

Section
  CreateDirectory "C:\Users\duraark-storage"
  CreateDirectory "C:\Users\duraark-storage\files"

  AccessControl::GrantOnFile "C:\Users\duraark-storage" "(S-1-5-32-545)" "FullAccess"
  AccessControl::GrantOnFile "C:\Users\duraark-storage\files" "(S-1-5-32-545)" "FullAccess"
SectionEnd

RequestExecutionLevel user
# start default section
Section

    # set the installation directory as the destination for the following actions
    SetOutPath $INSTDIR

    # create the uninstaller
    #WriteUninstaller "$INSTDIR\uninstall-duraark-installer.exe"

    # create a shortcut named "new shortcut" in the start menu programs directory
    # point the new shortcut at the program uninstaller
    #CreateShortCut "$SMPROGRAMS\uninstall-duraark-installer.lnk" "$INSTDIR\uninstall-duraark-installer.exe"

    File "scripts\start-docker-toolbox.bat"
    File "scripts\install-duraark-system.bat"
    ExecWait '"$INSTDIR\start-docker-toolbox.bat"'
    ExecWait '"$INSTDIR\install-duraark-system.bat"'
SectionEnd
