# WP In A Box

Script/s to install WordPress in a linux box without much effort

## Install procedure

- Rename `.envrc-sample` file as `.envrc` and insert as much information as possible
- Download `bootstrap.sh` and execute it.

```bash
# as root

apt install curl

curl -LO https://github.com/pothi/wp-in-a-box/raw/master/.envrc-sample
cp .envrc-sample .envrc
# nano .envrc

curl -LO https://github.com/pothi/wp-in-a-box/raw/master/bootstrap.sh

# go through the script to understand what it does. you may tweak it as necessary
# nano ~/bootstrap.sh

apt install screen
screen
# execute it and wait for some time (approximately 10 minutes)
bash bootstrap.sh

# (optional) get rid of all the evidences of making the changes
# rm bootstrap.sh

```

## Wiki

For more documentation, supported / tested hosts, todo, etc, please see the [WP-In-A-Box wiki](https://github.com/pothi/wp-in-a-box/wiki).
