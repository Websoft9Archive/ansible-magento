# SMTP

Sending mail is a common feature for Magento. After a large number of user practice feedback, only one way is recommended, that is, using the **third-party STMP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it is very difficulty in maintenance.

Follow is the sample using **SendGrid's SMTP Service** to configure sending mail for Magento:

1. Log in SendGrid console, prepare your SMTP settings like the follow sample
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smpt
   SMTP password: #fdfwwBJ8f    
   ```
2. Edit your Magento's configuration file `LocalSettings.php` in the root directory
3. Search the variable `$wgSMTP`, set the values
   ```
    $wgSMTP = array(
    'host'     => "smtp.163.com", 
    'IDHost'   => "example.com",      // Email's domain name, optional
    'port'     => 465,                 
    'auth'     => true,               
    'username' => "websoft9@163.com",     
    'password' => "#wwBJ8"       
    );
   ```
4. Search the variable `$wgEnableEmail`, set the value
   ```
   $ wgEnableEmail = true
   ```
5. Search the variablea `$wgEnableEmail`, set it as your email address
   ```
   $wgEmergencyContact = "websoft9@163.com";
   $wgPasswordSender = "websoft9@163.com";
   ```
4. Save it
5. Restart [PHP-FPM Service](/zh/admin-services.html#php-fpm)
6. Test email sending

More SMTP Service(Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*