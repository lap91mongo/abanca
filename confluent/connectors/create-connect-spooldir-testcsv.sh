echo "<<<<<<<<<<<<<<<<<<<creando conector source spooldirCSV >>>>>>>>>>>>>>>>>>>>>>"
curl -X PUT 'http://localhost:8083/connectors/ZPFM.FILE.CGE.TEST/config' -H 'Content-Type: application/json' --data '
{
    "tasks.max": "1",
    "connector.class": "com.github.jcustenborder.kafka.connect.spooldir.SpoolDirCsvSourceConnector",
    "input.path": "/tmp",
    "input.file.pattern": "test.csv",
    "error.path": "/tmp/error",
    "finished.path": "/tmp/finished",
    "halt.on.error": "false",
    "topic": "ZPFM.FILE.CGE.TEST",
    "csv.first.row.as.header": "true",
    "schema.generation.enabled": "false",
    "key.schema":"{\n  \"name\" : \"com.example.users.UserKey\",\n  \"type\" : \"STRUCT\",\n  \"isOptional\" : false,\n  \"fieldSchemas\" : {\n    \"MOVIMIENTOID\" : {\n      \"type\" : \"STRING\",\n      \"isOptional\" : false\n    }\n  }\n }",
    "value.schema":"{\n  \"name\" : \"com.example.users.User\",\n  \"type\" : \"STRUCT\",\n  \"isOptional\" : false,\n  \"fieldSchemas\" : {\n    \"MOVIMIENTOID\" : {\n      \"type\" : \"STRING\",\n      \"isOptional\" : true\n    },\n    \"FECHA\" : {\n      \"type\" : \"STRING\",\n      \"isOptional\" : true\n    },\n    \"DATO1\" : {\n      \"type\" : \"STRING\",\n      \"isOptional\" : true\n    },\n   \"DATO2\" : {\n      \"type\" : \"STRING\",\n      \"isOptional\" : true\n    } \n  }\n}"
}' -w "\n"
