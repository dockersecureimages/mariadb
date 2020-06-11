# MariaDB

MariaDB, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~217MB)

Security scanning using Clair
```
clair-scanner secureimages/mariadb:10.4.13-alpine-3.12.0
2020/06/11 12:31:24 [INFO] ▶ Start clair-scanner
2020/06/11 12:31:26 [INFO] ▶ Server listening on port 9279
2020/06/11 12:31:26 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 12:31:26 [INFO] ▶ Analyzing 2acbbd105eed400e30e6bba2512fb46c95db71b2fcbf36aaf7db2d70f4f0d193
2020/06/11 12:31:26 [INFO] ▶ Analyzing 75c30b6156d6fd157f980745d146a57d3bae3a1b79946c61647701b8fb1748e9
2020/06/11 12:31:26 [INFO] ▶ Analyzing 5c9a48bee8bc89bb7acd954ffb399b5ce76153eff0c45bf5091c20eb015346cd
2020/06/11 12:31:26 [INFO] ▶ Image [secureimages/mariadb:10.4.13-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/mariadb:10.4.13-alpine-3.12.0
2020-06-11T09:31:32.075Z        INFO    Need to update DB
2020-06-11T09:31:32.075Z        INFO    Downloading DB...
2020-06-11T09:31:38.675Z        INFO    Detecting Alpine vulnerabilities...

secureimages/mariadb:10.4.13-alpine-3.12.0 (alpine 3.12.0)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~357MB)

[https://hub.docker.com/_/mariadb](https://hub.docker.com/_/mariadb)
```
docker pull mariadb:10.4.13
```

Security scanning using Clair
```
clair-scanner mariadb:10.4.13
2020/06/11 12:31:44 [INFO] ▶ Start clair-scanner
2020/06/11 12:31:49 [INFO] ▶ Server listening on port 9279
2020/06/11 12:31:49 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/06/11 12:31:49 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/06/11 12:31:49 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/06/11 12:31:49 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/06/11 12:31:49 [INFO] ▶ Analyzing 0d3d8fda25b2c82aa08dc2a897c8105abeaf85548f9eadf15dbb41de7e38213b
2020/06/11 12:31:49 [INFO] ▶ Analyzing 16a0eaab1900b14f8085832f73b719f8a295dd507fb32332cc09fff3086d32ab
2020/06/11 12:31:49 [INFO] ▶ Analyzing c6fb389ce54e019ad77c1f575e3b13830e5246fae84eccf574ab736f28c5e546
2020/06/11 12:31:49 [INFO] ▶ Analyzing aa38767331d3d6dcc039c78c1a61f267da3047f0e8eb1dfea27a522faa2bd18b
2020/06/11 12:31:49 [INFO] ▶ Analyzing 6ee61c7300fa1b7f4efe123a970bdb7abff0fd30be8df4496d74cf3322f8eb45
2020/06/11 12:31:49 [INFO] ▶ Analyzing 8c5290f53e1efb1bbfd620ade86bd90ac3f620c275e672cc31baf99340ed78b5
2020/06/11 12:31:49 [INFO] ▶ Analyzing afae033ff208a1678bfdb782c6eceb50222bace935e70d972edca7bc41ffb9fd
2020/06/11 12:31:49 [INFO] ▶ Analyzing 19912362e86fc8441820646d1b8130be74db749c80c1ff857d0e031b30675748
2020/06/11 12:31:49 [INFO] ▶ Analyzing b9908df99862f31e0ef52207a8df3bf7c16dbbd008e5122740945481d768ce9f
2020/06/11 12:31:49 [INFO] ▶ Analyzing cd2c6e65c90c5783a9a5b719f95568ae1ba2907b79e75234d05a35090deefb1c
2020/06/11 12:31:49 [WARN] ▶ Image [mariadb:10.4.13] contains 52 total vulnerabilities
2020/06/11 12:31:49 [ERRO] ▶ Image [mariadb:10.4.13] contains 52 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress mariadb:10.4.13
2020-06-11T09:31:52.491Z        INFO    Need to update DB
2020-06-11T09:31:52.491Z        INFO    Downloading DB...
2020-06-11T09:32:02.454Z        INFO    Detecting Ubuntu vulnerabilities...

mariadb:10.4.13 (ubuntu 18.04)
==============================
Total: 125 (UNKNOWN: 0, LOW: 95, MEDIUM: 30, HIGH: 0, CRITICAL: 0)
```
