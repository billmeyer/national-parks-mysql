#!/bin/bash

docker run -it --rm --link nationalparks-mysql mysql:8 mysql \
    -hnationalparks-mysql \
    -unationalparks_user \
    -pnationalparks_user \
    nationalparks_db \
    $*