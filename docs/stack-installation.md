# Initial Installation

If you have completed the Magento deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Magento

## Magento Installation Wizard

1. Using local Chrome or Firefox to visit the URL *https://domain* or *https://Internet IP*, start to install    
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw01.png)

2. Choose a language to continue
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw02.png)

3. Acccept the license and Continue
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw03.png)

4. Fill in database configuration
   > It's  easy to make mistakes on this step. If have mistakes, you can [Re-install Magento](/stack-installation.html#can-i-re-install-mediawiki)

   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mediawiki-setdbconnstr-websoft9.png)

   - Database name: mediawiki (MySQL on this Image has a database instance name mediwiki)
   - Database username: root
   - Database password: [Don't know password?](/stack-accounts.html#mysql)
   
   If you don't want to use the mediawiki as Database name,please create your database first. If you don't want to use the root as Database username,please create your user first
5. Set database character,Click "Continue";  
  ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw05.png)

6. Set the site name, administrator account, password and mail,Click "Continue";
  ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw06.png)

7. Click "Continue";  
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw07.png)

8. Click "Continue";  
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw08.png)

9. Click "Continue";  
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw09.png)

10. Download the file and upload it to the server directory:/data/wwwroot/mediawiki
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw10.png)

11. OK, it has been installed successfully.

12. Use http://domain  to go to your index page.
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/mw11.png)

> More useful Magento guide, please refer to [Magento Sysadmin Docs](https://www.mediawiki.org/wiki/Sysadmin_hub/zh)

## Q&A

#### I can't visit the start page of Magento?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Which database does this Magento package use?

MySQL

#### Can I use Cloud database for Magento?

Yes

#### Can I re-install Magento?

Visit URL *http://Internet IP/mw-config/index.php?page=Restart&lastPage=Install*  to start reinstall

![](http://libs.websoft9.com/Websoft9/DocsPicture/en/mediawiki/Magento-reinstall-websoft9.png)
