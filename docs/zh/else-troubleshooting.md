# 故障处理

此处收集使用 Magento 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### Magento 在线升级或在线安装插件报错？

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-upgrade-dependency.png)

如果升级过程若报错，最可能的原因是内存不足，一方面需要保证服务器内存不低于 4G，另一方面需要修改 Magento 根目录下的 `.htaccess` 文件。

其中的 `php_value memory_limit` 不低于 2048M

```
    php_value memory_limit 2048M
    php_value max_execution_time 18000
```

#### Magento 站点通过IP访问的情况下， 服务器IP发生变更导致无法访问？

通过SSH连接云服务器，运行下面的CLI命令即可恢复
```shell
    /data/wwwroot/magento/bin/magento setup:store-config:set --base-url=http://服务器公网IP # 修改成您的当前服务器IP
```
 > 通过域名访问的情况，请参照[域名绑定](solution-more.md/#域名绑定)

#### 修改了数据库密码 Magento 不能访问？

若已完成 Magento 安装向导，再通过 phpMyAdmin 修改数据库密码，此候 Magento 就会连不上数据库

需要修改配置文件（/data/wwwroot/magento/app/etc/env.php）对应的数据库 password 参数即可。

#### Magento 出现“One or more indexers are invalid....”如何解决？
##### 方法1
1.  在管理员页面的左边控制栏点击“SYSTEM”,在弹出的选项中选择Index Management；
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-cron001.png)
2.  点击图中所示的选项框，选择下拉菜单中的Update by Schedule，然后点击序号4所示的选项框选择Select All，最后单击5所示的Submit即可。
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-cron002.png)

##### 方法2
1. 使用命令行工具 (SSH or Terminal)进入magento安装根目录：cd /data/wwwroot/magento/bin
2. 重新编制索引：php magento indexer:reindex

#### Apache httpd 服务无法启动？

请通过分析日志文件定位原因： */var/log/httpd*

#### 登陆时需要邮件验证，无法收到邮件怎么办？

关闭密码邮件双重认证，通过密码即可登陆
```shell
# Close Magento_TwoFactorAuth
sudo php /data/wwwroot/magento/bin/magento module:disable Magento_TwoFactorAuth
```


#### 网站重定向错误？

分析网站根目录下的 `.htaccess` 文件，看看有没有死循环规则

#### Magento 后台重定向太多，无法访问（ERR_TOO_MANY_REDIRECTS magento admin）

在网站配置域名或做了 https 配置后，网站可能出现后台重定向太多无法访问，在确定不是 '.htaccess' 配置文件的问题下，请检查如下几个 url ，将其改成你的域名，同时修改三个选项为 true。
这些信息保存在 Magento 的配置数据表 core_config_data 中，可以通过修改数据表来修改，也可以通过下列 cli 方式处理。

```shell
cd /data/wwwroot/magento
php bin/magento config:set web/unsecure/base_url ‘http://www.abc.com’ #你的域名 或 https://www.abc.com
php bin/magento config:set web/secure/base_url http://www.abc.com’
php bin/magento config:set web/unsecure/base_link_url http://www.abc.com’
php bin/magento config:set web/secure/base_link_url http://www.abc.com’
php bin/magento config:set web/seo/use_rewrites 1
php bin/magento config:set web/secure/use_in_frontend 1
php bin/magento config:set web/secure/use_in_adminhtml 1
```

#### Magento 无法加载CSS/js资源，页面排版混乱

在网站配置域名或做了 https 配置后，网站可能出现，能访问但页面排版混乱，图片不显示（不能访问请先[配置域名](http://support.websoft9.com/docs/magento/zh/solution-more.html#%E5%9F%9F%E5%90%8D%E7%BB%91%E5%AE%9A)）。

造成这样的原因，在确定不是配置文件的问题下，可以通过【重新发布】来处理。虽然不会删除数据，但请操作前做好数据备份。步骤如下:

1. 开启维护模式
2. 删除静态文件和一系列缓存文件
3. 更新数据库以及代码编译
4. deploy生成静态文件到pub/static里
5. 更新索引，关闭维护模式，以及清空刷新magento缓存


```shell
cd /data/wwwroot/magento
php bin/magento maintenance:enable
php rm -rf var/di/* && rm -rf var/generation/* && rm -rf var/cache/* && rm -rf var/page_cache/* && rm -rf var/view_preprocessed/* && rm -rf pub/static/* && rm -rf generated/* 
php bin/magento setup:upgrade 
php bin/magento setup:di:compile
php bin/magento setup:static-content:deploy -f
php bin/magento indexer:reindex
php bin/magento cache:clean && bin/magento cache:flush
php bin/magento maintenance:disable 
```


#### 数据库服务无法启动

数据库服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh
```

