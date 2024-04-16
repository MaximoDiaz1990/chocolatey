#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Install Software
choco install office365business -y
choco install nodejs-lts  -y
choco install javaruntime -y
choco install visualstudiocode -y
choco install git -y

echo %JAVA_HOME%
