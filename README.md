# Windows Software Deployment Script

This repository contains a PowerShell script (`kcg.ps1`) designed to deploy software on Windows computers using **WinGet**. The script automates the installation of commonly used applications like **TeamViewer**, **Adobe Creative Cloud**, and **Google Drive**. It can be executed remotely or locally to streamline software installation.

## Prerequisites

1. **WinGet** must be installed on the target machine. You can check if it's installed by running:

    ```powershell
    winget --version
    ```

    If WinGet is not installed, follow the instructions [here](https://github.com/microsoft/winget-cli#installing-the-client) to install it.

2. **PowerShell** with the execution policy set to allow scripts to run:

    ```powershell
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```

    Or run the script with the `-ExecutionPolicy Bypass` flag as shown below.

## Software Installed by the Script

- **TeamViewer**
- **Adobe Creative Cloud**
- **Google Drive**

## How to Use

### Running the Script Remotely

You can run the script remotely on a Windows machine using PowerShell with the following command:

##### This example is for KCG
```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/jobmaurizio/windows-deployment/main/kcg.ps1" -OutFile "$env:temp\kcg.ps1"; powershell -ExecutionPolicy Bypass -File "$env:temp\kcg.ps1"
