#!/bin/bash

echo "Membuat Docker image"
docker build -t item-app:v1 .

echo "Melihat daftar image di lokal"
docker images

echo "Mengubah nama image agar sesuai dengan format Docker Hub"
docker tag item-app:v1 pinoezz/item-app:v1

echo "Login ke docker Hub"
echo $DOCKER_PASSWORD | docker login -u pinoezz --password-stdin

echo "Mengunggah image ke Docker Hub"
docker push pinoezz/item-app:v1

