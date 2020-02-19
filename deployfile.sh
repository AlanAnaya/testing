#/bin/bash

chmod 777 -r /etc/sysconfig/jenkins 
sed -i -e 's/JENKINS_USER\="jenkins"/JENKINS_USER\="root"/g' /etc/sysconfig/jenkins
scp -r target/surefire-reports/*.xml cloud_user@alananaya3c.mylabserver.com:/home/cloud_user/Desktop
