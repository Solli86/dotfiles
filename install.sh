#!/bin/bash
#Update package to current version
apt-get update
#install basic package
apt-get install -y wget git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev terminator byobu
#install node.js
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install nodejs
#install mysql
apt-get install mysql-server mysql-client libmysqlclient-dev
#install PostgreSQL
sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
apt-get update
apt-get install postgresql-common
apt-get install postgresql-9.3 libpq-dev

#install tmux 2
apt-get install -y python-software-properties software-properties-common
add-apt-repository -y ppa:pi-rho/dev
apt-get update
apt-get install -y tmux=2.0-1~ppa1~t

exit 0

