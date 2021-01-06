# kube-nginx-proxy

**nginxdepl.yml** - to deploy nginx forward proxy

 - kubectl apply -f nginxdepl.yml

**nginxlb.yml** - to deploy a service for loadbalancing

 - kubectl apply -f nginxlb.yml

**deployment.yaml** - to deploy a simple node application 
 
 - kubectl apply -f deployment.yaml

To change the version of the image
 - kubectl set image deployment.apps/nginx-fwd nginx-fwd=j9mbo/nginx-fwd-proxy:v1 

**dev.sh** - script to deploy the deployment in development mode

**prod.sh** - script to deploy the deployment into production

**prod.yaml** - to create production namespace

**dev.yaml** - to create development namespace

Example for curl
----------------
```
$curl https://ifconfig.me/ -v -x 127.0.0.1:3128
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to 127.0.0.1 (127.0.0.1) port 3128 (#0)
* allocate connect buffer!
* Establish HTTP proxy tunnel to ifconfig.me:443
> CONNECT ifconfig.me:443 HTTP/1.1
> Host: ifconfig.me:443
> User-Agent: curl/7.55.1
> Proxy-Connection: Keep-Alive
>
< HTTP/1.1 200 Connection Established
< Proxy-agent: nginx
<
* Proxy replied OK to CONNECT request
* CONNECT phase completed!
> GET / HTTP/1.1
> Host: ifconfig.me
> User-Agent: curl/7.55.1
> Accept: */*
>
< HTTP/1.1 200 OK
< Date: Mon, 04 Jan 2021 12:41:47 GMT
< Content-Type: text/plain; charset=utf-8
< Content-Length: 14
< Access-Control-Allow-Origin: *
< Via: 1.1 google
<
**ip_address**
Connection #0 to host 127.0.0.1 left intact
```
