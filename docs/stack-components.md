# Parameters

The Magento deployment package contains a sequence software (referred to as "components") required for Magento to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Magento

Magento installation directory: */data/wwwroot/magento*  
Magento configuration file: */data/wwwroot/magento/app/etc/env.php*  

### PHP

PHP configuration file: */etc/php.ini*  
PHP Modules configurations directory: */etc/php.d*

### Apache

Magento on LAMP, the Web Server is Apache  

Apache vhost configuration file: */etc/httpd/conf.d/vhost.conf*    
Apache main configuration file: */etc/httpd/conf/httpd.conf*   
Apache logs file: */var/log/httpd*  
Apache module configuration file: */etc/httpd/conf.modules.d/00-base.conf*    

### Nginx

Magento on LEMP, the Web Server is Nginx    

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite*  
Nginx htpasswd file: */etc/nginx/.htpasswd/htpasswd.conf*  


### MySQL

MySQL installation directory: */usr/local/mysql*  
MySQL data directory: */data/mysql*  
MySQL configuration file: */etc/my.cnf*    

MySQL Web Management refer to [MySQL Management](/admin-mysql.md)

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   
Docker daemon.json: please create it when you need and save to to the directory */etc/docker*   

###  phpMyAdmin

phpMyAdmin is a visual MySQL management tool, is installed based on docker.  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml* 


### Redis

Redis configuration file: */etc/redis.conf*  
Redis data directory: */var/lib/redis*  
Redis logs file: */var/log/redis/redis.log*

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.  

You can run the cmd `netstat -tunlp` to check all related ports.  

The following are the ports you may use:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| MySQL | 3306 | Remote connect MySQL | Optional |
| HTTP | 80 | HTTP requests for Magento | Required |
| HTTPS | 443 | HTTPS requests Magento | Optional |

## Version

You can see the version on product pages at Marketplace. However, after being deployed to your server, the components will be updated automatically, resulting in a certain change in the version number. Therefore, run the command on the server to view the exact version number. 

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# PHP Version
php -v

# List Installed PHP Modules
php -m

# Apache version on Centos
httpd -v

# Apache version on Ubuntu
apache2 -v

# List Installed Apache Modules
apachectl -M

# Nginx version
nginx -v

# List Installed Nginx Modules
nginx -V

# MySQL version:
mysql -V

# Redis version
redis-server -v
```