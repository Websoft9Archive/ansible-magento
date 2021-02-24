# Troubleshooting

If you're having trouble with running Magento, here is a quick guide to solve most common problems.

> Most faults about the Instance is closely related to the Instance provider, Cloud Platform. Provided you're sure the fault is caused by Cloud Platform, refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html).

#### Magento upgrade or install module failed?

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/magento/magento-upgrade-dependency.png)

If the upgrade have errors, the most likely cause is insufficient memory. On the one hand, you need to ensure that the server memory is not lower than 4G. On the other hand, you need to modify the `.htaccess` file in the Magento root directory.

Make sure `php_value memory_limit` not lower than 2048M

```
    php_value memory_limit 2048M
    php_value max_execution_time 18000
```

#### Database service could not be started?

Insufficient disk space, insufficient memory, and configuration file errors can make database service could not be started  

It is recommended to first check through the command.

```shell
# restart mysql service
systemctl restart mysql

# view disk space
df -lh

# view memory rate
free -lh
```

#### phpMyAdmin page access blank?

Please try another browser, such as chrome or firefox. If the phpMyAdmin can be opened normally before, and now appears to be incomplete or blank, it is recommended to clean up the browser cache, cookies and other information

#### PhpMyAdmin Timeout Errors

If you try to import a zipped database, you might see a timeout error because phpMyAdmin takes too long to execute the script.To fix this:

- Set the max_execution_time of `php.ini` to larger value
- Try to import the file again.

Remember to change the ExecTimeLimit setting back to its original value once the import process ends.

#### Website pictures loading very slowly?

Please make sure that your brandwith of Server is more than 5M

#### Apache httpd service restart error
Please make sure the vhost.conf is correct for you, and you can track and analyze log files from */var/log/httpd*

#### Login error,need mail authentication？
Close Magento_TwoFactorAuth，login by password
```shell
# Close Magento_TwoFactorAuth
sudo php /data/wwwroot/magento/bin/magento module:disable Magento_TwoFactorAuth
```

#### Redirects Error
Check your `.htaccess` file in your application root directory, make sure there not any cycle redirects settings