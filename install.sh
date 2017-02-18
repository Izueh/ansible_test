#! /bin/bash
apt update
echo installing dependencies
apt install -y {{ dependencies }} 
git clone {{ repo_url }}
cd {{ repo_dir }}
mv {{ nginx_config_dir }}/sites-available/default {{ nginx_config_dir }}/sites-available/default.bak
rm {{ nginx_config_dir }}/sites-enabled/default
cp ./nginx-conf {{ nginx_config_dir }}/sites-available/default
cp -r ./hw0 /var/www
nginx


