# Test app for logging and mog monitoring

It includes a dockerfile, so you can build it and play around log4net settings and see how LogMonitor reacts to it.

App is build in .net 4.7.2
Docker container runs on windows server core 2019

[log4net](https://logging.apache.org/log4net/release/manual/configuration.html)

[LogMonitor.exe](https://github.com/microsoft/windows-container-tools/tree/main/LogMonitor)

# Build and test

Setup the log4net configuration in the App.config file the way you'd like.

Build the .net app.

Build docker image `docker build -t testlogmonitor:1.0 .`

Run it `docker run -d --name test1.0 testlogmonitor:1.0`

Verify logmonitor is working `docker logs -f test1.0`

Inspect log files and log rotation

```
docker exec -it test1.0 powershell.exe
cd .\LogMonitor
ls
```
