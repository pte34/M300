# Update Packages
apt-get update

#User Add
useradd aragondb -p root
useradd heliosdb -p root
useradd alitaweb -p root

#Group Add
groupadd database
groupadd admin
groupadd web

#Adding User to Group
usermod -a -G database aragondb
usermod -a -G database heliosdb
usermod -a -G web alitaweb

#Groupfolder createion
mkdir -p /teams/datenbanken
touch /teams/datenbanken/dbconcept

mkdir -p /teams/web
touch /teams/web/webconcept

#Groupfolder permissions
chmod 770 /teams/datenbanken -R
chown root:database /teams/datenbanken/ -R

chmod 770 /teams/web -R
chown root:web /teams/web/ -R

# Basic Linux Stuff
apt-get install -y git
apt-get install -y net-tools

# Apache Service
apt-get install -y apache2

# Restart Apache
service apache2 restart

# Install Firewall & Proxy
sudo apt-get install -y ufw
     ufw enable
     ufw allow 80/tcp
     ufw allow from any to any port 22
     ufw allow out 22/tcp

     apt-get install libapache2-mod-proxy-html
     apt-get install libxml2-dev

     a2enmod proxy
     a2enmod proxy_html
     a2enmod proxy_http

     sudo service apache2 restart