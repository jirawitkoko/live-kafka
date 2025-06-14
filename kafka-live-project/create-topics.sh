#!/bin/bash
set -e

kafka-topics --create --topic test-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
kafka-topics --create --topic ORDER_RECEIVED --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
kafka-topics --create --topic ORDER_CONFIRMED --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
kafka-topics --create --topic ORDER_PICKED_UP --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
kafka-topics --create --topic ORDER_SENT_OUT --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
kafka-topics --create --topic MESSAGE_CONSUME_FAILED --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
