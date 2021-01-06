#!/bin/bash
kubectl apply -f nginxdepl.yml -n=development
kubectl apply -f nginxlb.yml -n=development
	