# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for **Domain binding** is have completed the **Domain resolution** for Magento Instance.

From the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Magento domain name binding steps:

1. Connect your Cloud Server
2. Modify [vhost configuration file](/stack-components.md#apache), change the domain name item for you
   ```text
   #### Magento (LAMP) bind domain #### 

     <VirtualHost *:80>
     ServerName www.mydomain.com # modify it for you
     DocumentRoot "/data/wwwroot/magento"
     ...
     
   #### Magento (LEMP) bind domain #### 

     server {
      listen 80;
      server_name    magento.example.com; # modify it for you
     ...

   ```
3. Save it and restart [Web Service](/admin-services.md#apache)


## Magento install modules

Below is the methods for you installing modules online

1. Make sure your Magento is [Linking Marketplace](/stack-installation.html#link-magento-marketplace)
3. Search the modules on Marketplace, 【buy】it and【Install】 it
4. Log in your Magento, open【SYSTEM】>【Web Setup Wizard】>【System Configration】 
5. On the left memu, click 【EXTENSION MANAGER】>【Refresh】, synchronize the your purchase to your Magento, then【Review and Install】 it
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-theme-1-websoft9.png)
   > Refresh not always successful, so please Refresh it repeatedly
6. Select the modules in the catalog and install it
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-theme-2-websoft9.png)
7. Magento will check the system environment before installation
8. If installation is very slowly and have error, please refer to [Troubleshooting](/else-troubleshooting.html#magento-upgrade-or-install-module-failed)


## Magento set language

1. Download language package
1. Set language for Magento front page: go to Stores > Configuration > General > Local
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setlan-websoft9.png)
2. Set language for Magento backend page: go to Account Setting > Interface Local
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/magento/magento-adminlanguages-websoft9.png)

## Magento Cache

Cache is a important function for Magento

1. Log in Magento, go to【System】>【Tools】> 【Cache Management】
2. Select items
3. Click 【Flush Magento Cache】and【Flush Cache Storage】to start 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-flushcache-websoft9.png)
4. You can cancel cache from here
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-dscache-websoft9.png)

## Magento API

Support for both REST (Representational State Transfer) and SOAP (Simple Object Access Protocol). In Magento 2, the web API coverage is the same for both REST and SOAP.

Refer to Magento [API official docs](https://devdocs.magento.com/guides/v2.2/get-started/bk-get-started-api.html)