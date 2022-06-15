FROM confluentinc/cp-kafka-connect:7.1.0

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"

RUN  confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest \
 &&  confluent-hub install --no-prompt confluentinc/kafka-connect-teradata:latest \
 &&  confluent-hub install --no-prompt debezium/debezium-connector-postgresql:1.1.0 \
 &&  confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:2.0.62 \
 &&  confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:1.7.0



COPY terajdbc4.jar \
/usr/share/confluent-hub-components/confluentinc-kafka-connect-teradata/lib/terajdbc4.jar


