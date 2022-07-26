
#
# Note:  On Apple Silicon M1 Corretto targeted JDK 17 is not available
# So use AWS CentOS container - amazoncorretto:17

ARCH := $(shell uname -m)

ifeq ($(ARCH), arm64)
	JDK_URL = "https://download.oracle.com/java/17/archive/jdk-17.0.4_linux-aarch64.tar.gz"  # This does not exist yet!
else
	JDK_URL = "https://download.oracle.com/java/17/archive/jdk-17.0.4_linux-x64_bin.tar.gz"
endif

ifeq ($(ARCH), arm64)
	# DOCKERFILE = Dockerfile.alpine
	DOCKERFILE = Dockerfile.centos
else
	DOCKERFILE = Dockerfile
endif



NAME = alpine-scala

build:
	docker build -f $(DOCKERFILE) -t $(NAME) .

run:
	docker run -it --rm -d  --name $(NAME) $(NAME)
	docker ps -a

bash:
	docker exec -it $(NAME) bash

sh:
	docker exec -it $(NAME) sh

rm:
	docker stop $(NAME)
	docker stop $(NAME)

get-jdk:
	# wget https://download.oracle.com/java/17/archive/jdk-17.0.4_linux-x64_bin.tar.gz
	wget $(JDK_URL)


platform:
	@echo "Arch $(ARCH)"

xxx:
	@echo "Arch |$(ARCH)|"
	@echo "JDK_URL |$(JDK_URL)|"



