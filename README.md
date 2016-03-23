docker-statsite
================================
Docker container for [Statsite](https://github.com/armon/statsite)


Usage
--------------------------------
Using Statsite defaults:  
```
docker run -p 8125:8125 -p 8125:8125/udp nyxcharon/statsite
```

Using a config file:  
```
docker run -p 8125:8125 -p 8125:8125/udp nyxcharon/statsite -f /path/to/config/file
```
