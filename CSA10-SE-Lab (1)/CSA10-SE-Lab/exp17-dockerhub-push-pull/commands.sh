#!/usr/bin/env bash
# Replace <username> with your Docker Hub username.
docker build -t my-static-site:1.0 .                              # 1. build the image
docker login                                                      # authenticate to Docker Hub
docker tag my-static-site:1.0 <username>/my-static-site:1.0       # 2. tag
docker push <username>/my-static-site:1.0                         #    push
# --- on ANOTHER machine ---
docker pull <username>/my-static-site:1.0                         # 3. pull
docker run -d -p 8080:80 <username>/my-static-site:1.0            #    run
curl http://localhost:8080
