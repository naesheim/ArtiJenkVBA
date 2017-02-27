FROM jenkins:2.32.2-alpine

USER root
RUN apk update && apk add libstdc++ && rm -rf /var/cache/apk/*

USER jenkins

ARG JAVA_OPTS
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

# Install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# Copy preconfigured VBA job
COPY Jobs/demo1_snapshot.xml usr/share/jenkins/ref/jobs/VBA_demo1_snapshot/config.xml
COPY Jobs/demo1_release.xml usr/share/jenkins/ref/jobs/VBA_demo1_release/config.xml
