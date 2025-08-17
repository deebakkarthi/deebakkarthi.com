---
title: Setup coraclient on a vps
date:  2025-08-17T12:58:51-04:00
tags: project
---
# Clone the repository
- `cd /var/www/`
- `git clone https://github.com/deebakkarthi/coraclient`

# Initial Nginx config
```nginx
server {
	listen 80;
	listen [::]:80;
	server_name cora.deebakkarthi.com;
	index index.html;
	 location / {
	 root /var/www/coraclient;
	 try_files $uri $uri/ $uri.html =404;
	 }
}
```

Use this configuration to first obtain SSL certificates

# SSL certificates
- `sudo certbot certonly -w /var/www/coraclient -d cora.deebakkarthi.com`

# Nginx config

```nginx
 Force https
server {
        listen 80;
        listen [::]:80;
        server_name cora.deebakkarthi.com;
        return 301 https://cora.deebakkarthi.com$request_uri;
}

# Actual server
server {
        listen 443 ssl;
        listen [::]:443 ssl;
        server_name cora.deebakkarthi.com;
		ssl_certificate /etc/letsencrypt/live/cora.deebakkarthi.com/fullchain.pem;
		ssl_certificate_key     /etc/letsencrypt/live/cora.deebakkarthi.com/privkey.pem;
        root /var/www/coraclient;

        index index.html;

        location / {
                try_files $uri $uri/ $uri.html @coraserver;
        }

        location @coraserver {
                proxy_set_header Host $host;
                proxy_set_header X-Real-IP $remote_addr;
                proxy_pass http://localhost:42069;
        }
}
```
