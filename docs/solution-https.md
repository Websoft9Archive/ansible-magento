# SSL/HTTPS

Magento deployment package has installed the SSL module of Nginx and open Certificate Authority **[Let's Encrypt](https://letsencrypt.org/)** for you configure the HTTPS quickly and conveniently.

> In addition to the vhost configuration file, HTTPS settings do not need to modify any files in Nginx

## Quick start

### Automatic deployment

If you want to use a free certificate, just run the one command `sudo certbot` on your instance to start the HTTPS deployment.

```
sudo certbot
```

### Manual deployment

If you have applied for a commercial certificate, complete the HTTPS configuration in following steps:
#### For Magento (LAMP)

LAMP means that **Apache** for Web Server

1. Upload your certificate to the directory of your instance: */data/cert* 
2. Edit the vhost configuration file: */etc/httpd/conf.d/vhost.conf* 
3. Insert the **HTTPS template**  segment `<VirtualHost *:443>--</VirtualHost>` into `vhost.conf`
   ``` text
   #-----HTTPS template start------------
   <VirtualHost *:443>
    ServerName  magento.yourdomain.com
    DocumentRoot "/data/wwwroot/magento"
    #ErrorLog "logs/magento.yourdomain.com-error_log"
    #CustomLog "logs/magento.yourdomain.com-access_log" common
    <Directory "/data/wwwroot/magento">
    Options Indexes FollowSymlinks
    AllowOverride All
    Require all granted
    </Directory>
    SSLEngine on
    SSLCertificateFile  /data/cert/magento.yourdomain.com.crt
    SSLCertificateKeyFile  /data/cert/magento.yourdomain.com.key
    SSLCertificateChainFile  /data/cert/magento.yourdomain.com_chain.crt
    </VirtualHost>
   #-----HTTPS template end------------
   ```
4. Modify ServerName, SSLCertificateFile, SSLCertificateKeyFile
5. Save it and [Restart Apache service](/admin-services.md#apache)

#### For Magento (LEMP)

LEMP means that **Nginx** for Web Server

1. Upload your certificate to the directory of your instance: */data/cert* 
2. Edit the vhost configuration file: */etc/nginx/conf.d/default.conf* 
3. Insert the **HTTPS template** into Magento's *server{ }* already existing
   ``` text
   #-----HTTPS template start------------
   listen 443 ssl; 
   ssl_certificate /data/cert/xxx.crt;
   ssl_certificate_key /data/cert/xxx.key;
   ssl_trusted_certificate /data/cert/chain.pem;
   ssl_session_timeout 5m;
   ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
   ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:HIGH:!aNULL:!MD5:!RC4:!DHE;
   ssl_prefer_server_ciphers on;
   #-----HTTPS template end------------
   ```
4. Modify ssl_certificate, ssl_certificate_key
5. Save it and [Restart Nginx service](/admin-services.md#nginx)

## Special Guide

If failed to set HTTPS by taking the above steps, please view the [HTTPS Special Guide](https://support.websoft9.com/docs/faq/tech-https.html#nginx) provided by Websoft9, which includes solutions about configuring HTTPS pre-conditions, HTTPS configuration segment templates, precautions, detailed steps, troubleshooting and more.
