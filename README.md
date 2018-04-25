Docker compose for NexCloud
===========================

# What is for?
The [NexCloud](https://github.com/nexclouding/NexCloud) is the monitoring system for Mesos/Marathon environment, and they provide JSONs to deploy on the Marathon. But this repo provide `docker-compose.yml` for deploy on a single host.

# Configurations
Some are in the `docker-compose.yml` and others are in the SQL.

## Mesos Endpoint
Mesos Endpoint URL is in the `initdb.d/nex_config.sql`. This should be edited before running.
```sql
('mesos_endpoint', 'http://leader.mesos'),
```

## WebUI Port
WebUI Port is in the `docker-compose.yml`. Change this line:
```yaml
nexclipperui:
  image: nexclipper/nexclipperui:latest
  ports:
    - "39000:9000"
```

# Running
First of all, DB and other services are needed to initialize before main containers.
```sh
$ docker-compose up -d mysql redis influxdb zookeeper kafka
```

Confirm mysql is ready. Then start main containers like this:
```sh
$ docker-compose up -d minicollector miniworkflow nexclipperui
```
