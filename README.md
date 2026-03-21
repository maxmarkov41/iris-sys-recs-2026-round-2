# iris-sys-recs-2026

## Problem
Deploy an NFS server container and configure exports correctly
Mount the shared directory across all three application replicas
Prove cross-replica consistency: upload a file from one replica, read it from another
Ensure data persistence survives individual container restarts

## Thinsg to setup for Task - 2
- Ruby On Rails Application
- MySQL Database
- Nginx
- Grafana {unconfigured}
- Prometheus {unconfigured}

## Network Grouping (For Now)
- External: For Nginx only, to receive traffice
- Application: Application ( and it's multiple instances) an MYSQL DB
- Monitoring: Prometheus, Grafana
- Storage: For NFS

## Resources Used
```
```

## Commands


## Challenges
```
```

## Images