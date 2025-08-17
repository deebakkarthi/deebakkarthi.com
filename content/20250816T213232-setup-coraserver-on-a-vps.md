---
title: Setup coraserver on a VPS
date:  2025-08-16T21:32:32-04:00
tags: 
---

1. Clone cora. `git clone https://github.com/deebakkarthi/coraserver`
2. Install all the dependencies
	1. golang
	2. Mysql (I use mariadb)
3. Setup mariadb
	1. After installing mariadb run the `mysql_secure_installation`
	2. Remove anon users, test db, disable remote root login, allow unix socket login
	3. Login or `sudo su`
	4. Run `mysql`. You'll be logged in without any password
	5. `CREATE USER 'cora'@'localhost' IDENTIFIED BY '';`
	6. `GRANT ALL PRIVILEGES ON cora_db.* TO 'cora'@'localhost';`
	7. Edit `/etc/mysql/mariadb.conf.d/50-client.cnf` for debian and add `auto-rehash` under `client-mariadb`.
4. `cd` in to `coraserver/db/scripts` dir
5. Login to mysql as cora `mysql -u cora -p`
6. `source ./create.sql`
7. `source ./insert.sql`
8. After creating the databases. Compile using `go build`
9. Fill the `config.json` according to [20250817T123235-cora-azure-instructions](20250817T123235-cora-azure-instructions.md)
10. For production use the `make` command. This copies the config and the binary to the destination folder

# Automating using systemd service
```systemd
[Unit]
Description= Coraserver
After=nginx.service

[Service]
User=cora
Group=cora
Type=simple
WorkingDirectory=/opt/coraserver
ExecStart=/opt/coraserver/coraserver


[Install]
WantedBy=multi-user.target
```
- Create a system user named cora
	- `sudo useradd --system -s /bin/false cora`
- Give permission of the dir to cora
- `sudo chown -R cora:cora /opt/coraserver`