#!/bin/sh
mvn clean package && docker build -t KellyPacheco/laRockola .
docker rm -f laRockola || true && docker run -d -p 9080:9080 -p 9443:9443 --name laRockola KellyPacheco/laRockola