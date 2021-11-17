echo "Actualizando el sistema"
apt-get update -y
apt-get install unzip -y
echo "Instalando java"
apt-get install openjdk-8-jdk -y
echo "Instalando apache"
apt-get install apache2 -y
systemctl start apache2
systemctl enable apache2
echo "Descargando jmeter"
wget https://downloads.apache.org//jmeter/binaries/apache-jmeter-5.3.zip
unzip apache-jmeter-5.3
cp /vagrant/prueba.jmx /home/vagrant/apache-jmeter-5.2.1/bin
cd apache-jmeter-5.3/bin
sudo sh jmeter -n -t /home/vagrant/apache-jmeter-5.2.1/bin/cualquiernombre.jmx -l /home/vagrant/apache-jmeter-5.2.1/bin/cualquieraf.csv -e -o /var/www/html/Report/