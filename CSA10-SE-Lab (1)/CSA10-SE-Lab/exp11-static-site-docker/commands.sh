#!/usr/bin/env bash
# Run these on a machine with Docker installed.
docker build -t static-site:1.0 .
docker images static-site
docker run -d --name static-site -p 8080:80 static-site:1.0
docker ps
curl http://localhost:8080          # or open http://localhost:8080 in a browser
docker stop static-site && docker rm static-site
