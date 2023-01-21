FROM mcr.microsoft.com/dotnet/framework/runtime:4.7.2-windowsservercore-ltsc2019 AS baseserver

COPY [ "LogMonitor/*", "/LogMonitor/"]
COPY [ "bin/Release/*", "/LogMonitor/"]

ENTRYPOINT "C:\\LogMonitor\\LogMonitor.exe C:\\LogMonitor\\testlogmonitor.exe"
