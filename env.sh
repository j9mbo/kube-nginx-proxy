#!/bin/bash
if [ "$ENV" != "production" ] && [ "$ENV" != "development" ]
then
echo wrong environment
elif [ "$ENV" = "production" ] || [ "$ENV" = "development" ]
then
kubectl apply -f nginxdepl.yml -n=$ENV
kubectl apply -f nginxlb.yml -n=$ENV
fi