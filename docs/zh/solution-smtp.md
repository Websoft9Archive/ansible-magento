# SMTP

大量用户实践反馈，使用**第三方 SMTP 服务发送邮件**是一种最稳定可靠的方式。  

请勿在服务器上安装sendmail等邮件系统，因为邮件系统的路由配置受制与域名、防火墙、路由等多种因素制约，非常不稳定，且不易维护、诊断故障很困难。

下面以**网易邮箱**为例，提供设置 Magento 发邮件的步骤：

1. 在网易邮箱管理控制台获取 SMTP 相关参数
   ```
   SMTP host: smtp.163.com
   SMTP port: 465 or 994 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9@163.com
   SMTP password: #wwBJ8    //此密码不是邮箱密码，是需要通过163邮箱后台设置去获取的授权码
   ```
2. 确保你的 Magento 已经[连接到官方 Marketplace](/zh/stack-installation.html#连接-magento-marketplace)
3. 使用 SSH 工具登录到服务器，使用命令方式安装 Magento SMTP 扩展
   ```
    cd /data/wwwroot/magento` 
	composer require mageplaza/module-smtp
	php bin/magento setup:upgrade 
	php bin/magento setup:di:compile
   ```
   如果不会使用命令，请直接在 Marketplace 上购买 SMTP 插件
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtpplugin-websoft9.png)
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-buysmtpplugin-websoft9.png)

4. 登录到 Magento 后台，完成 SMTP 参数设置  
   - 点击**MAGEPLAZA**，在右边菜单选择**应用配置管理**;  
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtp-2-websoft9.png)

   - 按照下图输入相应的信息
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtp-3-websoft9.png)

5. 登录到 Magento 后台，设置发件箱
   - 首先进入应用配置管理页面:  
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtp-4-websoft9.png)
   - 按照下图设置邮箱：  
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtp-5-websoft9.png)
     
> 更多邮箱设置（QQ邮箱，阿里云邮箱，Gmail，Hotmail等）以及无法发送邮件等故障之诊断，请参考由Websoft9提供的 [SMTP 专题指南](https://support.websoft9.com/docs/faq/zh/tech-smtp.html)