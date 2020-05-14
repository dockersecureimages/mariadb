# MariaDB

MariaDB, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~217MB)

Security scanning using Clair
```
clair-scanner secureimages/mariadb:10.4.13-alpine-3.11.6
2020/05/14 13:03:56 [INFO] ▶ Start clair-scanner
2020/05/14 13:03:58 [INFO] ▶ Server listening on port 9279
2020/05/14 13:03:58 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/14 13:03:58 [INFO] ▶ Analyzing d1a7b65a22eb8179d88e4e55a0db372fd249325ee36fdd95ebc75a4b03cda5af
2020/05/14 13:03:58 [INFO] ▶ Analyzing b752bd1ce9074fe1d9b20dfb9d40c9f870a330aeb7089e72310007e42d0571aa
2020/05/14 13:03:58 [INFO] ▶ Analyzing 3ea7d22ba156974f85c868b68deebd7c230c1e50075d21e1e41d0304709ec159
2020/05/14 13:03:58 [INFO] ▶ Image [secureimages/mariadb:10.4.13-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/mariadb:10.4.13-alpine-3.11.6
2020-05-14T10:04:04.747Z        INFO    Need to update DB
2020-05-14T10:04:04.747Z        INFO    Downloading DB...
2020-05-14T10:04:11.159Z        INFO    Detecting Alpine vulnerabilities...

secureimages/mariadb:10.4.13-alpine-3.11.6 (alpine 3.11.6)
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
2020/05/14 13:04:15 [INFO] ▶ Start clair-scanner
2020/05/14 13:04:21 [INFO] ▶ Server listening on port 9279
2020/05/14 13:04:21 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/05/14 13:04:21 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/05/14 13:04:21 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/05/14 13:04:21 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/05/14 13:04:21 [INFO] ▶ Analyzing 0d3d8fda25b2c82aa08dc2a897c8105abeaf85548f9eadf15dbb41de7e38213b
2020/05/14 13:04:21 [INFO] ▶ Analyzing 16a0eaab1900b14f8085832f73b719f8a295dd507fb32332cc09fff3086d32ab
2020/05/14 13:04:21 [INFO] ▶ Analyzing c6fb389ce54e019ad77c1f575e3b13830e5246fae84eccf574ab736f28c5e546
2020/05/14 13:04:21 [INFO] ▶ Analyzing aa38767331d3d6dcc039c78c1a61f267da3047f0e8eb1dfea27a522faa2bd18b
2020/05/14 13:04:21 [INFO] ▶ Analyzing 6ee61c7300fa1b7f4efe123a970bdb7abff0fd30be8df4496d74cf3322f8eb45
2020/05/14 13:04:21 [INFO] ▶ Analyzing 8c5290f53e1efb1bbfd620ade86bd90ac3f620c275e672cc31baf99340ed78b5
2020/05/14 13:04:21 [INFO] ▶ Analyzing afae033ff208a1678bfdb782c6eceb50222bace935e70d972edca7bc41ffb9fd
2020/05/14 13:04:21 [INFO] ▶ Analyzing 19912362e86fc8441820646d1b8130be74db749c80c1ff857d0e031b30675748
2020/05/14 13:04:21 [INFO] ▶ Analyzing 9c810b87a5dd0b45ae5c185d3aedee59091a938a404cdfc95fea18a3a5f098f3
2020/05/14 13:04:21 [INFO] ▶ Analyzing c59b36fad5a57d76f3f75172c46d4482e167666a9b8816f3923fca0248adf0b5
2020/05/14 13:04:21 [WARN] ▶ Image [mariadb:10.4.13] contains 47 total vulnerabilities
2020/05/14 13:04:21 [ERRO] ▶ Image [mariadb:10.4.13] contains 47 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress mariadb:10.4.13
2020-05-14T10:04:24.371Z        INFO    Need to update DB
2020-05-14T10:04:24.371Z        INFO    Downloading DB...
2020-05-14T10:04:35.112Z        INFO    Detecting Ubuntu vulnerabilities...

mariadb:10.4.13 (ubuntu 18.04)
==============================
Total: 109 (UNKNOWN: 0, LOW: 96, MEDIUM: 13, HIGH: 0, CRITICAL: 0)
```
