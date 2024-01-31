# Run load tests in docker containers

## Requirements

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