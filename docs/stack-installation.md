# Initial Installation

If you have completed the Magento deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Magento

## Magento Installation Wizard

1. If you are installing 2.4.0 or the latest version,no initial setup is required,visit the URL *https://domain* or *https://Internet IP*,Magento frontpage likes below
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/magento/magento-init-websoft9.png)
2. If you are installing 2.4.0 or the latest version,visit the URL *https://domain/admin* or *https://Internet IP/admin*,login to backend of Magento  
   Administrator username: root,Administrator password: stored in the file of your server instance: /credentials/password.txt.
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-check-websoft9.png)
3. If you are installing version 2.3.5 or earlier, you need to install according to the wizard. Please refer to wizard 3 ~ 12.  
   Using local Chrome or Firefox to visit the URL *https://domain* or *https://Internet IP*, start to install    
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-agree-websoft9.png)
4. Accept license and environment check passed, then go to next step
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-check-websoft9.png)
5. Database connection configuration, you can use the MySQL in this Server([Don's know password](/stack-accounts.html#mysql)), and you can use other database services
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/magento/magento-db-websoft9.png)
6. Select the language and go to next step
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setlanguage-websoft9.png)
7. Set the administrator URL
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/magento/magento-setbackend-websoft9.png)
8. Set the administrator account
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setadmin-websoft9.png)
9. Click the "Install Now" and Waiting for 2-3 minutes
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-startinstall-websoft9.png)
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-wtinstall-websoft9.png)
10. OK, it has been installed successfully, the page displays the installed site information. Click "Launch Magento Admin".
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-ss-websoft9.png)
11. Login to backend of Magento  
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/magento/mg10.png)
12. You can see the console of Mangento now
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-backend-websoft9.png)
13. Magento frontpage likes below
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-frontend-websoft9.png)

> Refer to [Magento Docs](https://magento.com/resources/technical) to get more details

## Link Magento Marketplace

Completed installation of Magento, suggest you make your Magento system link Magento's Marketplace. Once you have linked it, you can use many resourses on Marketplace.

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setuptools-websoft9.png)  

1. [Register a Magento Account](https://account.magento.com/applications/customer/login)
2. Log in to Magento's Marketplace, create your **Access Key** from My Profile setting
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtp-1-websoft9.png)  
3. Save Access Key
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-savemykey-websoft9.png)  
4. Log in your Magento backend, open **SYSTEM** > **Web Setup Wizard**
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-websetupwz-websoft9.png) 
5. Fill in the **System config** with your Access Key from Marketplace
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setmkkey-websoft9.png) 
6. Save it, and wait for the Waiting for a successful connection
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setmkkeyss-websoft9.png) 
7. Then, you can use the resources of Marketplace online


## Q&A

#### I can't visit the start page of Magento?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Which database does this Magento package use?

MySQL

#### Can I use Cloud database for Magento?

Yes