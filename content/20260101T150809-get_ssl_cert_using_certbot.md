---
title: How to get SSL certificate using certbot
date:  2026-01-01T15:08:09-05:00
tags:
mathjax: false
---

# `nginx` config
- Create a dummy `nginx` config that looks like this
```nginx
server {
        listen 80;
        listen [::]:80;
        server_name myriad.deebakkarthi.com;
        location / {
                root /var/www/myriadclient;
                index index.html
                try_files $uri $uri/ =404;
        }
}
```

- Don't put in any `https` stuff here. We want `cerbot` to access this site
- Configure your DNS settings so that the subdomain points correct. I like to divide by projects by subdomains. I am not a fan of  route based deployment. Refer [this](20260101T151132-dns_config.md).

# `certbot`
- Verify that your site is reachable
- Run the following command
```bash
sudo certbot certonly --webroot -d DOMAIN --webroot-path PATH
```
where `DOMAIN` may be something like `app3.example.org` and `PATH` is the `root` you specified in your `nginx` config
- For me I had to run
```bash
 sudo certbot certonly --webroot -d myriad.deebakkarthi.com --webroot-path /var/www/myriadclient
```
- This places a folder called `.well-known` under that `webroot-path` and check if they are accessible
- This method avoids having to pause your `nginx` or `apache` config and works smoothly
- After it run take a note of where the SSL files are stored. You will need this for your `nginx` config
