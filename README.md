# Run load tests in docker containers

## Requirements


❗<span style="color:red">Add '.env' file with parameters befor run</span>❗

```
INFLUXDB_USERNAME=
INFLUXDB_PASSWORD=
INFLUXDB_ORG=
INFLUXDB_BUCKET=
INFLUXDB_TOKEN=

GRAFANA_USER=
GRAFANA_PASSWORD=

SUBNET=192.168.1.0/28
GATEWAY_IP=192.168.1.1
WEB_APPLICATION_IP=192.168.1.2
INFLUXDB_IP=192.168.1.3
GRAFANA_IP=192.168.1.4

NUMBER_OF_THREADS=10
DURATION_OF_TEST=600
WARM_UP=50
```

## Stack

## How to run tests

To start tests run in console from directory `.\load-httpbin` :
```
docker-compose up --abort-on-container-exit
```

If you don't need logs in console use command:
```
docker-compose up -d
```