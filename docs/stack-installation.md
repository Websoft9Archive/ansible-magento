# Initial Installation

If you have completed the Magento deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Magento

## Magento Installation Wizard

1. Using local browser visit the URL http://DNS or http://Server's Internet IP, enter to Magento Mall home page 
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-mall-websoft9.png)
2. Using local browser visit the URL http://DNS or http://Server's Internet IP, enter to login interface  
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-login-websoft9.png)
3. Login it to Magento console [(Don't know password?)](/stack-accounts.md)  
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-backend-websoft9.png)

> Refer to [Magento Docs](https://magento.com/resources/technical) to get more details

## Q&A

#### I can't visit the start page of Magento?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Which database does this Magento package use?

MySQL

#### Can I use Cloud database for Magento?

Yes, Use the following command to replace Magento's database.  

```
magento setup:config:set --db-host=DB-HOST --db-name=DB-NAME --db-user=DB-USER --db-engine=DB-ENGINE --db-password=DB-PASSWORD
```