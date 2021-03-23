sudo apt-get --purge remove postgresql postgresql-12 postgresql-client-12 postgresql-client-common postgresql-common postgresql-contrib

sudo rm -rf /var/lib/postgresql/
sudo rm -rf /var/log/postgresql/
sudo rm -rf /etc/postgresql/

sudo deluser postgres




user: forward
password: admin