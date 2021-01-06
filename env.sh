#!/bin/bash
kubectl apply -f nginxdepl.yml -n=$ENV
kubectl apply -f nginxlb.yml -n=$ENV
	