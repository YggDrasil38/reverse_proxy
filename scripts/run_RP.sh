#!/bin/bash
set -e

echo "🚀 Arrêt de tous les services..."
docker compose -f ../docker-compose.yml --profile dev down

echo "🚀 Démarrage de traefik..."
docker compose -f ../docker-compose.yml --profile dev up -d traefik

echo
echo "📋 Conteneurs en cours d'exécution :"
docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}"
