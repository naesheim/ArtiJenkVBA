FROM tomcat:8.0-jre8-alpine

MAINTAINER Hans G, Praqma

ENV ARTIFACTORY_VERSION 4.16.0

RUN apk add --update openssl && apk add --update unzip

RUN rm -rf webapps/

RUN wget -O artifactory.zip https://bintray.com/jfrog/artifactory/download_file?file_path=jfrog-artifactory-oss-${ARTIFACTORY_VERSION}.zip \
&& unzip -j artifactory.zip "artifactory-*/webapps/artifactory.war" -d webapps/
# && mv webapps/artifactory.war webapps/ROOT.war

#RUN mkdir -p /artifactory
COPY config/dir.zip /dir.zip
RUN cd / && unzip /dir.zip
ENV ARTIFACTORY_HOME /artifactory

WORKDIR /artifactory
