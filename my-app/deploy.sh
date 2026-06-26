#!/bin/bash

git pull

docker stop myweb || true
docker rm myweb || true

docker build -t het-app:v1 .

docker run -d -p 8081:80 --name myweb het-app:v1
