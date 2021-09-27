# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

Magento 域名绑定操作步骤：

1. 使用 SFTP 工具登录云服务器
2. 修改 [虚拟机主机配置文件](/zh/stack-components.html#apache)，将其中的域名相关的值
   ```text
   #### Magento(LAMP) bind domain #### 

     <VirtualHost *:80>
     ServerName  www.mydomain.com # 修改成您的实际域名
     DocumentRoot "/data/wwwroot/magento"
     ...
     
   #### Magento(LNMP) bind domain #### 

     server {
      listen 80;
      server_name magento.example.com; # 修改成您的实际域名
     ...

   ```
3. 保存配置文件，[重启服务](/zh/admin-services.html#apache)
4. 通过SSH连接云服务器，运行下面的CLI命令（同理，在配置完HTTPS后，只要将下面的地址 http 改成 https 即可）
   ```shell
   cd /data/wwwroot/magento
   php bin/magento config:set web/unsecure/base_url http://www.mydomain.com/ # 修改成您的实际域名，必须以 / 结束
   php bin/magento config:set web/secure/base_url http://www.mydomain.com/ # 修改成您的实际域名，必须以 / 结束
   ```



## Magento 安装扩展

建议通过 Magento 后台在线安装扩展：

1. 确保你的 Magento 已经[连接到官方的 Marketplace](/zh/stack-installation.html#连接-magento-marketplace)
3. 在 Marketplace 找到您需要的扩展或主题，购买完成，点击【Install】
4. 登录 Magento 后台，打开：【SYSTEM】>【Web Setup Wizard】>【System Configration】 
5. 在左侧菜单栏选择【EXTENSION MANAGER】，单击【Refresh】 将购买信息同步到网站，然后通过【Review and Install】查看
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-theme-1-websoft9.png)
   > Refresh 可能会出现同步失败，请多次刷新

6. 在列表内选择插件或主题，即可进行安装；
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-theme-2-websoft9.png)
7. 安装时会进行系统环境检查，条件全面满足才可以开始安装
8. 安装过程时间较长且报错，请查看[故障原因](/zh/else-troubleshooting.html#magento-在线升级或在线安装插件报错？)

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

## Magento 安装中文包

中文包 zh_Hans_CN 已经存在 */data/wwwroot/Magento/vendor/magento/language-zh_hans_cn* 目录下  

需要启用中文请完成如下两个步骤：

1.  如果你希望你的前台是中文，进入到Magento管理员界面，后台 Stores > Configuration > General > Local 中设置Local为Chinese(China)
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-setlan-websoft9.png)
2.  如果你希望你的账户后台是中文，那么请在管理员页面右上角点击你的账户 Account Setting > Interface Local 中设置 Interface Local 为Chinese（China）

## Magento Cache

Cache（缓存）是 Magento 的一项重要设置：

1. 登录 Magento 后台，依次打开：【System】>【Tools】> 【Cache Management】
2. 选择需要刷新的缓存
3. 点击【Flush Magento Cache】和【Flush Cache Storage】开始刷新
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-flushcache-websoft9.png)
4. 也可以取消一些页面的缓存设置
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-dscache-websoft9.png)

## Magento API

Support for both REST (Representational State Transfer) and SOAP (Simple Object Access Protocol). In Magento 2, the web API coverage is the same for both REST and SOAP.

参考官方文档：https://devdocs.magento.com/guides/v2.2/get-started/bk-get-started-api.html

