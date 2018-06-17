# Automatically instal the latest nginx
wget -O - http://nginx.org/keys/nginx_signing.key | sudo apt-key add -

#Make a backup copy of your current sources.list file
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

#Now copy the following repositories to the end of ` /etc/apt/sources.list`
echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" | tee -a /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/mainline/debian/ jessie nginx" | tee -a /etc/apt/sources.list

#update to get the new repository
sudo apt-get update
sudo apt-get install nginx
