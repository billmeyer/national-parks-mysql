#!/bin/bash

docker run -it --rm --link nationalparks-mysql mariadb:latest mysql \
       -hnationalparks-mysql \
       -unationalparks_user \
       -pnationalparks_user \
       nationalparks_db \
       -e "select * from NATIONAL_PARKS;" $*