
docker-compose up -d --build
sleep 60

docker exec -it broker kafka-topics --bootstrap-server localhost:9092 --topic ZPFM.FILE.CGE.TEST --create --partitions 1 --replication-factor 1
sh schemas/create-schema-file.sh
docker exec -it ksqldb-cli ksql --file /ksql/test17.ksql -- http://ksqldb-server:8088;
sh connectors/create-connect-mongo-test17.sh
mv files/finished/test.csv files/test.csv
sh connectors/create-connect-spooldir-testcsv.sh

