#!/bin/bash
kubectl delete -f src/main/kubernetes/database.yaml
kubectl delete secret mysqlsecret
kubectl create secret generic mysqlsecret --type=string --from-literal=database.username=testuser --from-literal=database.name=music --from-literal=database.password=testpassword --from-literal=spring.datasource.url=jdbc:mysql://mysql.default.svc.cluster.local/music
kubectl apply -f src/main/kubernetes/database.yaml