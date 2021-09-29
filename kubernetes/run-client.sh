#!/bin/bash

# https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/

kubectl run -it --rm --image=mysql:5.7 --restart=Never mysql-client -- \
    mysql -hmysql mysql -uroot -proot
