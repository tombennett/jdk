FROM rocklobster/chocolatey:0.10.5

LABEL maintainer="tom@thingamajig.net"
LABEL description="Windows Server Core with Jenkins"

ENV JAVA_VERSION 8.0.121

RUN powershell -executionpolicy bypass -command \
      # Install JDK 8
      choco install jdk8 -y --version $env:JAVA_VERSION

ENTRYPOINT ["C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"] 