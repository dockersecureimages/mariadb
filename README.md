# MariaDB

MariaDB, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/mariadb:10.4.12-alpine-3.11.3
2020/02/03 13:53:33 [INFO] ▶ Start clair-scanner
2020/02/03 13:53:35 [INFO] ▶ Server listening on port 9279
2020/02/03 13:53:35 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/03 13:53:36 [INFO] ▶ Analyzing f93f96ba3d72b7ec7c1a9a6a356cab34ef7200008f65614d4915b5836017924a
2020/02/03 13:53:36 [INFO] ▶ Analyzing d9b775d42d6a20f1ff24b9598c63eb73a680e8b5b6ca089c2caf8d8c4d9f0be1
2020/02/03 13:53:36 [INFO] ▶ Analyzing 8396210126f8a80808a9405e8fa3af56988e627d2244074e2360d395eabaeae1
2020/02/03 13:53:37 [INFO] ▶ Image [secureimages/mariadb:10.4.12-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/mariadb:10.4.12-alpine-3.11.3
2020-02-03T11:53:38.904Z        INFO    Need to update DB
2020-02-03T11:53:38.904Z        INFO    Downloading DB...
2020-02-03T11:53:43.169Z        INFO    Reopening DB...
2020-02-03T11:53:46.424Z        INFO    Detecting Alpine vulnerabilities...

secureimages/mariadb:10.4.12-alpine-3.11.3 (alpine 3.11.3)
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
2020/02/03 13:53:51 [INFO] ▶ Start clair-scanner
2020/02/03 13:53:56 [INFO] ▶ Server listening on port 9279
2020/02/03 13:53:56 [INFO] ▶ Analyzing 0a83f61838ece143b24a4555f0b9ee1cd45e1a9f4af16a5b2f714868b4ae6546
2020/02/03 13:53:57 [INFO] ▶ Analyzing 076ba28069d5d2c1520533138630ca87b29cb86ea460ab08a39df8b77d5425a0
2020/02/03 13:53:57 [INFO] ▶ Analyzing 70e53499a05a2ed55f7e0e8750870f3c5b2cd1fd5c5583086a1ba4dc9f3e5915
2020/02/03 13:53:57 [INFO] ▶ Analyzing a1a84f0f6a99a7d15e5b85e6d3df412ce94227aaee11a373667e9edad23f5646
2020/02/03 13:53:57 [INFO] ▶ Analyzing ae01dca7c2791d87a158359c54cd02a8ec5788bba9c6dae10e5d4d8b444e5263
2020/02/03 13:53:57 [INFO] ▶ Analyzing 8d40640c6aa727ba3adde83b0403953521fe29e3f31401c5218a213cbebc86e0
2020/02/03 13:53:57 [INFO] ▶ Analyzing 699dc5230c9fd53beaf0ec6214f47083a2eabc8c015f51b1d33f6c68201f57cb
2020/02/03 13:53:57 [INFO] ▶ Analyzing 289d44829a136d9c024a5d8a80109f740ff69195da411ffe5b9331953e9f017b
2020/02/03 13:53:57 [INFO] ▶ Analyzing 8e61313193075e9061ea3f142e764eac1ea209b0afb3dcec00444b2ccd430fd6
2020/02/03 13:53:57 [INFO] ▶ Analyzing 3c6e9cb6df09510fa4fd2d5e44df711062ba7874a13897ea2316e91a3a148aa3
2020/02/03 13:53:57 [INFO] ▶ Analyzing 98f25d489568b1a090ef1231a4ae8340e3db0916262f3620a53491578140427e
2020/02/03 13:53:57 [INFO] ▶ Analyzing 628a8bf822c171bd50d99cffc48d347eac074b0717ae8e4054f1161dabf96b93
2020/02/03 13:53:57 [INFO] ▶ Analyzing caf7ca0f9d8d48272cad064f4984bc85d46fb4c3d1f398e5cb71f42f3488c519
2020/02/03 13:53:57 [INFO] ▶ Analyzing 5a75f0b21f327c2f3e24725ba1be73e949fcc75b61815f49263bcadef26e9eb5
2020/02/03 13:53:57 [WARN] ▶ Image [mariadb:10.4.12] contains 49 total vulnerabilities
2020/02/03 13:53:57 [ERRO] ▶ Image [mariadb:10.4.12] contains 49 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress mariadb:10.4.12
2020-02-03T11:54:00.525Z        INFO    Need to update DB
2020-02-03T11:54:00.525Z        INFO    Downloading DB...
2020-02-03T11:54:04.422Z        INFO    Reopening DB...
2020-02-03T11:54:09.386Z        INFO    Detecting Ubuntu vulnerabilities...

mariadb:10.4.12 (ubuntu 18.04)
==============================
Total: 116 (UNKNOWN: 0, LOW: 23, MEDIUM: 73, HIGH: 20, CRITICAL: 0)
```
