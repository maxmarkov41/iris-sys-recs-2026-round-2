# iris-sys-recs-2026

## Problem
Reverse Proxy, Load Balancing & Access Control
- Configure NGINX to load balance across all 3 application replicas ✅
- Implement upstream health checks with automatic failover ✅
- Support graceful NGINX reloads without dropping live connections ✅
- Implement rate limitingl; return 429 when the limit is exceeded ✅
- Route traffic based on subdomains e.g. app.localhost, grafana.localhost, etc ✅
- Protect grafana.localhost and other internal services with HTTP Basic Auth at the NGINX level ✅


## Thinsg to setup for Task - 1
- Ruby On Rails Application
- MySQL Database
- Nginx
- Grafana {unconfigured}
- Prometheus {unconfigured}

## Network Grouping (For Now)
- External: For Nginx only, to receive traffice
- Application: Application ( and it's multiple instances) an MYSQL DB
- Monitoring: Prometheus, Grafana
## Resources Used
```
https://gist.github.com/yizeng/eeeb48d6823801061791cc5581f7e1fc //for the docker ignore
https://docs.docker.com/compose/
https://docs.docker.com/compose/intro/compose-application-model/
https://www.youtube.com/watch?v=t779DVjCKCs // dockerfile size reduction !!
https://nginx.org/en/docs/http/ngx_http_limit_req_module.html // http rate limiting
https://stackoverflow.com/questions/21064401/route-different-proxy-based-on-subdomain-request-in-nginx // subdomain routing
https://last9.io/blog/prometheus-port-configuration/ //prometheus ports
https://github.com/docker/awesome-compose/blob/master/prometheus-grafana/compose.yaml
https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/ // basic http auth
```

## Commands

```
sudo htpasswd -c .htpasswd admin
```
Press Enter and type the password for user1 at the prompts.
You can add more users by ommiting the -c flag
please remember that this passwd will be used to login when accessing the grafana and prometheus panel

nginx graceful can be done it two ways, however the compose method is not recommended for various reasons and hence one must reload manually using the following commands
```
docker exec <cont_name> nginx -t \\ test the new config
docker exec <c> nginx -s reload \\ graceful reload
```

## Challenges
```
validating /docker-compose.yml: services.application.build additional properties 'expose', 'networks', 'stop_signal', 'volumes', 'depends_on', 'deploy' not allowed -> indentation error
had forgotten to pass .env to the application
```

## Images

![429](assets/Screenshot%202026-03-21%20at%209.47.12 PM.png)

![grafana](assets/Screenshot%202026-03-21%20at%209.51.44 PM.png)

![prometheus](assets/Screenshot%202026-03-21%20at%209.51.55 PM.png)