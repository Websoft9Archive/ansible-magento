# Update & Upgrade

To update and upgrade is one of the main task for system maintenance. Like buildings without maintenance for a long time, programs without upgrading will age faster, lose functionality until they are unavailable.

Get to know the differences between the terms **Update** and **Upgrade**([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade))
- Patching operating system is **Updating**, while Ubuntu16.04 to Ubuntu18.04 means **Upgrading**.
- MySQL5.6.25 to MySQL5.6.30 means **Updating**, yet MySQL5.6 to MySQL5.7 means **Upgrading**.

Maintenance for Magento includes the following two tasks.

- Update system (Operating System and Runtime) 
- Upgrade Magento

## Update System 

Run a command to complete updating the system:

``` shell

#For Ubuntu&Debian
sudo apt update && apt upgrade -y

#For Centos&Redhat
sudo yum update -y --skip-broken
```
> This deployment package is preconfigured with a scheduled task for automatic updates. If you want to remove the automatic update, please delete the corresponding Cron

## Magento Upgrade

Magento provide two methond for Upgrade: Magento backend online upgrade and Composer command upgrade  

Below is the step for upgrade online:

1. Log in to your Magento, go to 【System】>【Web Setup Wizard】>【System Upgrade】 
   ![Magento upgrade](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-sysupgradestart-websoft9.png)
2. If your Magento not [Link Marketplace](/stack-installation.html#link-magento-marketplace), you need to fill in your Access key to link Marketplace
   ![Magento connect Marketplace](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-sysupgradestartkey-websoft9.png)
3. Click the upgrade button to start upgrading online
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-sysupgradestarting-websoft9.png)
4. If upgrade is very slowly and have error, please refer to [Troubleshooting](/else-troubleshooting.html#magento-upgrade-or-install-module-failed)

More upgrade detail please refer to [Magento Upgrade](https://devdocs.magento.com/guides/v2.3/comp-mgr/bk-compman-upgrade-guide.html)
