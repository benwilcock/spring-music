#!/bin/bash
kubectl delete -f src/main/kubernetes/deployment.yaml
kubectl apply -f src/main/kubernetes/deployment.yaml