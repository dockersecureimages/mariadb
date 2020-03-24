# MariaDB

MariaDB, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/mariadb:10.4.12-alpine-3.11.5
2020/03/24 17:56:59 [INFO] ▶ Start clair-scanner
2020/03/24 17:57:01 [INFO] ▶ Server listening on port 9279
2020/03/24 17:57:01 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 17:57:01 [INFO] ▶ Analyzing be23309acd6b592e1a1fbebd601f9addab442e072cc9ed6a5898517c83699f0e
2020/03/24 17:57:01 [INFO] ▶ Analyzing efd410924be541b0cda7093b456bb7a4c52e7300f1d0aa86f80b48cbfb73b3d5
2020/03/24 17:57:01 [INFO] ▶ Analyzing 9e3c1181782a799a1c451c70b99afde95d54a6dd24b32f6556db1cc09c5342d4
2020/03/24 17:57:02 [INFO] ▶ Image [secureimages/mariadb:10.4.12-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/mariadb:10.4.12-alpine-3.11.5
2020-03-24T15:57:07.017Z        INFO    Need to update DB
2020-03-24T15:57:07.017Z        INFO    Downloading DB...
2020-03-24T15:57:10.828Z        INFO    Reopening DB...
2020-03-24T15:57:14.619Z        INFO    Detecting Alpine vulnerabilities...

secureimages/mariadb:10.4.12-alpine-3.11.5 (alpine 3.11.5)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/_/mariadb](https://hub.docker.com/_/mariadb)
```
docker pull mariadb:10.4.12
```

Security scanning using Clair
```
clair-scanner mariadb:10.4.12
2020/03/24 17:57:18 [INFO] ▶ Start clair-scanner
2020/03/24 17:57:23 [INFO] ▶ Server listening on port 9279
2020/03/24 17:57:23 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/03/24 17:57:23 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/03/24 17:57:23 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/03/24 17:57:23 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/03/24 17:57:23 [INFO] ▶ Analyzing 927b0b676d4cdbae2fedf7d1548e883e0288c76446ff6cba1420902b4a026531
2020/03/24 17:57:23 [INFO] ▶ Analyzing ea06b25880d0faf50f1263da34baef58f634fce90195cd1fcbd5d0698be42e7a
2020/03/24 17:57:24 [INFO] ▶ Analyzing ec9851c9d3d69abc9f9b067c00fe87692ae3f31b7418f02e3b6bfa53d8b223bc
2020/03/24 17:57:24 [INFO] ▶ Analyzing c95672807679d6944e9221495b9692ef21fe0c9f1992e0417e7c460837e3c4c2
2020/03/24 17:57:24 [INFO] ▶ Analyzing 92312645c010bb9c05e3f750ccf8fadd4ae13fcff5960c95af17d91ef222322f
2020/03/24 17:57:24 [INFO] ▶ Analyzing 8b9572113ba6f278b88bdd957e4a37b6b977aec2a4e4e69ce6cfec4c369496d3
2020/03/24 17:57:24 [INFO] ▶ Analyzing 1804da5c8a11efd57e9afe9714277001a9d386ac6e9dc9b17af01cd7cfa9e557
2020/03/24 17:57:24 [INFO] ▶ Analyzing b47a61cb18875a7104c8a42b7b7ca8b27367df3397a9e7ebe271efb4ae83c6db
2020/03/24 17:57:24 [INFO] ▶ Analyzing 2af5b427d0d6f56302962942e6a47eece8294aaeaebf63cab43f3adf953ec287
2020/03/24 17:57:24 [INFO] ▶ Analyzing 53c630043d0b0c5a23184406254254c9e3660e71e67c71fdcea58b0943ed1b53
2020/03/24 17:57:24 [WARN] ▶ Image [mariadb:10.4.12] contains 42 total vulnerabilities
2020/03/24 17:57:24 [ERRO] ▶ Image [mariadb:10.4.12] contains 42 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress mariadb:10.4.12
2020-03-24T15:57:28.380Z        INFO    Need to update DB
2020-03-24T15:57:28.380Z        INFO    Downloading DB...
2020-03-24T15:57:31.742Z        INFO    Reopening DB...
2020-03-24T15:57:38.408Z        INFO    Detecting Ubuntu vulnerabilities...

mariadb:10.4.12 (ubuntu 18.04)
==============================
Total: 102 (UNKNOWN: 0, LOW: 13, MEDIUM: 71, HIGH: 18, CRITICAL: 0)
```
