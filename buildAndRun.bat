@echo off
call mvn clean package
call docker build -t KellyPacheco/laRockola .
call docker rm -f laRockola
call docker run -d -p 9080:9080 -p 9443:9443 --name laRockola KellyPacheco/laRockola