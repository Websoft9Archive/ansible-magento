# FAQ

#### Magento 支持多语言吗？

支持多语言（包含中文），需要上传语言包才能设置语言

#### Magento 为什么运行这么慢？

Maggento 是一个复杂的企业级电商系统，对计算资源要求较高

#### 为什么要连接 Magento Marketplace？

只有连接Magento Marketplace，才可以使用其资源。连接教程[参考](/zh/stack-installation.html#连接-magento-marketplace)

#### Magento(LAMP)，Magento(LNMP)等商品括号中的 LAMP,LNMP 是什么意思？

LAMP和LNMP代表支持Magento运行所对应的基础环境，具体参考[环境说明](/zh/admin-runtime.html)

#### 是否可以使用云平台的 RDS 作为 Magento 的数据库？

可以，修改 Magento 根目录下的配置文件 `config.php` 即可

#### Magento能在Windows服务器上运行吗？

可以，但是我们推荐在运行 Magento 效率更高的 Linux 服务器上运行

#### Magento数据库连接配置信息在哪里？

数据库配置信息在Magento安装目录下的 *LocalSettings.php* 中，[查阅安装目录路径](/zh/stack-components.md#magento)

#### 如果没有域名是否可以部署 Magento？

可以，访问`http://服务器公网IP` 即可

#### 数据库 root 用户对应的密码是多少？

密码存放在服务器相关文件中：`/credentials/password.txt`

#### 是否有可视化的数据库管理工具？

有，内置phpMyAdmin，访问地址：http://服务器公网IP/phpmyadmin

#### 如何禁止phpMyAdmin访问？

连接服务器，编辑 phpMyAdmin 配置文件，将其中的 Require all granted 更改为 Require ip 192.160.1.0，然后重启 Apache 服务

#### 是否可以修改 Magento 的源码路径？

可以，通过修改 [虚拟主机配置文件](/zh/stack-components.md#magento)中相关参数

#### 如何修改上传的文件权限?

```shell
#Magento(LAMP)
chown -R apache.apache /data/wwwroot

#Magento(LEMP)
chown -R nginx.nginx /data/wwwroot

find /data/wwwroot -type d -exec chmod 750 {} \;
find /data/wwwroot -type f -exec chmod 640 {} \;
```
#### 部署和安装有什么区别？

部署是将一序列软件按照不同顺序，先后安装并配置到服务器的过程，是一个复杂的系统工程。  
安装是将单一的软件拷贝到服务器之后，启动安装向导完成初始化配置的过程。  
安装相对于部署来说更简单一些。 

#### 云平台是什么意思？

云平台指提供云计算服务的平台厂家，例如：Azure,AWS,阿里云,华为云,腾讯云等

#### 实例，云服务器，虚拟机，ECS，EC2，CVM，VM有什么区别？

没有区别，只是不同厂家所采用的专业术语，实际上都是云服务器