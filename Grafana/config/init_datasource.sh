set -e

DS_NAME=Prom
DS_TYPE==Prometheus
DS_ACCESS=proxy
DS_URL=http://prometheus:9090
DS_AUTH=false
DS_ISDEFAULT=true

curl -u admin:admin \
'http://localhost:3000/api/datasources' \
-X POST \
-H 'Content-Type: application/json;charset=UTF-8' \
--data-binary '{"name":"DS_PROMETHEUS","type":"prometheus","url":"http://prometheus:9090","access":"proxy","basicauth":false}'
