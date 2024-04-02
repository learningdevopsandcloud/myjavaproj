from amazonlinux:latest

RUN amazon-linux-extras install java-openjdk11

COPY . myjava

WORKDIR myjava

RUN wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo

RUN sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo

RUN yum install -y apache-maven

RUN mvn clean install

COPY ./target/onliebookstore.war /usr/local/tomcat/webapps

