#! /bin/bash
git clone https://github.com/edidada/nacos.git
cd nacos
git checkout 1.4.2
mvn -Prelease-nacos -Dmaven.test.skip=true install -U