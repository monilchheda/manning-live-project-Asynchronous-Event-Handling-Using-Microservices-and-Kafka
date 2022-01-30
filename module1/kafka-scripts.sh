/home/calvin/kafka/kafka_2.13-3.0.0

# Start the ZooKeeper service
# Note: Soon, ZooKeeper will no longer be required by Apache Kafka.
bin/zookeeper-server-start.sh config/zookeeper.properties

# Start the Kafka broker service
bin/kafka-server-start.sh config/server.properties

# create a Kafka topic that will contain order received events
bin/kafka-topics.sh --create --partitions 1 --replication-factor 1 --topic order-received --bootstrap-server localhost:9092

# Create a Kafka topic that will contain order confirmed events, and verify it exists
bin/kafka-topics.sh --create --partitions 1 --replication-factor 1 --topic order-confirmed --bootstrap-server localhost:9092

# Create a Kafka topic that will contain order picked and packed events, and verify it exists.
bin/kafka-topics.sh --create --partitions 1 --replication-factor 1 --topic order-picked-packed --bootstrap-server localhost:9092

# Create a Kafka topic that will contain order picked and packed events, and verify it exists.
bin/kafka-topics.sh --create --partitions 1 --replication-factor 1 --topic notification --bootstrap-server localhost:9092

# Create a Kafka topic that will contain error events, and verify it exists.
bin/kafka-topics.sh --create --partitions 1 --replication-factor 1 --topic errors --bootstrap-server localhost:9092

# List/ Verify all topics
bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe
