#!/bin/bash
apt update -y
apt -y install apache2
systemctl start apache2
chown -R $USER:$USER /var/www
echo "
<!DOCTYPE html>
<html>
<body>
<h1>My Yurii Haidar</h1>
</body>
</html>
" > /var/www/html/index.html
systemctl restart apache2
