# MariaDB

MariaDB, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~230MB)

Security scanning using Clair
```
clair-scanner secureimages/mariadb:10.5.6-alpine-3.12.0
2020/10/15 19:27:40 [INFO] ▶ Start clair-scanner
2020/10/15 19:27:42 [INFO] ▶ Server listening on port 9279
2020/10/15 19:27:42 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/15 19:27:42 [INFO] ▶ Analyzing 2207390d6ef7961356dc55f3fff49da43b1bfb6d3abe499a6df3a42f2928e597
2020/10/15 19:27:42 [INFO] ▶ Analyzing d756aeabf244a67146e6bad1f67dfc9e7432aa64a85c6bb2c0cccc412075b550
2020/10/15 19:27:42 [INFO] ▶ Analyzing 98470d7e5c356f9188800bbf7833a09a511068c3860febde277f1410a3539cd3
2020/10/15 19:27:42 [INFO] ▶ Image [secureimages/mariadb:10.5.6-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/mariadb:10.5.6-alpine-3.12.0
2020-10-15T19:27:46.748Z        INFO    Need to update DB
2020-10-15T19:27:46.748Z        INFO    Downloading DB...
2020-10-15T19:28:17.863Z        INFO    Detecting Alpine vulnerabilities...

secureimages/mariadb:10.5.6-alpine-3.12.0 (alpine 3.12.0)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~406MB)

[https://hub.docker.com/_/mariadb](https://hub.docker.com/_/mariadb)
```
docker pull mariadb:10.5.6
```

Security scanning using Clair
```
clair-scanner mariadb:10.5.6
2020/10/15 19:28:31 [INFO] ▶ Start clair-scanner
2020/10/15 19:28:36 [INFO] ▶ Server listening on port 9279
2020/10/15 19:28:36 [INFO] ▶ Analyzing 0cfcca0e46312f7f6467689ca493a463dcbf3c2a82f40687c8c338dec616a63b
2020/10/15 19:28:36 [INFO] ▶ Analyzing f86d3379ec05b420b31e82b42c394696470fd45021a30546a4177d6e478efa79
2020/10/15 19:28:36 [INFO] ▶ Analyzing 4fd4cf9da851e0aae037484775f59be071a769607d9b52101b0acbb7af691307
2020/10/15 19:28:36 [INFO] ▶ Analyzing 47ebe5483982f18677978956beb5f1101204e76265cc443e0007831f6f525e33
2020/10/15 19:28:36 [INFO] ▶ Analyzing e9245668ea5ac441dc9a9f4f7a2a4c5a0de1093c46c9b1aebc7c4fd666448621
2020/10/15 19:28:36 [INFO] ▶ Analyzing abe0be3e4f4a7637b8492483110ee7b0c2c981911030bf3abc72c17c1b13c03f
2020/10/15 19:28:36 [INFO] ▶ Analyzing f4d058336c6c9b3a6e66d9732ab7734bf856e9a724dd2ce74d7181d934366f71
2020/10/15 19:28:36 [INFO] ▶ Analyzing f8014f87dc9bf1cfcd12058e2e6aa73f3eaaeecfb60a1fdc6c4e0d1a478a2459
2020/10/15 19:28:36 [INFO] ▶ Analyzing e8d1008bb988275ce09345a94e24e2da6a50cf2abe7fd5abb21d32ccf9f23395
2020/10/15 19:28:36 [INFO] ▶ Analyzing de6d70e8276a731786735ad13495acefb8b83d1bb543642907efe7674c73bf27
2020/10/15 19:28:36 [INFO] ▶ Analyzing 54abba57ab8dddb4dc71d223dc8220795cb805abbc83e565f5b022fa0fee8f37
2020/10/15 19:28:37 [INFO] ▶ Analyzing 44c62b4a137af5e5d8596de540af4a2736b1ce6a9bfa9888a6f10652a6c6123c
2020/10/15 19:28:37 [WARN] ▶ Image [mariadb:10.5.6] contains 22 total vulnerabilities
2020/10/15 19:28:37 [ERRO] ▶ Image [mariadb:10.5.6] contains 22 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress mariadb:10.5.6
2020-10-15T19:29:01.776Z        INFO    Need to update DB
2020-10-15T19:29:01.776Z        INFO    Downloading DB...
2020-10-15T19:29:19.550Z        INFO    Detecting Ubuntu vulnerabilities...

mariadb:10.5.6 (ubuntu 20.04)
=============================
Total: 48 (UNKNOWN: 0, LOW: 44, MEDIUM: 4, HIGH: 0, CRITICAL: 0)
```
