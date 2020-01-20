# MariaDB

MariaDB, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/mariadb:10.4.10-alpine-3.11.3
2020/01/20 22:48:31 [INFO] ▶ Start clair-scanner
2020/01/20 22:48:38 [INFO] ▶ Server listening on port 9279
2020/01/20 22:48:38 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 22:48:38 [INFO] ▶ Analyzing 2291fceef3420120df9871e7a8c178cce3232a06e283f527fdca3ef944b9d6ab
2020/01/20 22:48:39 [INFO] ▶ Analyzing 0e1bbc81636ada8aed736cc5eabaeea87836b4ddbc04f8bc536baa35cf445c63
2020/01/20 22:48:39 [INFO] ▶ Analyzing 24f408e90eaeb2036699ebcef242512df0f0041dde4900ba7d0c16557bf16bd8
2020/01/20 22:48:39 [INFO] ▶ Image [secureimages/mariadb:10.4.10-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/mariadb:10.4.10-alpine-3.11.3
2020-01-20T20:48:41.917Z        INFO    Need to update DB
2020-01-20T20:48:41.917Z        INFO    Downloading DB...
2020-01-20T20:48:45.424Z        INFO    Reopening DB...
2020-01-20T20:48:53.552Z        INFO    Detecting Alpine vulnerabilities...

secureimages/mariadb:10.4.10-alpine-3.11.3 (alpine 3.11.3)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/_/mariadb](https://hub.docker.com/_/mariadb)
```
docker pull mariadb:10.4.10
```

Security scanning using Clair
```
clair-scanner mariadb:10.4.10
2020/01/20 22:49:05 [INFO] ▶ Start clair-scanner
2020/01/20 22:49:10 [INFO] ▶ Server listening on port 9279
2020/01/20 22:49:10 [INFO] ▶ Analyzing 9ff0fa26194aa4c4dba5a14b2999adf0f22bf2b630fb82efd3e4abbb60fd28bf
2020/01/20 22:49:10 [INFO] ▶ Analyzing 46861108e09e8a0fb3723460aefce0c571b132405fa77cea31fc0bab2827299f
2020/01/20 22:49:10 [INFO] ▶ Analyzing c0f55318a616c9ddf316e9c5700c48682366cb27b70099fc0616109dc252fd56
2020/01/20 22:49:10 [INFO] ▶ Analyzing db0a25fcb8b45344d056f17a747e5a1fd91c6bd9d714e127164076a42b7f55ab
2020/01/20 22:49:10 [INFO] ▶ Analyzing fe6efad362a7c15f79376474b3d8c9147ba4be03862594ef0a98b265f7c1e626
2020/01/20 22:49:10 [INFO] ▶ Analyzing 670dd81463bf810f252e624407766d4e72450ccbe2300ecbaebed528e1186318
2020/01/20 22:49:10 [INFO] ▶ Analyzing 0de1153b58e7497cda23a887a20016aeaa2b008fa52ece7776d997c94fcdee11
2020/01/20 22:49:10 [INFO] ▶ Analyzing 99aef435b3d6f1493aa9398f272a8502733ced408df521c6920e184a9c6c278f
2020/01/20 22:49:10 [INFO] ▶ Analyzing 924a51f08319f9c634bbb611985dde83f223165a95e31a8f910d0a9ef515f007
2020/01/20 22:49:10 [INFO] ▶ Analyzing 47e9653bd747ee148b04cf6aacccacaa57a3ee398dc2a7d871c6e4fca2d28b65
2020/01/20 22:49:10 [INFO] ▶ Analyzing a26ea4bc6a3ff3963211166f2a8524a799e6d6280cde8848560e4c54b3ce6f1e
2020/01/20 22:49:10 [INFO] ▶ Analyzing fb8ea088922d19b68c1479bdd490812f4918a5926b833262219b8f133943754f
2020/01/20 22:49:10 [INFO] ▶ Analyzing 6080297fe1477263b3e2c86abcc828d9d99729c10e10b92b58cfc5ad9b577e5e
2020/01/20 22:49:10 [INFO] ▶ Analyzing 3f2c2881a7a07d952500fc703084c6d3b93686e410a102dec4d80f091cc76aa1
2020/01/20 22:49:10 [WARN] ▶ Image [mariadb:10.4.10] contains 71 total vulnerabilities
2020/01/20 22:49:10 [ERRO] ▶ Image [mariadb:10.4.10] contains 71 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress mariadb:10.4.10
2020-01-20T20:49:15.058Z        INFO    Need to update DB
2020-01-20T20:49:15.058Z        INFO    Downloading DB...
2020-01-20T20:49:18.609Z        INFO    Reopening DB...
2020-01-20T20:49:23.630Z        INFO    Detecting Ubuntu vulnerabilities...

mariadb:10.4.10 (ubuntu 18.04)
==============================
Total: 127 (UNKNOWN: 0, LOW: 26, MEDIUM: 77, HIGH: 23, CRITICAL: 1)
```
