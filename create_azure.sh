#!/bin/sh

if [ -z "$1" -o -z "$2" ] ; then
    echo "Usage: $0 <azure-subscription-id> <vmname>"
    exit 1
fi

docker-machine create --driver "azure" \
     --azure-availability-set "$2" \
     --azure-location "westeurope" \
     --azure-image "canonical:UbuntuServer:14.04.4-LTS:latest" \
     --azure-open-port 8080 \
     --azure-resource-group "$2" \
     --azure-size "Basic_A3" \
     --azure-subscription-id "$1" \
     --azure-vnet "$2" \
     --azure-subnet "$2" \
     $2