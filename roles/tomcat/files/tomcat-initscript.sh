#!/bin/bash
#
sudo yum install java-1.8.0-openjdk-devel
sudo useradd -m -U -d /opt/tomcat -s /bin/false tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz
tar xzpf apache-tomcat-8.5.81.tar.gz
sudo mv apache-tomcat-8.5.81/* /opt/tomcat/
sudo chown -R tomcat: /opt/tomcat
sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'
sudo cp tomcat.service /etc/systemd/system/tomcat.service
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl enable tomcat


