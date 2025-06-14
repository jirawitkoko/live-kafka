#!/bin/bash
set -e

docker compose up -d

echo "Waiting for Kafka broker to become healthy..."
until [ "$(docker inspect -f '{{.State.Health.Status}}' kafka 2>/dev/null)" = "healthy" ]; do
    sleep 1
done

docker exec kafka sh /usr/local/bin/create-topics.sh

# Example consumer command
# docker exec kafka kafka-console-consumer --topic test-topic --bootstrap-server localhost:9092 --from-beginning
