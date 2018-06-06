#!/bin/bash

POD=$(kubectl get pods --namespace=monitoring | grep alertmanager-kube-prometheus-0| cut -d ' ' -f 1)
kubectl port-forward $POD --namespace=monitoring 9093:9093
