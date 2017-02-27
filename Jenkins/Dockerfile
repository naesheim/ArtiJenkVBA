FROM jenkins:2.32.2-alpine

USER root
RUN apk update && apk add libstdc++ && rm -rf /var/cache/apk/*

USER jenkins

ARG JAVA_OPTS
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

ARG master_image_version="local build"
ENV master_image_version $master_image_version

ARG GRADLE_USER_HOME
ENV GRADLE_USER_HOME "${WORKSPACE}"

# Install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# Copy preconfigured VBA job
COPY Jobs/VBA_demo.xml usr/share/jenkins/ref/jobs/VBA_demo_1/config.xml
