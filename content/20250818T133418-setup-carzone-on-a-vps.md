---
title: Setting up Carzone on a VPS
date:  2025-08-18T13:34:18-04:00
tags: project
---

# PHP setup
- First install `php`
- Make sure to install `php-sqlite3`
- Note the php version all the dirs will have the version. If you ever update your php you have to update your config
```nginx
server {
        listen 80 ;
        listen [::]:80 ;

        root /var/www/carzone;

        index index.php;

        server_name carzone.deebakkarthi.com;

        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass unix:/var/run/php/php8.2-fpm.sock;
        }
}
```
- Go to `/etc/php/8.2/fpm/php.ini`
- Uncomment `extention=pdo_sqlite`
- `systemctl start php8.2-fpm.service`