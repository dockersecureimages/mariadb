# MariaDB

MariaDB, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~231MB)

Security scanning using Clair
```
clair-scanner secureimages/mariadb:10.5.8-alpine-3.13.2
2021/02/20 11:44:10 [INFO] ▶ Start clair-scanner
2021/02/20 11:44:12 [INFO] ▶ Server listening on port 9279
2021/02/20 11:44:12 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 11:44:12 [INFO] ▶ Analyzing f912e3315b6633eb896b14e05adab73ec1c927ebe94abc1ee8b3989a94d877d8
2021/02/20 11:44:12 [INFO] ▶ Analyzing d854e49f9b1e9fa5626a501442dd65976d6a06f27352d81f4e92f343e40396bb
2021/02/20 11:44:12 [INFO] ▶ Analyzing 30dafa1470edef1312ce19ed20283ee60cae382fc4f0e416f5d07a55df4cdd51
2021/02/20 11:44:12 [WARN] ▶ Image [secureimages/mariadb:10.5.8-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 11:44:12 [ERRO] ▶ Image [secureimages/mariadb:10.5.8-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/mariadb:10.5.8-alpine-3.13.2
2021-02-20T11:44:15.796Z        INFO    Need to update DB
2021-02-20T11:44:15.796Z        INFO    Downloading DB...
2021-02-20T11:44:22.004Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T11:44:22.013Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/mariadb:10.5.8-alpine-3.13.2 (alpine 3.13.2)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~407MB)

[https://hub.docker.com/_/mariadb](https://hub.docker.com/_/mariadb)
```
docker pull mariadb:10.5.8
```

Security scanning using Clair
```
clair-scanner mariadb:10.5.8
2021/02/20 11:44:27 [INFO] ▶ Start clair-scanner
2021/02/20 11:44:33 [INFO] ▶ Server listening on port 9279
2021/02/20 11:44:33 [INFO] ▶ Analyzing 2aade13603488c2c20ed3b6d742867cc8ce6b6dfa6f2eaff27799f1b6596835d
2021/02/20 11:44:33 [INFO] ▶ Analyzing cdec4b02a479c3dae4af73d15dfb2afff354cfeb3b9017f69d567920c629ee29
2021/02/20 11:44:33 [INFO] ▶ Analyzing 138ea95583e2a6c484dbf3d9d6994c096efca7f9bd07176dccae887494b857bb
2021/02/20 11:44:33 [INFO] ▶ Analyzing 47617d7bd360f3a1e2550af2f959f91e3c235a6edf981727346c1fc556d23b1d
2021/02/20 11:44:33 [INFO] ▶ Analyzing 521975e5cc4d99dc9de505c4b265f0c2a98a857066d530d4e7d59178e4c48d73
2021/02/20 11:44:33 [INFO] ▶ Analyzing 2f417a6918268224dc7151814a93c35b100e3c702e0e2bc5b39bd4424e4168bf
2021/02/20 11:44:33 [INFO] ▶ Analyzing d92716735bf6374a14b8993c596054b416be21bb74a1e1842b80dc260a08188a
2021/02/20 11:44:33 [INFO] ▶ Analyzing db25bbd32f1c00f7a73013ff8f959b012733ce89b89f8b15d33faf5f70a5b1b3
2021/02/20 11:44:33 [INFO] ▶ Analyzing 98fb038e1024478982ef3ca35dfd331290f619ba3ad014c890b47330d2315aa6
2021/02/20 11:44:33 [INFO] ▶ Analyzing dccc9c657633e6569e0b0303445d4c3dc59cd2ef69c972b8fccaebcd92467cb1
2021/02/20 11:44:33 [INFO] ▶ Analyzing 43ea89b06e5dcd8a3a0807cea0a8e168e90a53034419670da6308a9818fe5956
2021/02/20 11:44:34 [INFO] ▶ Analyzing 1a67cfadf7c6e4c76635bb91e0e7a73b82ff054ec66a637dab753fcb0e54a992
2021/02/20 11:44:34 [WARN] ▶ Image [mariadb:10.5.8] contains 56 total vulnerabilities
2021/02/20 11:44:34 [ERRO] ▶ Image [mariadb:10.5.8] contains 56 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress mariadb:10.5.8
2021-02-20T11:44:35.722Z        INFO    Need to update DB
2021-02-20T11:44:35.722Z        INFO    Downloading DB...
2021-02-20T11:44:43.959Z        INFO    Detecting Ubuntu vulnerabilities...
2021-02-20T11:44:43.962Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

mariadb:10.5.8 (ubuntu 20.04)
=============================
Total: 84 (UNKNOWN: 0, LOW: 33, MEDIUM: 51, HIGH: 0, CRITICAL: 0)
```
