echo "Atualizando o servidor web ..."
sudo su apt-get update -y && apt-get upgrade -y && apt-get install apache2 -y && apt-get install unzip wget -y 


echo "Baixando e copiando os arquivos da aplicação.."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/