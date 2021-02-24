# 初始化安装

在云服务器上部署 Magento 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 Magento，请先到 **域名控制台** 完成一个域名解析

## Magento 安装向导

1. 使用浏览器访问网址：http://域名 或 http://服务器公网IP, 进入商店首页  
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-mall-websoft9.png)
2. 使用浏览器访问网址：*http://域名/admin* 或 *http://Internet IP/admin*，进入后台登陆页面  
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-login-websoft9.png)
3. 输入用户名和密码[（不知道密码？）](/zh/stack-accounts.md)，登录到 Magento 后台管理界面  
    ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-backend-websoft9.png)

> 需要了解更多Magento的使用，请参考官方文档：[Magento Docs](https://magento.com/resources/technical)

## 常见问题

#### 浏览器打开IP地址，无法访问 Magento（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### 本部署包采用的哪个数据库来存储 Magento 数据？

是MySQL

#### 是否可以采用云厂商提供的 RDS 来存储 Magento 数据？

可以, 执行下面命令可以更换Magento的数据。

```
magento setup:config:set --db-host=DB-HOST --db-name=DB-NAME --db-user=DB-USER --db-engine=DB-ENGINE --db-password=DB-PASSWORD
```

#### Cron job问题处理（Windows）

Windows下安装 Magento 后，若出现 ”One or more indexers are invalid. Make sure your Magento cron job is running.” 的提示,请执行以下步骤:

1. 双击右下角xampp界面,点击shell按钮打开命令行窗口;
2. 输入“php htdocs\magento\bin\magento indexer:reindex”即可；
3. 回到magento界面，刷新页面，该问题即可解决。