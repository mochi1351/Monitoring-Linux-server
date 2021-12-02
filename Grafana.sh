
echo "
##################################################
#          Installing Grafana                      #
####################################################
"
sudo apt-get update
# sudo apt-get upgrade
# sudo reboot

sudo apt-get install -y gnupg2 curl
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install grafana

echo "
#####################################################
#        Start grafana service                     #
#####################################################
"
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server
sudo systemctl enable grafana-server.service


echo "
#######################################################
#  Congrats to you for Grafana Monitoring System   #
#######################################################
"
