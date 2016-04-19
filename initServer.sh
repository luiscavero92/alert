#!/bin/bash
if [ -f "/var/app/bin/console" ]
then
	sudo -u www-data php /var/app/bin/console doctrine:database:create
	sudo -u www-data php /var/app/bin/console doctrine:migrations:migrate -n
	sudo -u www-data php /var/app/bin/console doctrine:fixtures:load -n
else
echo "no entra"
fi


