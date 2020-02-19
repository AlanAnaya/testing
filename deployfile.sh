#!/bin/bash

PATH=cloud_user@alananaya3c:/home/cloud_user/Desktop/backup
if [ -d PATH ]
then
  scp -r target/surefire-reports/*.xml cloud_user@alananaya3c.mylabserver.com:/home/cloud_user/Desktop/backup
else
  ssh cloud_user@alananaya3c.mylabserver.com mkdir /home/cloud_user/Desktop/backup
  scp -r target/surefire-reports/*.xml cloud_user@alananaya3c.mylabserver.com:/home/cloud_user/Desktop/backup
fi
 
