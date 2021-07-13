apt update && apt install -y php php-cli php-fpm php-mysql net-tools vim
sed -i 's/www-data/nginx/g' /etc/php/7.3/fpm/pool.d/www.conf
# sed -i 's/;listen.mode/listen.mode/g' /etc/php/7.3/fpm/pool.d/www.conf
service php7.3-fpm start 

