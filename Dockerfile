FROM mcr.microsoft.com/dotnet/framework/runtime:4.7.2-windowsservercore-ltsc2016

COPY ContainerFiles C:\\KTA

RUN powershell C:\KTA\PowershellScripts\ConfigureContainer.ps1

EXPOSE 80

EXPOSE 443

ENTRYPOINT powershell "C:\KTA\PowershellScripts\Startup.ps1"