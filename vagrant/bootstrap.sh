# Update Packages
apt-get update
echo update done
# Upgrade Packages
apt-get upgrade
echo upgrade done

# Basic Linux Stuff
apt-get install -y git
echo git done

# Apache
apt-get install -y apache2
echo apache2 done

# Enable Apache Mods
a2enmod rewrite
echo a2enmod done 

#Add Onrej PPA Repo
apt-add-repository -y ppa:ondrej/php
apt-get update
echo ppa done 

# Install PHP
apt-get install -y php7.2
echo php done

# PHP Apache Mod
apt-get install -y libapache2-mod-php7.2

# Restart Apache
service apache2 restart

# PHP Mods
apt-get install -y php7.2-common
apt-get install -y php7.2-mcrypt
apt-get install -y php7.2-zip

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

# PHP-MYSQL lib
apt-get install -y php7.2-mysql

# Restart Apache
sudo service apache2 restart
