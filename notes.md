Fix directus folder permissions

Add directus storage default files before mount to .data --- no need as .data is now in git

Digital Ocean
1. Use onclick docker app. That gives docker as well as docker-compose
2. First steps after droplet init: https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04
3. Install nginx https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04

Global docker setup
1. `usermod -aG docker $USER`
2. Create dockernet: `docker network create -d bridge --gateway 192.168.0.1 --subnet 192.168.0.0/24 dockernet`

Mysql setup
1. create database: shivani_portfolio
2. create user: shivani_directus

Shivani backend
0. Setup config/api.env
1. docker-compose up
2. Inside container, load db dump to database

Shivani frontend
1. webpack.prod.js -> change api url
2. Install node curl -sL https://deb.nodesource.com/setup_9.x -o nodesource_setup.sh