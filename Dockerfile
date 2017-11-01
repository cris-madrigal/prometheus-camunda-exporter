FROM centos:7

RUN yum update -y && \
    su -c 'rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm' && \
    yum install -y java-1.8.0-openjdk.x86_64

COPY target/prometheus-camunda-exporter-springboot.jar .

ENTRYPOINT java -jar ./prometheus-camunda-exporter-springboot.jar
