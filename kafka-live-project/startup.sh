docker compose up -d

docker exec kafka sh /usr/local/bin/create-topics.sh


# docker exec kafka /bin/kafka-console-consumer --topic test-topic --bootstrap-server localhost:9092 --from-beginning