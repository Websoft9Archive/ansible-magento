# Start or Stop the Services

These commands are required when you use the Magento of Websoft9.

### Apache

```shell
sudo systemctl start apache
sudo systemctl stop apache
sudo systemctl restart apache
sudo systemctl status apache
```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

### PHP-FPM
```shell
systemctl start php-fpm
systemctl stop php-fpm
systemctl restart php-fpm
systemctl status php-fpm
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### Redis
```shell
sudo systemctl star redis
sudo systemctl stop redis
sudo systemctl restart redis
sudo systemctl status redis
```

### Varnish

```shell
sudo systemctl start varnish
sudo systemctl stop varnish
sudo systemctl restart varnish
sudo systemctl status varnish
```

### RabbitMQ

```shell
sudo systemctl start rabbitmq-server
sudo systemctl stop rabbitmq-server
sudo systemctl restart rabbitmq-server
sudo systemctl status rabbitmq-server
```