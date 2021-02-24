#!/bin/bash  
(echo "{{magento_repo_username}}"  
sleep 1  
echo "{{magento_repo_password}}"   
sleep 1  
echo "y")|/data/wwwroot/magento/bin/magento sampledata:deploy -n