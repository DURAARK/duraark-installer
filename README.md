# duraark-installer

The **duraark-installer** - as the name says - installs the [DURAARK System](http://github.com/duraark/duraark-system) on Windows. Follow those steps to get DURAARK up and running:

## Setup DURAARK System on Windows

1. Install [Docker Toolbox](https://www.docker.com/toolbox) as a prerequisite
2. Download the latest version of the installer [here](https://github.com/DURAARK/duraark-installer/releases) (it is a ZIP file)
3. Extract the ZIP file and run the **duraark-install** executable. Wait until the installer finishes, which may take several minutes to download the system, depending on the internet connection. Don't get confused by weird console windows, everything will be fine.
4. Open **Kitematic** (which should be available on your Desktop after installing [Docker Toolbox](https://www.docker.com/toolbox) in step 1)
5. You should see something similar to this screenshot:

TODO

6. Klick on the **web** item to see on which URL the DURAARK System is running and open the URL in a web browser (ideally Chrome or Thunderbird).

## Development

This respository contains scripts to releases an installer image for Windows and Linux on Docker Hub and to create a Windows NSIS installer executable to install the 'duraark-system'.
