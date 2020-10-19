# 初始化安装

在云服务器上部署 Magento 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 Magento，请先到 **域名控制台** 完成一个域名解析

## Magento 安装向导

1. 如果安装的是2.4.0或最新的版本,不需要进行引导安装，浏览器输入*http://域名* 或 *http://Internet IP*, 就进入商店首页
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-init-websoft9.png)
2. 如果安装的是2.4.0或最新的版本，浏览器输入*http://域名/admin* 或 *http://Internet IP/admin*,登陆成功体验后台 
   管理员账号：*`root`* 管理员密码：存储在您的服务器指定文件中（ */credentials/password.txt* ）  
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-login-websoft9.png)
3. 如果安装的是2.3.5或更早的版本，需要根据向导来安装，请参照向导3~12。  
   使用本地电脑的 Chrome 或 Firefox 浏览器访问网址：*http://域名* 或 *http://Internet IP*, 就进入引导首页
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-agree-websoft9.png)
4. 接受许可协议，环境检测通过，进入下一步
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-check-websoft9.png)
5. 系统进入配置数据库界面，可以使用本部署包自带的 MySQL（[不知道数据库密码？](/zh/stack-accounts.html#mysql)），也可以使用其他数据库源
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-db-websoft9.png)
6. 设置语言、时区等信息
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setlanguage-websoft9.png)
7. 设置店铺的访问域名和后台地址（后台地址设置后一定要记住）
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setbackend-websoft9.png)
8. 设置管理账号和密码，牢记之
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setadmin-websoft9.png)
9. 系统进入待安装过程，点击“Install Now”，耐心等待
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-startinstall-websoft9.png)
10. 安装成功后，系统会有如下提示
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-ss-websoft9.png)
11. 点击“Launch Magento Admin”，登陆后台
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-login-websoft9.png)
12. 登陆成功，体验后台
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-backend-websoft9.png)

> 需要了解更多Magento的使用，请参考官方文档：[Magento Docs](https://magento.com/resources/technical)

## 连接 Magento Marketplace

安装 Magento 后，建议把你安装的 Magento 系统与 Magento 官方的 Marketplace 资源进行在线连接，这样便可以使用 Marketplace 上的大量资源

![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setuptools-websoft9.png)  

1. 到官方 [注册 Magento 账号](https://account.magento.com/applications/customer/login)
2. 登录 Marketplace，打到My Profile 的 Access Keys 页面新建一个自己的 Access Key; 
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-smtp-1-websoft9.png)  
3. 保存 Access Key
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-savemykey-websoft9.png)  
4. 登录自己的 Magento 后台，依次打开：【SYSTEM】> 【Web Setup Wizard】
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-websetupwz-websoft9.png) 
5. 在【System config】设置项中输入你在 Marketplace 上获取的 Access Key
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setmkkey-websoft9.png) 
6. 成功保存，连接成功
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setmkkeyss-websoft9.png) 
7. 连接后，就可以很方便的使用 Marketplace 上的资源


## 常见问题

#### 浏览器打开IP地址，无法访问 Magento（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### 本部署包采用的哪个数据库来存储 Magento 数据？

是MySQL

#### 是否可以采用云厂商提供的 RDS 来存储 Magento 数据？

可以

#### Cron job问题处理（Windows）

Windows下安装 Magento 后，若出现 ”One or more indexers are invalid. Make sure your Magento cron job is running.” 的提示,请执行以下步骤:

1. 双击右下角xampp界面,点击shell按钮打开命令行窗口;
2. 输入“php htdocs\magento\bin\magento indexer:reindex”即可；
3. 回到magento界面，刷新页面，该问题即可解决。