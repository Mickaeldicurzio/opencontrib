Command for Installation:


Clone the repo Git:

$ git clone https://github.com/John-Loup/opencontrib.git


create database :

$ mysql -u{sql-user} -p "CREATE DATABASE opencontrib;

$ mysql -u{sql-user} -p opencontrib < {path-to-project}/opencontrib.dump.sql


authorize project with acl:

- install acl: https://doc.ubuntu-fr.org/acl

$ sudo su

$ setfacl -dR -m u:www-data:rwX -m u:{user}:rwX app && setfacl -R -m u:www-data:rwX -m u:{user}:rwX app


install et intialize the project:

$ composer install

$ php app/console doctrine:schema:update --force

$ php app/console assets:install --symlink

$ php app/console assetic:dump

$ php app/console ca:c

