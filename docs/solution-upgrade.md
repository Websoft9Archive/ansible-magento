# Update & Upgrade

Updates and upgrades are one of the maintenance tasks for sytem. Programs that are not upgraded for a long time, like buildings that are not maintained for a long time, will accelerate aging and gradually lose functionality until they are unavailable.

You should know the differences between the terms **Update** and **Upgrade**([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade))
- Operating system patching is **Update**, Ubuntu16.04 to Ubuntu18.04 is **Upgrade**
- MySQL5.6.25 to MySQL5.6.30 is **Update**, MySQL5.6 to MySQL5.7 is **Upgrade**

For Magento maintenance, focus on the following two Update & Upgrade jobs

- Sytem update(Operating System and Running Environment) 
- Magento upgrade 

## System Update

Run an update command to complete the system update:

``` shell
#For Centos&Redhat
yum update -y

#For Ubuntu&Debian
apt update && apt upgrade -y
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
