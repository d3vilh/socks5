# socks5
Fast experimental socks5 proxy server.

[![latest version](https://img.shields.io/github/v/release/d3vilh/socks5-proxy?color=%2344cc11&label=LATEST%20RELEASE&style=flat-square&logo=Github)](https://github.com/d3vilh/socks5-proxy/releases/latest) [![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/d3vilh/socks5-proxy/latest?logo=docker&label=DOCKER%20IMAGE&color=2344cc11&style=flat-square&logoColor=white)](https://hub.docker.com/r/d3vilh/socks5-server) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/d3vilh/socks5-proxy/latest?logo=Docker&color=2344cc11&label=IMAGE%20SIZE&style=flat-square&logoColor=white)


To run:

`docker run -d --name socks5 -p 1090:9090 -e PROXY_PORT=9090 d3vilh/socks5-server`

or
`docker run -d --name socks5 -p 1080:1080 -e PROXY_USER=<PROXY_USER> -e PROXY_PASSWORD=<PROXY_PASSWORD> d3vilh/socks5-server`


To build the container:
```shell
docker-compose -f docker-compose.build.yml up -d
```
To build just image:
```shell
PLATFORM="linux/arm64/v8"
docker build --progress=plain --platform=$PLATFORM -f Dockerfile -t local/socks5-server:latest .
```

# Container ENV parameters
You could add these parameters in `.env` file:

* `PROXY_USER` - Auth user. Default is EMPTY.
* `PROXY_PASSWORD` - Auth password. Default is EMPTY.
* `PROXY_PORT` - Listening port for app inside of the container. Default is 1080.
* `ALLOWED_DEST_FQDN` - Allowed destination address regular expression pattern. Default allows all.
* `ALLOWED_IPS` - Set allowed IP's that can connect to proxy, separator `,`.


<a href="https://www.buymeacoffee.com/d3vilh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="51" width="217"></a>