#!/bin/bash

echo "Membuat Docker image"
docker build -t pinoezz/karsajobs:latest  .

echo "Melihat daftar image di lokal"
docker images

echo "Login ke docker Hub"
echo $DOCKER_PASSWORD | docker login  -u pinoezz --password-stdin

echo "Mengunggah image ke Docker Hub"
docker push pinoezz/karsajobs:latest
