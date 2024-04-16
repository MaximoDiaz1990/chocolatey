#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Install Software
choco install office365business -y
choco install nodejs-lts  -y
choco install javaruntime -y
choco install visualstudiocode -y
choco install git -y

# Define the path to the Java installation directory
$javaInstallationDir = "C:\Program Files\Java\jdk1.8.0_391"

# Set JAVA_HOME environment variable
[Environment]::SetEnvironmentVariable("JAVA_HOME", $javaInstallationDir, [System.EnvironmentVariableTarget]::Machine)

# Add Java bin directory to the PATH environment variable
$newPath = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine) + ";$javaInstallationDir\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, [System.EnvironmentVariableTarget]::Machine)

# Verify JAVA_HOME and PATH
Write-Host "JAVA_HOME is set to: $javaInstallationDir"
Write-Host "PATH is updated with Java bin directory"

Get-ChildItem Env:
