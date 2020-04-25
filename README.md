# MariaDB

MariaDB, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~216MB)

Security scanning using Clair
```
clair-scanner secureimages/mariadb:10.4.12-alpine-3.11.6
2020/04/25 14:06:10 [INFO] ▶ Start clair-scanner
2020/04/25 14:06:12 [INFO] ▶ Server listening on port 9279
2020/04/25 14:06:12 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 14:06:12 [INFO] ▶ Analyzing e0df692e37f0b0f6a72bab0e4da4336ac86e1f753ede6907115f2e23e0317c33
2020/04/25 14:06:12 [INFO] ▶ Analyzing a47eb43c2e3f762e8ac2149bf47c8d089765fd9101cd03ce2c2a52932458ba67
2020/04/25 14:06:12 [INFO] ▶ Analyzing 4aec6247d06041fa41b3349132bb0175f96a7d46dda760e8db5d86460a178679
2020/04/25 14:06:12 [INFO] ▶ Image [secureimages/mariadb:10.4.12-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/mariadb:10.4.12-alpine-3.11.6
2020-04-25T11:06:20.096Z        INFO    Need to update DB
2020-04-25T11:06:20.096Z        INFO    Downloading DB...
2020-04-25T11:06:26.958Z        INFO    Detecting Alpine vulnerabilities...

secureimages/mariadb:10.4.12-alpine-3.11.6 (alpine 3.11.6)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~357MB)

[https://hub.docker.com/_/mariadb](https://hub.docker.com/_/mariadb)
```
docker pull mariadb:10.4.12
```

Security scanning using Clair
```
clair-scanner mariadb:10.4.12
2020/04/25 14:06:32 [INFO] ▶ Start clair-scanner
2020/04/25 14:06:37 [INFO] ▶ Server listening on port 9279
2020/04/25 14:06:37 [INFO] ▶ Analyzing 6ef5a7b6cc6da3fe4489191c166763832ff732b6c346e7d77a2dbbd3e89a9f08
2020/04/25 14:06:37 [INFO] ▶ Analyzing c774328901d4a9ee5201de46d502b8f56f9b6a5d21c64affa6ca96d3b69cfe68
2020/04/25 14:06:37 [INFO] ▶ Analyzing 67b382b86062872cc280027bfb3cc103cba4e52bb66d23c590e0cb8647dd39fe
2020/04/25 14:06:37 [INFO] ▶ Analyzing 4e0bca968c343d4488ae5b156e0b4a6630a6964bd401264b3fe9060a266f4ce7
2020/04/25 14:06:37 [INFO] ▶ Analyzing 0d3d8fda25b2c82aa08dc2a897c8105abeaf85548f9eadf15dbb41de7e38213b
2020/04/25 14:06:37 [INFO] ▶ Analyzing 16a0eaab1900b14f8085832f73b719f8a295dd507fb32332cc09fff3086d32ab
2020/04/25 14:06:37 [INFO] ▶ Analyzing c6fb389ce54e019ad77c1f575e3b13830e5246fae84eccf574ab736f28c5e546
2020/04/25 14:06:37 [INFO] ▶ Analyzing aa38767331d3d6dcc039c78c1a61f267da3047f0e8eb1dfea27a522faa2bd18b
2020/04/25 14:06:37 [INFO] ▶ Analyzing 6ee61c7300fa1b7f4efe123a970bdb7abff0fd30be8df4496d74cf3322f8eb45
2020/04/25 14:06:37 [INFO] ▶ Analyzing 8c5290f53e1efb1bbfd620ade86bd90ac3f620c275e672cc31baf99340ed78b5
2020/04/25 14:06:37 [INFO] ▶ Analyzing bcc57437036a64c93c29ff1b521257dc227fb59b89175a7acabf6fe918f53a74
2020/04/25 14:06:37 [INFO] ▶ Analyzing 1c936a4775ef5fc44b571a4bb89d1a757b5e0ea5461fd06ebe36f69f5bd5c75a
2020/04/25 14:06:37 [INFO] ▶ Analyzing 10e49b63deffb06769b5e62e6a823c754a664dff049ddd75578ffebc76ee7f94
2020/04/25 14:06:37 [INFO] ▶ Analyzing 354c88594a9f4294a0c2214ae8260dd9c8b209364cc9fbe44559ef8367fffd14
2020/04/25 14:06:37 [WARN] ▶ Image [mariadb:10.4.12] contains 52 total vulnerabilities
2020/04/25 14:06:37 [ERRO] ▶ Image [mariadb:10.4.12] contains 52 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress mariadb:10.4.12
2020-04-25T11:06:40.620Z        INFO    Need to update DB
2020-04-25T11:06:40.620Z        INFO    Downloading DB...
2020-04-25T11:06:49.463Z        INFO    Detecting Ubuntu vulnerabilities...

mariadb:10.4.12 (ubuntu 18.04)
==============================
Total: 113 (UNKNOWN: 0, LOW: 15, MEDIUM: 78, HIGH: 20, CRITICAL: 0)
```
