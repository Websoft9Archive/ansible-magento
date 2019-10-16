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
     DocumentRoot "/data/wwwroot/mediawiki"
     ...
     
   #### Magento (LEMP) bind domain #### 

     server {
      listen 80;
      server_name    mediawiki.example.com; # modify it for you
     ...

   ```
3. Save it and restart [Web Service](/admin-services.md#apache)


## Magento Configuration

Modify the `LocalSettings.php` to set Magento, and you should know settings is from `DefaultSettings.php`

Refer to Magento official docs: [Configuration settings](https://www.mediawiki.org/wiki/Manual:Configuration_settings/en)

## Magento Extensions

Refer to Magento official docs: [Manual:Extensions](https://www.mediawiki.org/wiki/Manual:Extensions/en)

## Magento Create&Edit page

Refer to Magento official docs: [Help:Starting_a_new_page](https://www.mediawiki.org/wiki/Help:Starting_a_new_page/en)

## Magento VisualEditor

Refer to Magento official docs: [Help:Starting_a_new_page](https://www.mediawiki.org/wiki/Help:VisualEditor/User_guide/en)

## Magento change interface

Changing interface includes: modify logo, set navigation, modify css and so on

Refer to Magento official docs: [Help:FAQ:Changing Interface](https://www.mediawiki.org/wiki/Manual:FAQ#Changing_the_interface)

## Magento Enable uploading files

You can't upload files from Magento by default, you need to enable it first  

Refer to Magento official docs: [Help:FAQ:Enabel Uploading](https://www.mediawiki.org/wiki/Manual:FAQ#How_do_I_enable_uploading?)

## Magento Languages

Refer to Magento official docs: [Help:FAQ:Language](https://www.mediawiki.org/wiki/Manual:FAQ#How_do_I_change_the_interface_language?)

## Magento set MainPage

Refer to Magento official docs: [Help:FAQ:Chage Main Page](https://www.mediawiki.org/wiki/Manual:FAQ#How_do_I_change_which_page_is_the_main_page?)

## Magento using Composer

Websoft9's Magento have installed the Composer by default  

Refer to Magento official docs: [Help:Composer](https://www.mediawiki.org/wiki/Composer/en) 