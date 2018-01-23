FROM debian:testing

MAINTAINER Yadickson Soto <yadickson@gmail.com>

ARG SOURCE_DIR=/source/
ARG BUILD_DIR=/build/

WORKDIR ${SOURCE_DIR}

RUN echo "Source directory ${SOURCE_DIR}"; \
	echo "Build directory ${BUILD_DIR}"

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install git wget -y
