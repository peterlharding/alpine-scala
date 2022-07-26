# alpine-scala

Scala setup on alpine

Note, there is no jdk-17.0.4_linux-aarch64_bin.tar.gz dostribution available and no JDK17 Corretto for M1 chip.
Consequently so you need you build on the CentOS image  - amazoncorretto:17 - which does support the Apple M1 CPU


# Download

## Oracle JDK/OpenJDK

### Intel

*  wget https://download.oracle.com/java/17/archive/jdk-17.0.4_linux-x64_bin.tar.gz

### Apple M1 Silicon

Would like this but it does not exist (yet) and so another approach is required.

* wget https://download.oracle.com/java/17/archive/jdk-17.0.4_linux-aarch64_bin.tar.gz


## Amazon Coretto

See:

* https://docs.aws.amazon.com/corretto/index.html
* https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/docker-install.html
* https://github.com/corretto/corretto-docker

### Restrictions

At present (2022-07-26) there is no support for aarch64 the Apple
M1 silicon with the alpine images.  There is a centos (yum) based
image for Corretto 17 - amazoncorretto:17

Check out - Dockerfile.centos

## AZUL

Looks like I should be able to use these as the download OK on Ammple M1 silicon platform

* docker pull azul/zulu-openjdk-alpine:17.0.3
* docker pull azul/zulu-openjdk-alpine:17.0.4


# Errors

```
% docker pull amazoncorretto:11-alpine
11-alpine: Pulling from library/amazoncorretto
no matching manifest for linux/arm64/v8 in the manifest list entries
% docker pull amazoncorretto:18-alpine
18-alpine: Pulling from library/amazoncorretto
no matching manifest for linux/arm64/v8 in the manifest list entries
% docker pull amazoncorretto:17-alpine
17-alpine: Pulling from library/amazoncorretto
no matching manifest for linux/arm64/v8 in the manifest list entries
```



