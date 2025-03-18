#!/bin/bash

export YOUR_NAME="Andrii Metelskyi"
envsubst '${YOUR_NAME}' < index.html.template > index.html

echo "Building Docker image..."
docker build -t nginx-img .

echo "Starting container..."
docker run -d -p 8080:80 --name nginx-container nginx-img