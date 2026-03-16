# iris-sys-recs-2026

## Problem
Reverse Proxy, Load Balancing & Access Control
- Configure NGINX to load balance across all 3 application replicas
- Implement upstream health checks with automatic failover
- Support graceful NGINX reloads without dropping live connections
- Implement rate limitingl; return 429 when the limit is exceeded
- Route traffic based on subdomains e.g. app.localhost, grafana.localhost, etc
- Protect grafana.localhost and other internal services with HTTP Basic Auth at the
NGINX level

## Thinsg to setup for Task - 1
- Ruby On Rails Application
- MySQL Database
- Nginx

## Network Grouping (For Now)
- External: For Nginx only, to receive traffice
- Application: Application ( and it's multiple instances) an MYSQL DB
![Current Architecture](assets/Screenshot%202026-03-16%20at%2011.42.14 PM.png)
## Resources Used
```
https://gist.github.com/yizeng/eeeb48d6823801061791cc5581f7e1fc //for the docker ignore
https://docs.docker.com/compose/
https://docs.docker.com/compose/intro/compose-application-model/
https://www.youtube.com/watch?v=t779DVjCKCs // dockerfile size reduction !!

```

## Changes
- Using MariaDB which is a 1:1 replacement for MYSQL to reduce image size. refer: https://hub.docker.com/_/mariadb

## Challenges
```
validating /docker-compose.yml: services.application.build additional properties 'expose', 'networks', 'stop_signal', 'volumes', 'depends_on', 'deploy' not allowed -> indentation error
had forgotten to pass .env to the application
```
