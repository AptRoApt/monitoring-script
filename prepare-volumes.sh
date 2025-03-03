#!/bin/bash

# Создаём директории под Прометей
sudo mkdir -p ./prometheus/data
sudo touch ./prometheus/prometheus.yml

# Создаём директории под Графану
sudo mkdir -p ./grafana/data
sudo touch ./grafana/grafana.ini

# Настраиваем права под Прометей
sudo chown -R 65534:65534 ./prometheus
sudo chmod -R 777 ./prometheus

# Настраиваем права под графану
sudo chown -R 472:472 ./grafana
sudo chmod -R 777 ./grafana

echo "Директории и права доступа настроены!"