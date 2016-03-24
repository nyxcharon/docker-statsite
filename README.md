docker-statsite
================================
Docker container for [Statsite](https://github.com/armon/statsite)

Configuration
================================
The only required enviornment variable is STREAM_CMD. This should contain the command you want statsite to run as part of it's configuration.

Simple setups using influxdb can be configured via enviornment variables
Set INFLUXDB_HOST, INFLUXDB_PORT, INFLUXDB_DB as needed. They default to localhost, 8086, and statsite respectively.  

Also included is a extra sink called dual-sink that will allow you to send metrics to influxdb and graphite at the same time. To do this set the above variables as needed, as well as GRAPHITE_HOST and GRAPHITE_PORT.  

Usage
--------------------------------

Using influxdb (with defaults)  
```
docker run -p 8125:8125 -p 8125:8125/udp -e STREAM_CMD="python /code/statsite/sinks/influxdb.py /configs/influxdb.ini INFO" nyxcharon/statsite
```
