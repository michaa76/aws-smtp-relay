FROM openjdk:11-jre-slim
MAINTAINER Damien Metzler <dmetzler@nuxeo.com>
MAINTAINER Remi Cattiau <remi@cattiau.com>
MAINTAINER Morgan Christiansson <docker@mog.se>

ADD ./target/aws-smtp-relay-*-jar-with-dependencies.jar /aws-smtp-relay.jar

ENTRYPOINT exec java -Djava.security.egd=file:/dev/./urandom -jar /aws-smtp-relay.jar -b 0.0.0.0 --port 25 --region eu-west-1

EXPOSE 10025