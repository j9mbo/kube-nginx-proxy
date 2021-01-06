#!/bin/bash
kubectl apply -f nginxdepl.yml -n=production
kubectl apply -f nginxlb.yml -n=production