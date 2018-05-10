#!/bin/bash

mkdir ~/{phpmyadmin,log,scripts}
curl -L https://github.com/pothi/linux-bootstrap-snippets/raw/master/pma-auto-update.sh -o ~/scripts/pma-auto-update.sh
chmod +x ~/scripts/pma-auto-update.sh
~/scripts/pma-auto-update.sh

# setup cron to self-update phpmyadmin
if ! $(crontab -l | grep -qw phpmyadmin) ; then
    ( crontab -l; echo; echo "# auto-update phpmyadmin - nightly" ) | crontab -
    ( crontab -l; echo '5   5   *   *   *  ~/scripts/pma-auto-update.sh &> /dev/null' ) | crontab -
fi

