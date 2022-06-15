curl -X POST 'http://localhost:8081/subjects/ZPFM.FILE.CGE.TEST-value/versions' -H 'Content-Type: application/json' --data '
{
    "schema":"{\"type\":\"record\",\"name\":\"User\",\"namespace\":\"com.example.users\",\"fields\":[{\"name\":\"MOVIMIENTOID\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"FECHA\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"DATO1\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"DATO2\",\"type\":[\"null\",\"string\"],\"default\":null}],\"connect.name\":\"com.example.users.User\"}",
    "schemaType": "AVRO"
}' -w "\n"
