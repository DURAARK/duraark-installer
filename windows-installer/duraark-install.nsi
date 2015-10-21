# define name of installer
OutFile "duraark-install.exe"

# define installation directory
InstallDir $DESKTOP\duraark-system

# For removing Start Menu shortcut in Windows 7
RequestExecutionLevel admin

Section
  CreateDirectory "C:\Users\duraark-storage"
  CreateDirectory "C:\Users\duraark-storage\sessions"
  CreateDirectory "C:\Users\duraark-storage\uploads"
  CreateDirectory "C:\Users\duraark-storage\scripts"
  CreateDirectory "C:\Users\duraark-storage\scripts\components"
  CreateDirectory "C:\Users\duraark-storage\scripts\integration"

  AccessControl::GrantOnFile "C:\Users\duraark-storage" "(S-1-5-32-545)" "FullAccess"
  AccessControl::GrantOnFile "C:\Users\duraark-storage\sessions" "(S-1-5-32-545)" "FullAccess"
  AccessControl::GrantOnFile "C:\Users\duraark-storage\uploads" "(S-1-5-32-545)" "FullAccess"
  AccessControl::GrantOnFile "C:\Users\duraark-storage\scripts" "(S-1-5-32-545)" "FullAccess"
  AccessControl::GrantOnFile "C:\Users\duraark-storage\scripts\components" "(S-1-5-32-545)" "FullAccess"
  AccessControl::GrantOnFile "C:\Users\duraark-storage\scripts\integration" "(S-1-5-32-545)" "FullAccess"
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

    SetOutPath "C:\Users\duraark-storage\scripts\components"
    File "scripts\components\duraark-e57-metadata.bat"
    File "scripts\components\duraark-pc2bim.bat"

    SetOutPath "C:\Users\duraark-storage\bin"
    File "bin\curl.exe"
    File "bin\jq-win64.exe"
    
    SetOutPath "C:\Users\duraark-storage\scripts\integration"
    File "scripts\integration\create-session.bat"
SectionEnd
