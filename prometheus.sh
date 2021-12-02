#!/bin/bash
echo "
####################################################
#       Installing Prometheus                      #
####################################################
"
cd /opt
wget https://github.com/prometheus/prometheus/releases/download/v2.31.1/prometheus-2.31.1.linux-amd64.tar.gz
tar xvzf prometheus-2.31.1.linux-amd64.tar.gz
cd prometheus-2.31.1.linux-amd64
vim prometheus.yml
./prometheus




echo "
#######################################################
#        Start installing Grafana now               #
#######################################################
"
