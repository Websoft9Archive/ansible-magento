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

#### 修改了数据库密码 Magento 不能访问？

若已完成 Magento 安装向导，再通过 phpMyAdmin 修改数据库密码，此候 Magento 就会连不上数据库

需要修改配置文件（/data/wwwroot/magento/app/etc/env.php）对应的数据库 password 参数即可。

#### Magento 出现“One or more indexers are invalid....”如何解决？

1.  在管理员页面的左边控制栏点击“SYSTEM”,在弹出的选项中选择Index Management；
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-cron001.png)
2.  点击图中所示的选项框，选择下拉菜单中的Update by Schedule，然后点击序号4所示的选项框选择Select All，最后单击5所示的Submit即可。
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-cron002.png)

#### Apache httpd 服务无法启动？

请通过分析日志文件定位原因： */var/log/httpd*

#### 网站重定向错误？

分析网站根目录下的 `.htaccess` 文件，看看有没有死循环规则


#### 数据库服务无法启动

数据库服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh
```

