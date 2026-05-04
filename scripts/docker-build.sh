#!/bin/bash
echo "🛠 Building Docker Image..."
docker build -t muchtodo-api:latest .
echo "📦 Loading image into Kind cluster..."
kind load docker-image muchtodo-api:latest --name much-to-do-cluster