FROM jenkins:2.46.3-alpine

USER root
RUN apk update && apk add libstdc++ && rm -rf /var/cache/apk/*
RUN apk update && apk add curl python && curl -o docker-1.12.1.tgz https://get.docker.com/builds/Linux/x86_64/docker-1.12.1.tgz && tar zxvf docker-1.12.1.tgz && mv docker/* /usr/bin/ && rm -rf docker-*

ARG JAVA_OPTS
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

# Install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# Copy preconfigured VBA job
#COPY Jobs/demo1_snapshot.xml usr/share/jenkins/ref/jobs/VBA_demo1_snapshot/config.xml
#COPY Jobs/demo1_release.xml usr/share/jenkins/ref/jobs/VBA_demo1_release/config.xml
