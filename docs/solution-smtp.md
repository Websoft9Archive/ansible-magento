# SMTP

Sending mail is a common feature for Magento. With a large number of users' practice and feedback, only one way is recommended, that is, using the **third-party SMTP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it has great difficulty in maintenance.

Taking **SendGrid's SMTP Service** as an example, refer to the following steps to configure sending mail:

1. Log in SendGrid console, and prepare your SMTP settings.
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smtp
   SMTP password: #fdfwwBJ8f    
   ```
2. Make sure your Magento is [linking Magento's Marketplace](/stack-installation.html#link-magento-marketplace)
3. Connect Server, use below commands for installing Magento SMTP module
   ```
    cd /data/wwwroot/magento` 
	composer require mageplaza/module-smtp
	php bin/magento setup:upgrade 
	php bin/magento setup:di:compile
   ```
   If you don't want to use command, you can buy it from Marketplace and install it
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtpplugin-websoft9.png)
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-buysmtpplugin-websoft9.png)

4. Log in Magento backend, configure SMTP  
   - Click **MAGEPLAZA** to start settings
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/magento/magento-smtp-2-websoft9.png)

   - Setting details
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/magento/magento-smtp-3-websoft9.png)

5. Log in Magento backend, set send from and send to Email address
   - Click **MAGEPLAZA** to start settings
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtp-4-websoft9.png)
   - Set it   
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtp-5-websoft9.png)
     

More SMTP Service(Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*