FROM registry-scu.cloudtogo.cn/ubuntu:jdk
ARG app
ADD $app app.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
